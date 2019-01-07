.class final Lbkh$1;
.super Ljava/lang/Object;
.source "DingUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkh;->a(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/CharSequence;

.field final synthetic c:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 660
    iput-object p1, p0, Lbkh$1;->a:Landroid/app/Activity;

    iput-object p2, p0, Lbkh$1;->b:Ljava/lang/CharSequence;

    iput-object p3, p0, Lbkh$1;->c:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 663
    iget-object v6, p0, Lbkh$1;->a:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    .line 664
    .local v4, "inflater":Landroid/view/LayoutInflater;
    sget v6, Laxp$g;->ding_common_i_know_alert:I

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 665
    .local v0, "alertView":Landroid/view/View;
    sget v6, Laxp$f;->ding_alert_e_reason:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 666
    .local v5, "tv":Landroid/widget/TextView;
    iget-object v6, p0, Lbkh$1;->b:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 667
    iget-object v6, p0, Lbkh$1;->b:Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 669
    :cond_0
    sget v6, Laxp$f;->ding_alert_i_known:I

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 670
    .local v1, "btn":Landroid/widget/Button;
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v6, p0, Lbkh$1;->a:Landroid/app/Activity;

    invoke-direct {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 671
    .local v2, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v3

    .line 672
    .local v3, "dialog":Landroid/support/v7/app/AlertDialog;
    new-instance v6, Lbkh$1$1;

    invoke-direct {v6, p0, v3}, Lbkh$1$1;-><init>(Lbkh$1;Landroid/support/v7/app/AlertDialog;)V

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    return-void
.end method
