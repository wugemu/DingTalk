.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 1277
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->e:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->d:Ljava/lang/String;

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
    .line 1280
    const-string/jumbo v0, "tempCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1282
    const-string/jumbo v0, "phone"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1283
    const-string/jumbo v0, "token"

    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$19;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1284
    const-string/jumbo v0, "deviceSecurity"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1285
    return-object p1
.end method
