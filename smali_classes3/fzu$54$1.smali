.class final Lfzu$54$1;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu$54;->a(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzu$54;


# direct methods
.method constructor <init>(Lfzu$54;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$54;

    .prologue
    .line 728
    iput-object p1, p0, Lfzu$54$1;->a:Lfzu$54;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 728
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 741
    const-string/jumbo v0, "CSpace"

    sget-object v1, Lfzu;->c:Ljava/lang/String;

    const-string/jumbo v2, "navForDetail"

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    iget-object v0, p0, Lfzu$54$1;->a:Lfzu$54;

    iget-object v1, v0, Lfzu$54;->d:Landroid/content/Context;

    sget v2, Lfzs$e;->space_revise_not_support_icon:I

    iget-object v0, p0, Lfzu$54$1;->a:Lfzu$54;

    iget-object v0, v0, Lfzu$54;->d:Landroid/content/Context;

    sget v3, Lfzs$h;->dt_space_revise_enter_failed_tips:I

    .line 745
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lfzu$54$1;->a:Lfzu$54;

    iget-object v0, v0, Lfzu$54;->d:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_space_revise_failed_update_msg:I

    .line 746
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lfzu$54$1;->a:Lfzu$54;

    iget-object v0, v0, Lfzu$54;->d:Landroid/content/Context;

    sget v5, Lfzs$h;->dt_space_preview_normal_tip:I

    .line 747
    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lfzu$54$1;->a:Lfzu$54;

    iget-object v0, v0, Lfzu$54;->d:Landroid/content/Context;

    sget v6, Lfzs$h;->guide_text_i_know_that:I

    .line 748
    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lfzu$54$1$1;

    invoke-direct {v7, p0}, Lfzu$54$1$1;-><init>(Lfzu$54$1;)V

    .line 1509
    instance-of v0, v1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 1513
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lgpk;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;-><init>(Landroid/content/Context;)V

    .line 1519
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1520
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1521
    const-string/jumbo v9, "resource"

    invoke-virtual {v8, v9, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1522
    const-string/jumbo v2, "title"

    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1523
    const-string/jumbo v2, "content"

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1525
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a(Ljava/util/List;)V

    .line 2079
    iput-object v5, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->a:Ljava/lang/String;

    .line 2083
    iput-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->b:Ljava/lang/String;

    .line 1530
    new-instance v1, Lgpr$7;

    invoke-direct {v1, v0}, Lgpr$7;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 2091
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->e:Landroid/view/View$OnClickListener;

    .line 1537
    new-instance v1, Lgpr$8;

    invoke-direct {v1, v0}, Lgpr$8;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 2099
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->g:Landroid/view/View$OnClickListener;

    .line 1544
    new-instance v1, Lgpr$9;

    invoke-direct {v1, v7, v0}, Lgpr$9;-><init>(Landroid/view/View$OnClickListener;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;)V

    .line 3095
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->d:Landroid/view/View$OnClickListener;

    .line 1552
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->setCanceledOnTouchOutside(Z)V

    .line 1553
    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDUpgradeDialog;->show()V

    .line 756
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 737
    return-void
.end method
