.class final Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpaceMenuBottomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "InnerMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lun;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 683
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 684
    iput-object p1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->b:Landroid/content/Context;

    .line 685
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lun;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 687
    .local p1, "menuList":Ljava/util/List;, "Ljava/util/List<Lun;>;"
    if-nez p1, :cond_0

    .line 688
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    .line 694
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->notifyDataSetChanged()V

    .line 695
    return-void

    .line 690
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 691
    .local v0, "tempMenuList":Ljava/util/List;, "Ljava/util/List<Lun;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 692
    iput-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 698
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 702
    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lun;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 706
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 711
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lun;

    .line 713
    .local v1, "object":Lun;
    if-nez p2, :cond_0

    .line 714
    iget-object v2, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->b:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxo$g;->cmail_view_item_menu_view:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 715
    new-instance v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;

    invoke-direct {v0}, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;-><init>()V

    .line 716
    .local v0, "holder":Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;
    sget v2, Laxo$f;->text1:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;->a:Landroid/widget/TextView;

    .line 717
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 722
    :goto_0
    if-nez v1, :cond_1

    .line 723
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter;->b:Landroid/content/Context;

    sget v4, Laxo$i;->unknown_error:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 728
    :goto_1
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;->a:Landroid/widget/TextView;

    return-object v2

    .line 719
    .end local v0    # "holder":Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;

    .restart local v0    # "holder":Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;
    goto :goto_0

    .line 725
    :cond_1
    iget-object v2, v0, Lcom/alibaba/alimei/cspace/widget/SpaceMenuBottomView$InnerMenuAdapter$a;->a:Landroid/widget/TextView;

    iget-object v3, v1, Lun;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
