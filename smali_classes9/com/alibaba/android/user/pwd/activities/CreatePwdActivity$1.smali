.class final Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;
.super Ljava/lang/Object;
.source "CreatePwdActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 99
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->finish()V

    .line 102
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 91
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 91
    .line 1094
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;->a(Lcom/alibaba/android/user/pwd/activities/CreatePwdActivity;)V

    .line 91
    return-void
.end method
