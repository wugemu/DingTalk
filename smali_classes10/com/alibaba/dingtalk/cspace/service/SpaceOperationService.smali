.class public Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;
.super Landroid/app/Service;
.source "SpaceOperationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;
    }
.end annotation


# static fields
.field private static a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 68
    return-void
.end method

.method public static a(Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;)V
    .locals 0
    .param p0, "workInjection"    # Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    .prologue
    .line 65
    sput-object p0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    invoke-interface {v0, p0}, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;->a(Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;)V

    .line 36
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    invoke-interface {v0, p0}, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;->a(Landroid/content/Context;)V

    .line 38
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 59
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    if-eqz v0, :cond_0

    .line 60
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    invoke-interface {v0, p0}, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;->b(Landroid/content/Context;)V

    .line 62
    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 42
    sget-object v0, Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService;->a:Lcom/alibaba/dingtalk/cspace/service/SpaceOperationService$a;

    if-eqz v0, :cond_0

    .line 43
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 46
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
