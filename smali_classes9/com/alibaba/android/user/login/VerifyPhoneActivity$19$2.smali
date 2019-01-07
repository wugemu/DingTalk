.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    .prologue
    .line 415
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 418
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const/16 v2, 0x2d

    iput v2, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    .line 419
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->n:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 421
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;I)V

    .line 424
    const-string/jumbo v1, "notget_verifycode"

    invoke-static {v1}, Lcpv;->a(Ljava/lang/String;)Lcom/alibaba/doraemon/trace/Trace;

    move-result-object v0

    .line 425
    .local v0, "trace":Lcom/alibaba/doraemon/trace/Trace;
    new-array v1, v5, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "notget_verifycode faild"

    aput-object v3, v1, v2

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/trace/Trace;->error([Ljava/lang/String;)V

    .line 426
    invoke-interface {v0}, Lcom/alibaba/doraemon/trace/Trace;->endTrace()V

    .line 428
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const-string/jumbo v2, "bh_register_call_resend"

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v3, v3, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19$2;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;

    iget-object v4, v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity$19;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v4, v4, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    :cond_0
    return-void
.end method
