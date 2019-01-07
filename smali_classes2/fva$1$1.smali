.class final Lfva$1$1;
.super Ljava/lang/Object;
.source "SearchProfessionCenterForRegister.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfva$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lfva$1;


# direct methods
.method constructor <init>(Lfva$1;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$1"    # Lfva$1;

    .prologue
    .line 100
    iput-object p1, p0, Lfva$1$1;->b:Lfva$1;

    iput-object p2, p0, Lfva$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 103
    iget-object v0, p0, Lfva$1$1;->b:Lfva$1;

    iget-object v0, v0, Lfva$1;->a:Lfva;

    .line 1024
    iput p2, v0, Lfva;->g:I

    .line 104
    iget-object v0, p0, Lfva$1$1;->b:Lfva$1;

    iget-object v0, v0, Lfva$1;->a:Lfva;

    .line 2024
    iget-object v0, v0, Lfva;->e:Landroid/widget/TextView;

    .line 104
    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lfva$1$1;->b:Lfva$1;

    iget-object v0, v0, Lfva$1;->a:Lfva;

    .line 3024
    iget-object v0, v0, Lfva;->e:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lfva$1$1;->b:Lfva$1;

    iget-object v1, v1, Lfva$1;->a:Lfva;

    .line 4024
    iget-object v1, v1, Lfva;->a:[Ljava/lang/String;

    .line 105
    aget-object v1, v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lfva$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lfva$1$1;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 110
    :cond_1
    return-void
.end method
