.class final Lbab$2$1;
.super Ljava/lang/Object;
.source "BaseCreateEventActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbab$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lchh;

.field final synthetic b:Lbab$2;


# direct methods
.method constructor <init>(Lbab$2;Lchh;)V
    .locals 0
    .param p1, "this$1"    # Lbab$2;

    .prologue
    .line 308
    iput-object p1, p0, Lbab$2$1;->b:Lbab$2;

    iput-object p2, p0, Lbab$2$1;->a:Lchh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 311
    iget-object v0, p0, Lbab$2$1;->b:Lbab$2;

    iget-object v0, v0, Lbab$2;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 312
    iget-object v0, p0, Lbab$2$1;->a:Lchh;

    iget-boolean v0, v0, Lchh;->c:Z

    if-nez v0, :cond_2

    .line 313
    iget-object v0, p0, Lbab$2$1;->b:Lbab$2;

    iget-object v2, v0, Lbab$2;->a:Lbab;

    iget-object v0, p0, Lbab$2$1;->a:Lchh;

    iget-object v3, v0, Lchh;->d:Ljava/lang/String;

    .line 1356
    iget-object v0, v2, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1357
    sget v4, Laxp$g;->ding_create_quota_alert:I

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1358
    sget v0, Laxp$f;->ding_alert_e_reason:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1359
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1360
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1362
    :cond_0
    sget v0, Laxp$f;->ding_alert_i_known:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 1363
    new-instance v3, Lbab$3;

    invoke-direct {v3, v2}, Lbab$3;-><init>(Lbab;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1372
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iget-object v2, v2, Lbab;->a:Lbac$b;

    invoke-interface {v2}, Lbac$b;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1373
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 318
    :cond_1
    :goto_0
    return-void

    .line 315
    :cond_2
    iget-object v0, p0, Lbab$2$1;->b:Lbab$2;

    iget-object v0, v0, Lbab$2;->a:Lbab;

    iget-object v2, v0, Lbab;->a:Lbac$b;

    iget-object v0, p0, Lbab$2$1;->b:Lbab$2;

    iget-object v0, v0, Lbab$2;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lbab$2$1;->b:Lbab$2;

    iget-object v0, v0, Lbab$2;->a:Lbab;

    iget-object v0, v0, Lbab;->a:Lbac$b;

    invoke-interface {v0}, Lbac$b;->h()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    invoke-interface {v2, v1, v0}, Lbac$b;->a(ZI)V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1
.end method
