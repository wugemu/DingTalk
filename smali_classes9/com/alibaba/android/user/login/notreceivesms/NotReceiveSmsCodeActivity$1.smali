.class final Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Lfro$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 101
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    sget v1, Lezg$l;->dt_register_sim_authorize_success:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .param p1, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->a(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 113
    :cond_0
    return-void
.end method
