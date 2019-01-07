.class final Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SpaceMenuBottomDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;Landroid/view/View;)V
    .locals 1
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 357
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 358
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 1363
    sget v0, Lfzs$f;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->b:Landroid/widget/TextView;

    .line 1364
    sget v0, Lfzs$f;->iv_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    .line 1365
    sget v0, Lfzs$f;->iv_red_dot:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->d:Landroid/widget/ImageView;

    .line 1366
    sget v0, Lfzs$f;->divider_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->c:Landroid/view/View;

    .line 360
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;
    .param p1, "x1"    # I

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0x8

    .line 351
    .line 2370
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 2371
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2372
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->b:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2373
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->d:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2374
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->c:Landroid/view/View;

    if-nez p1, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2375
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 351
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;Lgqm;I)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;
    .param p1, "x1"    # Lgqm;
    .param p2, "x2"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 351
    .line 1379
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 1380
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;Lgqm;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1392
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->b:Landroid/widget/TextView;

    iget-object v3, p1, Lgqm;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->d:Landroid/widget/ImageView;

    iget-boolean v0, p1, Lgqm;->e:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1394
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->c:Landroid/view/View;

    if-nez p2, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1396
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->c(Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1397
    iget v0, p1, Lgqm;->b:I

    if-lez v0, :cond_2

    .line 1398
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1399
    new-instance v0, Lcjz;

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 1400
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lgqm;->b:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    .line 1401
    invoke-virtual {v2}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lfzs$c;->ui_common_theme_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcjz;-><init>(Ljava/lang/String;I)V

    .line 1402
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->a:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;

    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    .line 2045
    iput v1, v0, Lcjz;->b:F

    .line 1403
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1408
    :goto_2
    return-void

    :cond_0
    move v0, v2

    .line 1393
    goto :goto_0

    :cond_1
    move v0, v1

    .line 1394
    goto :goto_1

    .line 1404
    :cond_2
    iget v0, p1, Lgqm;->c:I

    if-lez v0, :cond_3

    .line 1405
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1406
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    iget v1, p1, Lgqm;->c:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 1408
    :cond_3
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 1411
    :cond_4
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomDialog$c;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
