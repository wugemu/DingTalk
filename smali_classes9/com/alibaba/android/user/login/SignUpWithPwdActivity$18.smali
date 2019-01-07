.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->b(Ljava/lang/String;)V
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

.field final synthetic b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 1233
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1233
    check-cast p1, Ljava/lang/String;

    .line 2236
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    .line 2237
    const-string/jumbo v0, "SignUpWithPwdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendVerifyCode onDataReceived token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2238
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2239
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->a:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->v(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)V

    .line 1251
    const-string/jumbo v0, "SignUpWithPwdActivity"

    const-string/jumbo v1, "sendVerifyCode onException:%s %s:"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lfxo;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1253
    const-string/jumbo v0, "11022"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->x(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->m(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    const-string/jumbo v0, "11011"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1256
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;->b:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_newuser_not_invitation.html"

    new-instance v2, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18$1;-><init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity$18;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1267
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1246
    return-void
.end method
