.class final Lewf$1;
.super Ljava/lang/Object;
.source "SystemCallManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lewf;->a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:J

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 88
    iput-object p1, p0, Lewf$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p2, p0, Lewf$1;->b:Landroid/app/Activity;

    iput-wide p3, p0, Lewf$1;->c:J

    iput-object p5, p0, Lewf$1;->d:Ljava/lang/String;

    iput-object p6, p0, Lewf$1;->e:Ljava/lang/String;

    iput-object p7, p0, Lewf$1;->f:Ljava/lang/String;

    iput-boolean p8, p0, Lewf$1;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 9
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lewf$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 92
    iget-object v1, p0, Lewf$1;->b:Landroid/app/Activity;

    iget-wide v2, p0, Lewf$1;->c:J

    iget-object v4, p0, Lewf$1;->d:Ljava/lang/String;

    iget-object v5, p0, Lewf$1;->e:Ljava/lang/String;

    iget-object v6, p0, Lewf$1;->f:Ljava/lang/String;

    iget-boolean v7, p0, Lewf$1;->g:Z

    invoke-static/range {v1 .. v7}, Lewf;->b(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 93
    .local v0, "finished":Z
    if-eqz v0, :cond_0

    .line 95
    new-instance v8, Landroid/content/Intent;

    const-string/jumbo v1, "com.alibaba.dingtalk.telebase.action.CREATE_SYSCALL"

    invoke-direct {v8, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    .local v8, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lewf$1;->b:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    invoke-virtual {v1, v8}, Ldq;->a(Landroid/content/Intent;)Z

    .line 98
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
