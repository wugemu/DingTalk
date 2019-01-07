.class final Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;
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
.field final synthetic a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/VerifyPhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    .prologue
    .line 927
    iput-object p1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

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
    .line 927
    .line 1931
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->f(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 1932
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0, v1}, Lchy;->logout(Landroid/app/Activity;)V

    .line 1934
    invoke-static {}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->s()Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;

    move-result-object v0

    .line 1935
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cmailbase/mail/MailInterface;->i()V

    .line 1937
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->finish()V

    .line 927
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
    .line 947
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_logout_is_save_phone_number"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 948
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 960
    :goto_0
    return-void

    .line 951
    :cond_0
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    .line 958
    :goto_1
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->dismissLoadingDialog()V

    .line 959
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v0, v0, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->e:Landroid/widget/EditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 953
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 954
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_1

    .line 956
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/login/VerifyPhoneActivity$8;->a:Lcom/alibaba/android/user/login/VerifyPhoneActivity;

    invoke-static {v0, p2}, Lcom/alibaba/android/user/login/VerifyPhoneActivity;->c(Lcom/alibaba/android/user/login/VerifyPhoneActivity;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 943
    return-void
.end method
