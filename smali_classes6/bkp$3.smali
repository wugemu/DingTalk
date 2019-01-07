.class final Lbkp$3;
.super Ljava/lang/Object;
.source "TaskTransferHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lbkp;


# direct methods
.method constructor <init>(Lbkp;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lbkp;

    .prologue
    .line 153
    iput-object p1, p0, Lbkp$3;->c:Lbkp;

    iput-object p2, p0, Lbkp$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lbkp$3;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 156
    iget-object v0, p0, Lbkp$3;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 157
    iget-object v0, p0, Lbkp$3;->c:Lbkp;

    iget-object v1, p0, Lbkp$3;->b:Ljava/util/List;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lbkp;->a(Lbkp;Ljava/util/List;Z)V

    .line 158
    return-void
.end method
