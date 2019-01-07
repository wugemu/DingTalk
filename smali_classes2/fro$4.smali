.class final Lfro$4;
.super Ljava/lang/Object;
.source "VerifyView.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfro;->a(ZLcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

.field final synthetic b:Z

.field final synthetic c:Lfro;


# direct methods
.method constructor <init>(Lfro;Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;Z)V
    .locals 0
    .param p1, "this$0"    # Lfro;

    .prologue
    .line 234
    iput-object p1, p0, Lfro$4;->c:Lfro;

    iput-object p2, p0, Lfro$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iput-boolean p3, p0, Lfro$4;->b:Z

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
    .line 237
    iget-object v0, p0, Lfro$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    if-eqz v0, :cond_0

    .line 238
    const-string/jumbo v0, "setting_change_pwd"

    iget-object v1, p0, Lfro$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v1, v1, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->phone:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 239
    const-string/jumbo v0, "areaCode"

    iget-object v1, p0, Lfro$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v1, v1, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    const-string/jumbo v0, "TARGET"

    iget-object v1, p0, Lfro$4;->a:Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;

    iget-object v1, v1, Lcom/alibaba/android/user/login/verify/VerifyContract$VerifyContext;->target:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    :cond_0
    const-string/jumbo v0, "intent_key_result_to_edit_profile"

    iget-boolean v1, p0, Lfro$4;->b:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 244
    return-object p1
.end method
