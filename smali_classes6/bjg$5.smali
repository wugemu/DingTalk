.class final Lbjg$5;
.super Ljava/lang/Object;
.source "AddReceiverHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lbjg;


# direct methods
.method constructor <init>(Lbjg;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$0"    # Lbjg;

    .prologue
    .line 222
    iput-object p1, p0, Lbjg$5;->d:Lbjg;

    iput-object p2, p0, Lbjg$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-object p3, p0, Lbjg$5;->b:Ljava/util/List;

    iput-boolean p4, p0, Lbjg$5;->c:Z

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
    .line 225
    iget-object v0, p0, Lbjg$5;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 226
    iget-object v0, p0, Lbjg$5;->d:Lbjg;

    iget-object v1, p0, Lbjg$5;->b:Ljava/util/List;

    iget-boolean v2, p0, Lbjg$5;->c:Z

    invoke-static {v0, v1, v2}, Lbjg;->a(Lbjg;Ljava/util/List;Z)V

    .line 227
    return-void
.end method
