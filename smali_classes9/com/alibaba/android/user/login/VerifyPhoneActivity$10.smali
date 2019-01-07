.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 1037
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iput-boolean p2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1040
    const-string/jumbo v0, "setting_change_pwd"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, v1, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->g:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1042
    const-string/jumbo v0, "TARGET"

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1043
    const-string/jumbo v0, "intent_key_result_to_edit_profile"

    iget-boolean v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$10;->a:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1044
    return-object p1
.end method
