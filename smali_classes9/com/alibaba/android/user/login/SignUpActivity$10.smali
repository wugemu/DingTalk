.class final Lcom/alibaba/android/user/login/SignUpActivity$10;
.super Ljava/lang/Object;
.source "SignUpActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/user/login/SignUpActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpActivity;

    .prologue
    .line 583
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->c:Ljava/lang/String;

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
    .line 586
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 587
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 588
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    iget-object v0, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/login/SignUpActivity;->h(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 590
    const-string/jumbo v0, "OLDUSER"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpActivity;->h(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    :cond_0
    const-string/jumbo v0, "TARGET"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpActivity;->i(Lcom/alibaba/android/user/login/SignUpActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const-string/jumbo v0, "show_sim_authorization_entry"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpActivity$10;->d:Lcom/alibaba/android/user/login/SignUpActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpActivity;->j(Lcom/alibaba/android/user/login/SignUpActivity;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    return-object p1
.end method
