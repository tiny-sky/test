<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
var menus = [{"backMenu":[{"child":[{"buttons":["查看","修改","删除"],"menu":"用户","menuJump":"列表","tableName":"yonghu"}],"menu":"用户管理"},{"child":[{"buttons":["新增","查看","修改","删除","查看评论"],"menu":"票务信息","menuJump":"列表","tableName":"piaowuxinxi"}],"menu":"票务信息管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"放映厅","menuJump":"列表","tableName":"fangyingting"}],"menu":"放映厅管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"新片预告","menuJump":"列表","tableName":"xinpianyugao"}],"menu":"新片预告管理"},{"child":[{"buttons":["查看"],"menu":"个人日记","menuJump":"列表","tableName":"gerenriji"}],"menu":"个人日记管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"放映时间","menuJump":"列表","tableName":"fangyingshijian"}],"menu":"放映时间管理"},{"child":[{"buttons":["查看"],"menu":"管理员","tableName":"users"}],"menu":"管理员管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"官方公告","tableName":"forum"}],"menu":"官方公告"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"轮播图管理","tableName":"config"},{"buttons":["新增","查看","修改","删除"],"menu":"影视新闻","tableName":"news"}],"menu":"系统管理"},{"child":[{"buttons":["查看"],"menu":"已支付订单","tableName":"orders/已支付"},{"buttons":["查看"],"menu":"已完成订单","tableName":"orders/已完成"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看","支付"],"menu":"票务信息列表","menuJump":"列表","tableName":"piaowuxinxi"}],"menu":"票务信息模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"新片预告列表","menuJump":"列表","tableName":"xinpianyugao"}],"menu":"新片预告模块"}],"hasBackLogin":"是","hasBackRegister":"否","hasFrontLogin":"否","hasFrontRegister":"否","roleName":"管理员","tableName":"users"},{"backMenu":[{"child":[{"buttons":["查看","查看评论","支付"],"menu":"票务信息","menuJump":"列表","tableName":"piaowuxinxi"}],"menu":"票务信息管理"},{"child":[{"buttons":["查看","查看评论"],"menu":"新片预告","menuJump":"列表","tableName":"xinpianyugao"}],"menu":"新片预告管理"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"个人日记","menuJump":"列表","tableName":"gerenriji"}],"menu":"个人日记管理"},{"child":[{"buttons":["查看"],"menu":"官方公告","tableName":"forum"}],"menu":"官方公告"},{"child":[{"buttons":["新增","查看","修改","删除"],"menu":"我的收藏管理","tableName":"storeup"}],"menu":"我的收藏管理"},{"child":[{"buttons":["查看"],"menu":"影视新闻","tableName":"news"},{"buttons":["新增","查看"],"menu":"在线留言","tableName":"chat"}],"menu":"系统管理"},{"child":[{"buttons":["查看"],"menu":"已支付订单","tableName":"orders/已支付"}],"menu":"订单管理"}],"frontMenu":[{"child":[{"buttons":["查看","支付"],"menu":"票务信息列表","menuJump":"列表","tableName":"piaowuxinxi"}],"menu":"票务信息模块"},{"child":[{"buttons":["查看","查看评论"],"menu":"新片预告列表","menuJump":"列表","tableName":"xinpianyugao"}],"menu":"新片预告模块"}],"hasBackLogin":"是","hasBackRegister":"是","hasFrontLogin":"是","hasFrontRegister":"是","roleName":"用户","tableName":"yonghu"}];

var hasMessage = '';