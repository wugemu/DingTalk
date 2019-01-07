.class public final Lgwh;
.super Landroid/widget/BaseAdapter;
.source "ShareListviewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgwh$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "pContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p2, "arrayViewItem":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lgwh;->a:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lgwh;->b:Ljava/util/List;

    .line 27
    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lgwh;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lgwh;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 49
    if-nez p2, :cond_0

    .line 50
    new-instance v0, Lgwh$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lgwh$a;-><init>(B)V

    .line 51
    .local v0, "_Holder":Lgwh$a;
    iget-object v2, p0, Lgwh;->a:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 52
    .local v1, "mInflater":Landroid/view/LayoutInflater;
    sget v2, Lgvn$g;->share_list_item_layout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 53
    sget v2, Lgvn$e;->txt_gv_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lgwh$a;->b:Landroid/widget/TextView;

    .line 54
    sget v2, Lgvn$e;->img_gv_item:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lgwh$a;->a:Landroid/widget/ImageView;

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .end local v1    # "mInflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v3, v0, Lgwh$a;->b:Landroid/widget/TextView;

    iget-object v2, p0, Lgwh;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget-object v3, v0, Lgwh$a;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Lgwh;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getIcon()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 63
    return-object p2

    .line 57
    .end local v0    # "_Holder":Lgwh$a;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgwh$a;

    .restart local v0    # "_Holder":Lgwh$a;
    goto :goto_0
.end method
