.class final Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;
.super Ljava/lang/Object;
.source "LockScreenPwdActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;->onClick(Landroid/content/DialogInterface;I)V
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
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field final synthetic b:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->b:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;

    iput-object p2, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 64
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 52
    .line 1055
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->b:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1056
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 1057
    iget-object v0, p0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1$1;->b:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity$1;->a:Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/pwd/activities/LockScreenPwdActivity;->i()V

    .line 52
    :cond_0
    return-void
.end method
