.class final Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;
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
    .line 173
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 176
    const-string/jumbo v0, "bh_register_uplink_sms_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    move-result-object v0

    if-nez v0, :cond_0

    .line 178
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.mSimAuthCell.onClick: verifyContext is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    :goto_0
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 182
    const-string/jumbo v0, "NotReceiveSmsCodeActivity.mSimAuthCell.onClick: upstreamTokenObject is null!"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/register_up_sms.html"

    new-instance v2, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;-><init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
