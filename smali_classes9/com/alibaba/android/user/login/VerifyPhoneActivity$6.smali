.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 876
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 876
    .line 1899
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 1900
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->change_phone_success:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 876
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 880
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 893
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 894
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 895
    return-void

    .line 882
    :cond_0
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 884
    :cond_1
    const-string/jumbo v0, "123002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_error_phone_code:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 886
    :cond_2
    const-string/jumbo v0, "12020"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 888
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->d(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 889
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 891
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$6;->b:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 906
    return-void
.end method
