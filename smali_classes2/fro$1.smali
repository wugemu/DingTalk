.class final Lfro$1;
.super Ljava/lang/Object;
.source "VerifyView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfro;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field final synthetic c:Lfro;


# direct methods
.method constructor <init>(Lfro;Ljava/lang/String;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
    .locals 0
    .param p1, "this$0"    # Lfro;

    .prologue
    .line 97
    iput-object p1, p0, Lfro$1;->c:Lfro;

    iput-object p2, p0, Lfro$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lfro$1;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 100
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v1, p0, Lfro$1;->c:Lfro;

    .line 1052
    iget-object v1, v1, Lfro;->a:Landroid/app/Activity;

    .line 100
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/login_verify_contact.html"

    new-instance v2, Lfro$1$1;

    invoke-direct {v2, p0}, Lfro$1$1;-><init>(Lfro$1;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 112
    const-string/jumbo v0, "login_contact_confirm_ok_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 113
    return-void
.end method
