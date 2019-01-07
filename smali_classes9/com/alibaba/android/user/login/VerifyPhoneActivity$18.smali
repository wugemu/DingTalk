.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;
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
    .line 386
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-direct {p0, p2}, Lcom/alibaba/android/user/widget/NonUnderlinedClickableSpan;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 389
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const/16 v2, 0x2d

    iput v2, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    .line 390
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 392
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 394
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "vcode_apply_again_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const-string/jumbo v2, "contact_verification_code_resend_link_click"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$18;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v4, v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 399
    const-string/jumbo v1, "notget_verifycode"

    invoke-static {v1}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 400
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notget_verifycode faild"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 401
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 402
    return-void
.end method
