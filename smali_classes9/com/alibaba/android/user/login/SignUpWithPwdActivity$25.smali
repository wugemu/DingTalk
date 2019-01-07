.class final Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;
.super Ljava/lang/Object;
.source "SignUpWithPwdActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/login/SignUpWithPwdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:[Ljava/lang/CharSequence;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;[Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->b:[Ljava/lang/CharSequence;

    iput-object p4, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->d:Ljava/lang/String;

    iput-object p6, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->e:Ljava/lang/String;

    iput-object p7, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 1425
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1426
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->b:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1427
    .local v0, "loginWay":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1428
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->p(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;)Lfrg;

    move-result-object v1

    invoke-virtual {v1}, Lfrg;->g()V

    .line 1435
    :cond_0
    :goto_0
    return-void

    .line 1429
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1430
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->d(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)Z

    .line 1431
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    invoke-static {v1, v2}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Z)V

    goto :goto_0

    .line 1432
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1433
    iget-object v1, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->g:Lcom/alibaba/android/user/login/SignUpWithPwdActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/login/SignUpWithPwdActivity$25;->f:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/login/SignUpWithPwdActivity;->a(Lcom/alibaba/android/user/login/SignUpWithPwdActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
