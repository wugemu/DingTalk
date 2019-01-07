.class public final Lbkt;
.super Ljava/lang/Object;
.source "DingSubFilterDropDownView.java"


# instance fields
.field public a:Lbkw;

.field public b:Landroid/view/View;

.field public c:Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter;


# direct methods
.method public constructor <init>(Lbkw;)V
    .locals 0
    .param p1, "listener"    # Lbkw;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lbkt;->a:Lbkw;

    .line 35
    return-void
.end method

.method public static a(Landroid/app/Activity;I)Ljava/util/Collection;
    .locals 10
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "filter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "I)",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxp$b;->ding_dt_ding_sub_filter:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, "itemTitles":[Ljava/lang/String;
    const/4 v5, 0x3

    if-ne p1, v5, :cond_1

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Laxp$b;->ding_dt_task_sub_filter:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 88
    :cond_0
    :goto_0
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const-string/jumbo v8, "pref_key_sub_filter_ding_selected_index"

    aput-object v8, v5, v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v6

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

    .line 84
    .end local v0    # "i":I
    .end local v2    # "items":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/widget/DingSubFilterDropDownAdapter$a;>;"
    .end local v3    # "length":I
    .end local v4    # "selectedIndex":I
    :cond_1
    const/4 v5, 0x5

    if-ne p1, v5, :cond_0

    .line 85
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
    .line 69
    iget-object v0, p0, Lbkt;->b:Landroid/view/View;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lbkt;->b:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
