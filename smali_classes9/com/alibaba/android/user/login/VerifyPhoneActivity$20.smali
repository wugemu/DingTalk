.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;
.super Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;
.source "VerifyPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 445
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "bh_register_uplink_sms_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 470
    :cond_0
    :goto_0
    return-void

    .line 451
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/register_up_sms.html"

    new-instance v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;-><init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0
.end method
