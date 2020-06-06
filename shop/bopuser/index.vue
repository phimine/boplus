<template>
  <div class="app-container">
    <!--工具栏-->
    <div class="head-container">
      <!--如果想在工具栏加入更多按钮，可以使用插槽方式， slot = 'left' or 'right'-->
      <crudOperation :permission="permission" />
      <!--表单组件-->
      <el-dialog :close-on-click-modal="false" :before-close="crud.cancelCU" :visible.sync="crud.status.cu > 0" :title="crud.status.title" width="500px">
        <el-form ref="form" :model="form" :rules="rules" size="small" label-width="80px">
          <el-form-item label="用户id">
            <el-input v-model="form.uid" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户账户" prop="username">
            <el-input v-model="form.username" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户密码" prop="password">
            <el-input v-model="form.password" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="真实姓名">
            <el-input v-model="form.realName" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="生日">
            <el-input v-model="form.birthday" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="身份证号码">
            <el-input v-model="form.cardId" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户备注">
            <el-input v-model="form.mark" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户昵称">
            <el-input v-model="form.nickname" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户头像">
            <el-input v-model="form.avatar" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="手机号码" prop="phone">
            <el-input v-model="form.phone" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="电子邮箱" prop="email">
            <el-input v-model="form.email" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="所在城市">
            <el-input v-model="form.city" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="工作单位" prop="company">
            <el-input v-model="form.company" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="职位" prop="position">
            <el-input v-model="form.position" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="关注领域">
            <el-input v-model="form.concern" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="添加时间" prop="addTime">
            <el-input v-model="form.addTime" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="添加ip">
            <el-input v-model="form.addIp" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="最后一次登录时间" prop="lastTime">
            <el-input v-model="form.lastTime" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="最后一次登录ip">
            <el-input v-model="form.lastIp" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="1为正常，0为禁止" prop="status">
            <el-input v-model="form.status" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="等级: 0为普通会员，1为VIP" prop="level">
            <el-input v-model="form.level" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="vip有效时间">
            <el-input v-model="form.vipValidDate" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="是否永久vip">
            <el-input v-model="form.isForever" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户类型" prop="userType">
            <el-input v-model="form.userType" style="width: 370px;" />
          </el-form-item>
          <el-form-item label="用户登陆类型，h5,wechat,routine" prop="loginType">
            <el-input v-model="form.loginType" style="width: 370px;" />
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
        <el-table-column v-if="columns.visible('uid')" prop="uid" label="用户id" />
        <el-table-column v-if="columns.visible('username')" prop="username" label="用户账户" />
        <el-table-column v-if="columns.visible('password')" prop="password" label="用户密码" />
        <el-table-column v-if="columns.visible('realName')" prop="realName" label="真实姓名" />
        <el-table-column v-if="columns.visible('birthday')" prop="birthday" label="生日" />
        <el-table-column v-if="columns.visible('cardId')" prop="cardId" label="身份证号码" />
        <el-table-column v-if="columns.visible('mark')" prop="mark" label="用户备注" />
        <el-table-column v-if="columns.visible('nickname')" prop="nickname" label="用户昵称" />
        <el-table-column v-if="columns.visible('avatar')" prop="avatar" label="用户头像" />
        <el-table-column v-if="columns.visible('phone')" prop="phone" label="手机号码" />
        <el-table-column v-if="columns.visible('email')" prop="email" label="电子邮箱" />
        <el-table-column v-if="columns.visible('city')" prop="city" label="所在城市" />
        <el-table-column v-if="columns.visible('company')" prop="company" label="工作单位" />
        <el-table-column v-if="columns.visible('position')" prop="position" label="职位" />
        <el-table-column v-if="columns.visible('concern')" prop="concern" label="关注领域" />
        <el-table-column v-if="columns.visible('addTime')" prop="addTime" label="添加时间" />
        <el-table-column v-if="columns.visible('addIp')" prop="addIp" label="添加ip" />
        <el-table-column v-if="columns.visible('lastTime')" prop="lastTime" label="最后一次登录时间" />
        <el-table-column v-if="columns.visible('lastIp')" prop="lastIp" label="最后一次登录ip" />
        <el-table-column v-if="columns.visible('status')" prop="status" label="1为正常，0为禁止" />
        <el-table-column v-if="columns.visible('level')" prop="level" label="等级: 0为普通会员，1为VIP" />
        <el-table-column v-if="columns.visible('vipValidDate')" prop="vipValidDate" label="vip有效时间" />
        <el-table-column v-if="columns.visible('isForever')" prop="isForever" label="是否永久vip" />
        <el-table-column v-if="columns.visible('userType')" prop="userType" label="用户类型" />
        <el-table-column v-if="columns.visible('loginType')" prop="loginType" label="用户登陆类型，h5,wechat,routine" />
        <el-table-column v-permission="['admin','bopUser:edit','bopUser:del']" label="操作" width="150px" align="center">
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
import crudBopUser from '@/api/bopUser'
import CRUD, { presenter, header, form, crud } from '@crud/crud'
import rrOperation from '@crud/RR.operation'
import crudOperation from '@crud/CRUD.operation'
import udOperation from '@crud/UD.operation'
import pagination from '@crud/Pagination'
import MaterialList from "@/components/material";

// crud交由presenter持有
const defaultCrud = CRUD({ title: 'BoplusUserController', url: 'api/bopUser', sort: 'uid,desc', crudMethod: { ...crudBopUser }})
const defaultForm = { uid: null, username: null, password: null, realName: null, birthday: null, cardId: null, mark: null, nickname: null, avatar: null, phone: null, email: null, city: null, company: null, position: null, concern: null, addTime: null, addIp: null, lastTime: null, lastIp: null, status: null, level: null, vipValidDate: null, isForever: null, userType: null, loginType: null }
export default {
  name: 'BopUser',
  components: { pagination, crudOperation, rrOperation, udOperation ,MaterialList},
  mixins: [presenter(defaultCrud), header(), form(defaultForm), crud()],
  data() {
    return {
      
      permission: {
        add: ['admin', 'bopUser:add'],
        edit: ['admin', 'bopUser:edit'],
        del: ['admin', 'bopUser:del']
      },
      rules: {
        username: [
          { required: true, message: '用户账户不能为空', trigger: 'blur' }
        ],
        password: [
          { required: true, message: '用户密码不能为空', trigger: 'blur' }
        ],
        phone: [
          { required: true, message: '手机号码不能为空', trigger: 'blur' }
        ],
        email: [
          { required: true, message: '电子邮箱不能为空', trigger: 'blur' }
        ],
        company: [
          { required: true, message: '工作单位不能为空', trigger: 'blur' }
        ],
        position: [
          { required: true, message: '职位不能为空', trigger: 'blur' }
        ],
        addTime: [
          { required: true, message: '添加时间不能为空', trigger: 'blur' }
        ],
        lastTime: [
          { required: true, message: '最后一次登录时间不能为空', trigger: 'blur' }
        ],
        status: [
          { required: true, message: '1为正常，0为禁止不能为空', trigger: 'blur' }
        ],
        level: [
          { required: true, message: '等级: 0为普通会员，1为VIP不能为空', trigger: 'blur' }
        ],
        userType: [
          { required: true, message: '用户类型不能为空', trigger: 'blur' }
        ],
        loginType: [
          { required: true, message: '用户登陆类型，h5,wechat,routine不能为空', trigger: 'blur' }
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
