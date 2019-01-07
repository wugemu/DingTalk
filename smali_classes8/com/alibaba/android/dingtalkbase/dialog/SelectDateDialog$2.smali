.class final Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;
.super Ljava/lang/Object;
.source "SelectDateDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->c(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;Z)Z

    .line 325
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {}, Lcpu;->e()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->a(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;J)J

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog$2;->b:Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;->d(Lcom/alibaba/android/dingtalkbase/dialog/SelectDateDialog;)V

    .line 328
    return-void
.end method
