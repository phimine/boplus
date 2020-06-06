<template>
  <div class="app-container">
    <!--工具栏-->
    <div class="head-container">
      <!--如果想在工具栏加入更多按钮，可以使用插槽方式， slot = 'left' or 'right'-->
      <crudOperation :permission="permission" />
      <!--表单组件-->
      <el-dialog :close-on-click-modal="false" :before-close="crud.cancelCU" :visible.sync="crud.status.cu > 0" :title="crud.status.title" width="500px">
        <el-form ref="form" :model="form" :rules="rules" size="small" label-width="80px">
          <el-form-item label="PK">
            <el-input v-model="form.id" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="类型1、图片；2、视频" prop="type">
            未设置字典，请手动设置 Select
          </el-form-item>
          <el-form-item label="素材名" prop="name">
            <el-input v-model="form.name" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="素材链接">
            <el-input v-model="form.url" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="逻辑删除标记（0：显示；1：隐藏）" prop="delFlag">
            <el-input v-model="form.delFlag" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="创建时间" prop="createTime">
            <el-input v-model="form.createTime" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="创建者ID">
            <el-input v-model="form.creatorId" style="width: 370px;" />
          </el-form-item>
        </el-form>
        <div slot="footer" class="dialog-footer">
          <el-button type="text" @click="crud.cancelCU">取消</el-button>
          <el-button :loading="crud.cu === 2" type="primary" @click="crud.submitCU">确认</el-button>
        </div>
      </el-dialog>
      <!--表格渲染-->
      <el-table ref="table" v-loading="crud.loading" :data="crud.data" size="small" style="width: 100%;" @selection-change="crud.selectionChangeHandler">
        <el-table-column type="selection" width="55" />
        <el-table-column v-if="columns.visible('id')" prop="id" label="PK" />
        <el-table-column v-if="columns.visible('type')" prop="type" label="类型1、图片；2、视频" />
        <el-table-column v-if="columns.visible('name')" prop="name" label="素材名" />
        <el-table-column v-if="columns.visible('url')" prop="url" label="素材链接" />
        <el-table-column v-if="columns.visible('delFlag')" prop="delFlag" label="逻辑删除标记（0：显示；1：隐藏）" />
        <el-table-column v-if="columns.visible('createTime')" prop="createTime" label="创建时间">
          <template slot-scope="scope">
            <span>{{ parseTime(scope.row.createTime) }}</span>
          </template>
        </el-table-column>
        <el-table-column v-if="columns.visible('creatorId')" prop="creatorId" label="创建者ID" />
        <el-table-column v-permission="['admin','bopMaterial:edit','bopMaterial:del']" label="操作" width="150px" align="center">
          <template slot-scope="scope">
            <udOperation
              :data="scope.row"
              :permission="permission"
            />
          </template>
        </el-table-column>
      </el-table>
      <!--分页组件-->
      <pagination />
    </div>
  </div>
</template>

<script>
import crudBopMaterial from '@/api/bopMaterial'
import CRUD, { presenter, header, form, crud } from '@crud/crud'
import rrOperation from '@crud/RR.operation'
import crudOperation from '@crud/CRUD.operation'
import udOperation from '@crud/UD.operation'
import pagination from '@crud/Pagination'
import MaterialList from "@/components/material";

// crud交由presenter持有
const defaultCrud = CRUD({ title: 'BopMaterial', url: 'api/bopMaterial', sort: 'id,desc', crudMethod: { ...crudBopMaterial }})
const defaultForm = { id: null, type: null, name: null, url: null, delFlag: null, createTime: null, creatorId: null }
export default {
  name: 'BopMaterial',
  components: { pagination, crudOperation, rrOperation, udOperation ,MaterialList},
  mixins: [presenter(defaultCrud), header(), form(defaultForm), crud()],
  data() {
    return {
      
      permission: {
        add: ['admin', 'bopMaterial:add'],
        edit: ['admin', 'bopMaterial:edit'],
        del: ['admin', 'bopMaterial:del']
      },
      rules: {
        type: [
          { required: true, message: '类型1、图片；2、视频不能为空', trigger: 'blur' }
        ],
        name: [
          { required: true, message: '素材名不能为空', trigger: 'blur' }
        ],
        delFlag: [
          { required: true, message: '逻辑删除标记（0：显示；1：隐藏）不能为空', trigger: 'blur' }
        ],
        createTime: [
          { required: true, message: '创建时间不能为空', trigger: 'blur' }
        ]
      }    }
  },
  watch: {
  },
  methods: {
    // 获取数据前设置好接口地址
    [CRUD.HOOK.beforeRefresh]() {
      return true
    }, // 新增与编辑前做的操作
    [CRUD.HOOK.afterToCU](crud, form) {
    },
  }
}



</script>

<style scoped>
  .table-img {
    display: inline-block;
    text-align: center;
    background: #ccc;
    color: #fff;
    white-space: nowrap;
    position: relative;
    overflow: hidden;
    vertical-align: middle;
    width: 32px;
    height: 32px;
    line-height: 32px;
  }
</style>
