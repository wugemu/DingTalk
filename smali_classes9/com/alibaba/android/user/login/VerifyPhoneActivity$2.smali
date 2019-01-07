.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;
.super Ljava/lang/Object;
.source "VerifyPhoneActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/VerifyPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 494
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 494
    check-cast p1, Ljava/lang/String;

    .line 1497
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iput-object p1, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->j:Ljava/lang/String;

    .line 1498
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    sget v1, Lezg$l;->send_verify_code_again:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 508
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$l;->server_down:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "reason":Ljava/lang/String;
    :cond_0
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const/4 v1, 0x0

    iput v1, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->b:I

    .line 511
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->c:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const-string/jumbo v1, "bh_register_send_sms_error"

    iget-object v2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->a(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 504
    return-void
.end method
