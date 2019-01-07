.class public interface abstract Lcom/alipay/mobile/nebula/permission/H5PermissionManager;
.super Ljava/lang/Object;
.source "H5PermissionManager.java"


# static fields
.field public static final h5_jsapiPermission:Ljava/lang/String; = "h5_jsapiPermission"

.field public static final level:Ljava/lang/String; = "level"

.field public static final whitelist:Ljava/lang/String; = "whitelist"


# virtual methods
.method public abstract getAliLevel(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract putOffLineConfig(Ljava/lang/String;)V
.end method

.method public abstract putOnLineConfig(Ljava/lang/String;)V
.end method

.method public abstract setDefaultPermissionConfig()V
.end method

.method public abstract urlInWhiteList(Ljava/lang/String;Ljava/lang/String;)Z
.end method
