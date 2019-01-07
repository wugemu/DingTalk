.class final Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;
.super Lrq;
.source "CMailTagAddOrEditActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:I

.field e:Ljava/lang/String;

.field private f:Landroid/widget/GridView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/GridView;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "gridView"    # Landroid/widget/GridView;
    .param p3, "layoutRes"    # I

    .prologue
    .line 353
    invoke-direct {p0, p1, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 354
    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->f:Landroid/widget/GridView;

    .line 355
    return-void
.end method

.method static synthetic a(Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;I)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;
    .param p1, "x1"    # I

    .prologue
    .line 336
    .line 3367
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    if-eq p1, v0, :cond_0

    .line 3370
    iput p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    .line 3371
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->notifyDataSetChanged()V

    .line 336
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "selectColor"    # Ljava/lang/String;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->e:Ljava/lang/String;

    .line 359
    invoke-virtual {p0}, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->notifyDataSetChanged()V

    .line 360
    return-void
.end method

.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, -0x2

    .line 336
    check-cast p2, Ljava/lang/String;

    .line 2227
    iget-object v0, p1, Lrr;->b:Landroid/view/View;

    .line 1378
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1379
    if-nez v1, :cond_0

    .line 1380
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1381
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1383
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    if-eq v1, v2, :cond_1

    .line 1384
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1385
    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1386
    iget v2, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1387
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1390
    :cond_1
    iget v0, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->a:I

    if-lez v0, :cond_2

    .line 1394
    sget v0, Laxo$f;->icon:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1394
    check-cast v0, Landroid/widget/TextView;

    .line 1395
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1396
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailTagAddOrEditActivity$a;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1397
    sget v1, Laxo$i;->icon_round_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_2
    :goto_0
    return-void

    .line 1399
    :cond_3
    sget v1, Laxo$i;->icon_tag_color_select:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
