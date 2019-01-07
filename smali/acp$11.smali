.class public final Lacp$11;
.super Ljava/lang/Object;
.source "MailDialogManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lacp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lacp$a;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lacp;


# direct methods
.method public constructor <init>(Lacp;Lacp$a;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lacp;

    .prologue
    .line 751
    iput-object p1, p0, Lacp$11;->c:Lacp;

    iput-object p2, p0, Lacp$11;->a:Lacp$a;

    iput-object p3, p0, Lacp$11;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 754
    iget-object v0, p0, Lacp$11;->a:Lacp$a;

    if-eqz v0, :cond_0

    .line 755
    iget-object v0, p0, Lacp$11;->a:Lacp$a;

    invoke-interface {v0}, Lacp$a;->a()V

    .line 758
    :cond_0
    iget-object v0, p0, Lacp$11;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 760
    return-void
.end method
