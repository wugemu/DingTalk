.class final Lgfo$4;
.super Ljava/lang/Object;
.source "PermissionSettingListViewHolder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgnu;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lgfo;


# direct methods
.method constructor <init>(Lgfo;Lgnu;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lgfo;

    .prologue
    .line 360
    iput-object p1, p0, Lgfo$4;->c:Lgfo;

    iput-object p2, p0, Lgfo$4;->a:Lgnu;

    iput-object p3, p0, Lgfo$4;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 363
    iget-object v0, p0, Lgfo$4;->c:Lgfo;

    .line 1070
    iget-object v0, v0, Lgfo;->k:Lgfn$a;

    .line 363
    iget-object v1, p0, Lgfo$4;->a:Lgnu;

    invoke-interface {v0, v1}, Lgfn$a;->a(Lgnu;)V

    .line 364
    iget-object v0, p0, Lgfo$4;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 365
    return-void
.end method
