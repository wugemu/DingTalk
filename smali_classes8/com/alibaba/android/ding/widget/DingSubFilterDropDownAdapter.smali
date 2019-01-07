.class public Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;
.super Landroid/widget/BaseAdapter;
.source "DingSubFilterDropDownAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;
    }
.end annotation


# instance fields
.field public a:Lbkw;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->b:Landroid/content/Context;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;)Lbkw;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a:Lbkw;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p1, "datas":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;>;"
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 42
    if-eqz p1, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->notifyDataSetChanged()V

    .line 47
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 61
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 75
    if-nez p2, :cond_1

    new-instance v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;

    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;-><init>(Landroid/content/Context;)V

    .line 79
    .end local p2    # "convertView":Landroid/view/View;
    .local v1, "itemView":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;

    .line 80
    .local v0, "item":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;
    iget-object v2, p0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_2

    const/4 v2, 0x1

    move v5, v2

    .line 1040
    :goto_1
    if-eqz v0, :cond_0

    .line 1044
    iget-object v2, v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->a:Landroid/widget/TextView;

    .line 2024
    iget-object v6, v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;->a:Ljava/lang/String;

    .line 1044
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2028
    iget-boolean v2, v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;->b:Z

    .line 1045
    if-eqz v2, :cond_3

    .line 1046
    iget-object v2, v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_level1_button_bg_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1050
    :goto_2
    iget-object v6, v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->b:Landroid/view/View;

    .line 3028
    iget-boolean v2, v0, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;->b:Z

    .line 1050
    if-eqz v2, :cond_4

    move v2, v3

    :goto_3
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1051
    iget-object v2, v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->c:Landroid/view/View;

    if-eqz v5, :cond_5

    :goto_4
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 81
    :cond_0
    new-instance v2, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$1;-><init>(Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object v1

    .line 75
    .end local v0    # "item":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;
    .end local v1    # "itemView":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_1
    check-cast p2, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;

    move-object v1, p2

    goto :goto_0

    .end local p2    # "convertView":Landroid/view/View;
    .restart local v0    # "item":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;
    .restart local v1    # "itemView":Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;
    :cond_2
    move v5, v3

    .line 80
    goto :goto_1

    .line 1048
    :cond_3
    iget-object v2, v1, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->a:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Laxp$c;->ui_common_level1_text_color:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_4
    move v2, v4

    .line 1050
    goto :goto_3

    :cond_5
    move v4, v3

    .line 1051
    goto :goto_4
.end method
