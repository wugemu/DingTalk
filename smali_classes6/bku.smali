.class public final Lbku;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownView2.java"


# instance fields
.field a:Lbkw;

.field private b:Landroid/view/View;

.field private c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;


# direct methods
.method public constructor <init>(Lbkw;)V
    .locals 0
    .param p1, "listener"    # Lbkw;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbku;->a:Lbkw;

    .line 35
    return-void
.end method

.method private static a(Landroid/app/Activity;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)Ljava/util/Collection;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "tabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 80
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxp$b;->ding_dt_ding_sub_filter:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "itemTitles":[Ljava/lang/String;
    sget-object v5, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne p1, v5, :cond_1

    .line 82
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxp$b;->ding_dt_task_sub_filter:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 87
    :cond_0
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "pref_key_sub_filter_ding_selected_index"

    aput-object v8, v5, v7

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->getValue()I

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

    .line 87
    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v4

    .line 89
    .local v4, "selectedIndex":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v2, "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;>;"
    array-length v3, v1

    .line 91
    .local v3, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 92
    new-instance v8, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;

    aget-object v9, v1, v0

    if-ne v0, v4, :cond_2

    move v5, v6

    :goto_2
    invoke-direct {v8, v9, v5}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 83
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;>;"
    .end local v3    # "length":I
    .end local v4    # "selectedIndex":I
    :cond_1
    sget-object v5, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->SCHEDULE:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-ne p1, v5, :cond_0

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxp$b;->ding_dt_meeting_sub_filter:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v2    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;>;"
    .restart local v3    # "length":I
    .restart local v4    # "selectedIndex":I
    :cond_2
    move v5, v7

    .line 92
    goto :goto_2

    .line 95
    :cond_3
    return-object v2
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 68
    iget-object v0, p0, Lbku;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lbku;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Landroid/view/ViewManager;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;I)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/ViewManager;
    .param p3, "tabIndex"    # Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;
    .param p4, "yOffset"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, -0x1

    .line 37
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->DING:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-eq p3, v2, :cond_1

    sget-object v2, Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;->TASK:Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;

    if-eq p3, v2, :cond_1

    .line 65
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    if-nez v2, :cond_2

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Laxp$g;->ding_layout_ding_sub_filter_drop_down:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lbku;->b:Landroid/view/View;

    .line 45
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    new-instance v3, Lbku$1;

    invoke-direct {v3, p0}, Lbku$1;-><init>(Lbku;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    new-instance v2, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-direct {v2, p1}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lbku;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    .line 54
    iget-object v2, p0, Lbku;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    iget-object v3, p0, Lbku;->a:Lbkw;

    .line 1050
    iput-object v3, v2, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a:Lbkw;

    .line 55
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    sget v3, Laxp$f;->listview:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 56
    .local v1, "listView":Landroid/widget/ListView;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    invoke-interface {p2, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    iget-object v2, p0, Lbku;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 61
    .end local v0    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "listView":Landroid/widget/ListView;
    :cond_2
    iget-object v2, p0, Lbku;->c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;

    invoke-static {p1, p3}, Lbku;->a(Landroid/app/Activity;Lcom/alibaba/android/ding/v2/DING_NEW_TAB_INDEX;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;->a(Ljava/util/Collection;)V

    .line 62
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput p4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 63
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v2, p0, Lbku;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lbku;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbku;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
