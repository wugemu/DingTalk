.class final Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;
.super Ljava/lang/Object;
.source "NotReceiveSmsCodeActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;

    .prologue
    .line 185
    iput-object p1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;

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
    .line 188
    const-string/jumbo v0, "intent_key_verify_context"

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->b(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 189
    const-string/jumbo v0, "intent_key_up_sms_info"

    iget-object v1, p0, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2$1;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;

    iget-object v1, v1, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity$2;->a:Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;->c(Lcom/alibaba/android/user/login/notreceivesms/NotReceiveSmsCodeActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UpstreamTokenObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 190
    return-object p1
.end method
