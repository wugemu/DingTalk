.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->run()V
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
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

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
    .line 195
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->h(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    .line 1199
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v1, "login_temp_token_success"

    invoke-static {v0, v1}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;)V

    .line 195
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 210
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    const-string/jumbo v1, "login_temp_token_fail"

    const-string/jumbo v2, "errorCode=%s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lfxo;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->c(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->h(Lcom/alibaba/android/user/login/NoPwdLoginActivity;)V

    .line 215
    const-string/jumbo v0, "12304"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->network_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local p2    # "reason":Ljava/lang/String;
    :goto_0
    return-void

    .line 217
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "12303"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->server_down:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_2
    const-string/jumbo v0, "123002"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_error_wrong_phoneorpwd:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 221
    :cond_3
    const-string/jumbo v0, "12305"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 222
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_error_try_again:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 223
    :cond_4
    const-string/jumbo v0, "12306"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->failed_ssl_error:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_5
    const-string/jumbo v0, "14001"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 226
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_device_security_tip:I

    .line 227
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 226
    .end local p2    # "reason":Ljava/lang/String;
    :cond_6
    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    .restart local p2    # "reason":Ljava/lang/String;
    :cond_7
    const-string/jumbo v0, "11044"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->login_verify_contact_need_verify:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_8
    const-string/jumbo v0, "11066"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$l;->dt_login_verify_faceid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 233
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4$1;->a:Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$4;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 206
    return-void
.end method
