.class final Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;
.super Ljava/lang/Object;
.source "NoPwdLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/login/NoPwdLoginActivity;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/NoPwdLoginActivity;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 400
    const-string/jumbo v0, "408"

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "404"

    iget-object v1, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 404
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->clearTempToken()V

    .line 405
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->c:Lcom/alibaba/android/user/login/NoPwdLoginActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/login/NoPwdLoginActivity;->finish()V

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/login/NoPwdLoginActivity$9;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 408
    return-void
.end method
