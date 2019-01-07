.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 454
    new-instance v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-direct {v0}, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;-><init>()V

    .line 455
    .local v0, "verifyContext":Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    .line 456
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    .line 457
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->isDeviceSecurity:Z

    .line 458
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->oldUserFlag:Ljava/lang/String;

    .line 459
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->k:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->thirdPartyUserId:Ljava/lang/String;

    .line 461
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->j:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->token:Ljava/lang/String;

    .line 462
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)I

    move-result v1

    iput v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->viaType:I

    .line 463
    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->l:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->tempCode:Ljava/lang/String;

    .line 465
    const-string/jumbo v1, "intent_key_verify_context"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 466
    const-string/jumbo v1, "intent_key_up_sms_info"

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20$1;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;

    iget-object v2, v2, Lcom/alibaba/android/user/login/VerifyPhoneActivity$20;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 467
    return-object p1
.end method
