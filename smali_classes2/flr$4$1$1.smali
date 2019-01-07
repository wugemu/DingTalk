.class final Lflr$4$1$1;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflr$4$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

.field final synthetic b:Lflr$4$1;


# direct methods
.method constructor <init>(Lflr$4$1;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V
    .locals 0
    .param p1, "this$1"    # Lflr$4$1;

    .prologue
    .line 365
    iput-object p1, p0, Lflr$4$1$1;->b:Lflr$4$1;

    iput-object p2, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 368
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;-><init>()V

    .line 369
    .local v0, "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    if-eqz v1, :cond_0

    .line 370
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->isActive:Ljava/lang/Boolean;

    .line 1022
    invoke-static {v1, v2}, Lcoc;->a(Ljava/lang/Boolean;Z)Z

    move-result v1

    .line 370
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->isActive:Z

    .line 371
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgTitle:Ljava/lang/String;

    .line 373
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgEmail:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgEmail:Ljava/lang/String;

    .line 380
    :cond_0
    :goto_0
    iget-object v1, p0, Lflr$4$1$1;->b:Lflr$4$1;

    iget-object v1, v1, Lflr$4$1;->a:Lflr$4;

    iget-object v1, v1, Lflr$4;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    .line 381
    iget-object v1, p0, Lflr$4$1$1;->b:Lflr$4$1;

    iget-object v1, v1, Lflr$4$1;->a:Lflr$4;

    iget-wide v2, v1, Lflr$4;->c:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->modifyTime:J

    .line 382
    iget-object v1, p0, Lflr$4$1$1;->b:Lflr$4$1;

    iget-object v1, v1, Lflr$4$1;->a:Lflr$4;

    iget-wide v2, v1, Lflr$4;->a:J

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    .line 383
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->refreshTime:J

    .line 385
    const-class v1, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 386
    const-class v1, Lcom/alibaba/wukong/im/UserService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/UserService;

    new-instance v2, Lflr$4$1$1$1;

    invoke-direct {v2, p0}, Lflr$4$1$1$1;-><init>(Lflr$4$1$1;)V

    iget-object v3, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    .line 416
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 386
    invoke-interface {v1, v2, v3}, Lcom/alibaba/wukong/im/UserService;->getUser(Lcom/alibaba/wukong/Callback;Ljava/lang/Long;)V

    .line 418
    :cond_1
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v1

    invoke-virtual {v1}, Lfmz;->d()Lfmo;

    move-result-object v1

    invoke-interface {v1, v0}, Lfmo;->a(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)I

    .line 419
    iget-object v1, p0, Lflr$4$1$1;->b:Lflr$4$1;

    iget-object v1, v1, Lflr$4$1;->a:Lflr$4;

    iget-object v1, v1, Lflr$4;->d:Landroid/content/Context;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.common_contact_change"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 421
    return-void

    .line 375
    :cond_2
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->labels:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->labels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 376
    iget-object v1, p0, Lflr$4$1$1;->a:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->labels:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->orgName:Ljava/lang/String;

    goto :goto_0
.end method
