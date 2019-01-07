.class final Lfro$1$1;
.super Ljava/lang/Object;
.source "VerifyView.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfro$1;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfro$1;


# direct methods
.method constructor <init>(Lfro$1;)V
    .locals 0
    .param p1, "this$1"    # Lfro$1;

    .prologue
    .line 101
    iput-object p1, p0, Lfro$1$1;->a:Lfro$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 104
    const-string/jumbo v0, "tempCode"

    iget-object v1, p0, Lfro$1$1;->a:Lfro$1;

    iget-object v1, v1, Lfro$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lfro$1$1;->a:Lfro$1;

    iget-object v1, v1, Lfro$1;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v1, v1, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string/jumbo v0, "phone_number"

    iget-object v1, p0, Lfro$1$1;->a:Lfro$1;

    iget-object v1, v1, Lfro$1;->b:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v1, v1, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string/jumbo v0, "needChangePassword"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 108
    return-object p1
.end method
