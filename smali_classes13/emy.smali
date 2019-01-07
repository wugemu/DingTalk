.class public final Lemy;
.super Lemv;
.source "GlobalSearchTabAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lemy$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemv",
        "<",
        "Leob;",
        ">;"
    }
.end annotation


# instance fields
.field public c:Lcom/alibaba/android/search/SearchGroupType;

.field public d:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:I

.field private f:I

.field private g:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lemv;-><init>(Landroid/app/Activity;)V

    .line 42
    sget-object v0, Lcom/alibaba/android/search/SearchGroupType;->ALL:Lcom/alibaba/android/search/SearchGroupType;

    iput-object v0, p0, Lemy;->c:Lcom/alibaba/android/search/SearchGroupType;

    .line 56
    iput-object p1, p0, Lemy;->g:Landroid/content/Context;

    .line 57
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p0, Lemy;->e:I

    .line 58
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lemy;->a(I)V

    .line 59
    return-void
.end method

.method static synthetic a(Lemy;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lemy;

    .prologue
    .line 40
    iget-object v0, p0, Lemy;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method private a(I)V
    .locals 3
    .param p1, "items"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    if-lez p1, :cond_0

    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    iget-object v1, p0, Lemy;->g:Landroid/content/Context;

    invoke-static {v1}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    .line 66
    .local v0, "screenWidth":I
    iget-object v1, p0, Lemy;->g:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lemt$c;->search_tab_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lemy;->f:I

    .line 67
    iget v1, p0, Lemy;->f:I

    mul-int/2addr v1, p1

    if-ge v1, v0, :cond_0

    .line 68
    div-int v1, v0, p1

    iput v1, p0, Lemy;->f:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/search/SearchGroupType;)I
    .locals 4
    .param p1, "type"    # Lcom/alibaba/android/search/SearchGroupType;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 170
    if-eqz p1, :cond_1

    iget-object v2, p0, Lemy;->a:Ljava/util/List;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lemy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lemy;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 172
    iget-object v2, p0, Lemy;->a:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Leob;

    .line 173
    .local v0, "globalSearchTabModel":Leob;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v2

    .line 5029
    iget v3, v0, Leob;->a:I

    .line 173
    if-ne v2, v3, :cond_0

    .line 179
    .end local v0    # "globalSearchTabModel":Leob;
    .end local v1    # "i":I
    :goto_1
    return v1

    .line 171
    .restart local v0    # "globalSearchTabModel":Leob;
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "globalSearchTabModel":Leob;
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Leob;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Leob;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lemy;->a(I)V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lemv;->a(Ljava/util/List;)V

    .line 188
    return-void
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x4

    const/high16 v11, 0x42300000    # 44.0f

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 75
    if-nez p2, :cond_1

    .line 76
    new-instance v2, Lemy$a;

    invoke-direct {v2, p0}, Lemy$a;-><init>(Lemy;)V

    .line 77
    .local v2, "holder":Lemy$a;
    iget-object v4, p0, Lemy;->g:Landroid/content/Context;

    if-nez v4, :cond_0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    :goto_0
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lemt$f;->item_global_search_tab:I

    const/4 v6, 0x0

    .line 78
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 79
    sget v4, Lemt$e;->tv_name:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    .line 80
    sget v4, Lemt$e;->tv_count:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v2, Lemy$a;->b:Landroid/widget/TextView;

    .line 81
    sget v4, Lemt$e;->selected_line:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lemy$a;->c:Landroid/view/View;

    .line 82
    sget v4, Lemt$e;->unselected_line:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v2, Lemy$a;->d:Landroid/view/View;

    .line 83
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 88
    :goto_1
    new-instance v4, Lemy$1;

    invoke-direct {v4, p0, p1}, Lemy$1;-><init>(Lemy;I)V

    invoke-virtual {p2, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v4, p0, Lemy;->a:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Leob;

    .line 98
    .local v1, "data":Leob;
    if-nez v1, :cond_2

    .line 135
    :goto_2
    return-object p2

    .line 77
    .end local v1    # "data":Leob;
    :cond_0
    iget-object v4, p0, Lemy;->g:Landroid/content/Context;

    goto :goto_0

    .line 85
    .end local v2    # "holder":Lemy$a;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lemy$a;

    .restart local v2    # "holder":Lemy$a;
    goto :goto_1

    .line 102
    .restart local v1    # "data":Leob;
    :cond_2
    iget-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    .line 1037
    iget-object v5, v1, Leob;->b:Ljava/lang/String;

    .line 102
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2029
    iget v4, v1, Leob;->a:I

    .line 103
    iget-object v5, p0, Lemy;->c:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v5}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_4

    .line 104
    iget-object v4, v2, Lemy$a;->c:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v4, v2, Lemy$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lemy;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lemt$b;->ui_common_tab_bar_active_fg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 113
    :goto_3
    iget-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    iget v5, p0, Lemy;->e:I

    iget v6, p0, Lemy;->e:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->measure(II)V

    .line 114
    sget v4, Lemt$e;->rl_tab:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 115
    .local v3, "tabRL":Landroid/widget/RelativeLayout;
    iget v4, p0, Lemy;->f:I

    if-lez v4, :cond_5

    .line 116
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget v5, p0, Lemy;->f:I

    iget-object v6, p0, Lemy;->g:Landroid/content/Context;

    invoke-static {v6, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2045
    :goto_4
    iget v4, v1, Leob;->c:I

    .line 121
    if-lez v4, :cond_3

    .line 3029
    iget v4, v1, Leob;->a:I

    .line 121
    iget-object v5, p0, Lemy;->c:Lcom/alibaba/android/search/SearchGroupType;

    invoke-virtual {v5}, Lcom/alibaba/android/search/SearchGroupType;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 122
    :cond_3
    iget-object v4, v2, Lemy$a;->b:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 108
    .end local v3    # "tabRL":Landroid/widget/RelativeLayout;
    :cond_4
    iget-object v4, v2, Lemy$a;->c:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 109
    iget-object v4, v2, Lemy$a;->d:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 110
    iget-object v4, v2, Lemy$a;->a:Landroid/widget/TextView;

    iget-object v5, p0, Lemy;->g:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lemt$b;->ui_common_tab_bar_level2_inactive_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3

    .line 118
    .restart local v3    # "tabRL":Landroid/widget/RelativeLayout;
    :cond_5
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v5, v2, Lemy$a;->a:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lemy;->g:Landroid/content/Context;

    const/high16 v7, 0x41c00000    # 24.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lemy;->g:Landroid/content/Context;

    invoke-static {v6, v11}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    .line 124
    :cond_6
    const-string/jumbo v0, "("

    .line 3045
    .local v0, "countText":Ljava/lang/String;
    iget v4, v1, Leob;->c:I

    .line 125
    const/16 v5, 0x63

    if-le v4, v5, :cond_7

    .line 126
    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v8

    const-string/jumbo v5, "99+"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    :goto_5
    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v8

    const-string/jumbo v5, ")"

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    iget-object v4, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v4, v2, Lemy$a;->b:Landroid/widget/TextView;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 128
    :cond_7
    new-array v4, v10, [Ljava/lang/String;

    aput-object v0, v4, v8

    .line 4045
    iget v5, v1, Leob;->c:I

    .line 128
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method
