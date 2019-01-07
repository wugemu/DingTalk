.class public final Lfgs;
.super Lfgr;
.source "RecyclerAdapterWithHeaderAndFooterOnlyForHomeContact.java"


# instance fields
.field public h:Z

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 2
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;>;"
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lfgr;-><init>(Ljava/util/List;Landroid/app/Activity;)V

    .line 27
    iput-boolean v1, p0, Lfgs;->h:Z

    .line 28
    const/4 v0, 0x1

    iput v0, p0, Lfgs;->i:I

    .line 29
    iput v1, p0, Lfgs;->j:I

    .line 33
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 1036
    iget-object v0, p0, Lfgr;->e:Landroid/app/Activity;

    .line 2037
    invoke-static {p2}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->getItemTypeFromInt(I)Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-result-object v1

    .line 2038
    sget-object v2, Lfhf$1;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2077
    if-eqz v0, :cond_9

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfha;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2078
    new-instance v0, Lfha;

    invoke-direct {v0, v1}, Lfha;-><init>(Landroid/view/View;)V

    .line 37
    :goto_1
    return-object v0

    .line 2040
    :pswitch_0
    if-eqz v0, :cond_0

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfgz;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2041
    new-instance v0, Lfgz;

    invoke-direct {v0, v1}, Lfgz;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2040
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_2

    .line 2044
    :pswitch_1
    if-eqz v0, :cond_1

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhh;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2045
    new-instance v0, Lfhh;

    invoke-direct {v0, v1}, Lfhh;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2044
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_3

    .line 2048
    :pswitch_2
    if-eqz v0, :cond_2

    :goto_4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhb;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2049
    new-instance v0, Lfhb;

    invoke-direct {v0, v1}, Lfhb;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2048
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_4

    .line 2052
    :pswitch_3
    if-eqz v0, :cond_3

    :goto_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfgy;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2053
    new-instance v0, Lfgy;

    invoke-direct {v0, v1}, Lfgy;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2052
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_5

    .line 2056
    :pswitch_4
    if-eqz v0, :cond_4

    :goto_6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhk;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2057
    new-instance v0, Lfhk;

    invoke-direct {v0, v1}, Lfhk;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2056
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_6

    .line 2060
    :pswitch_5
    if-eqz v0, :cond_5

    :goto_7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhl;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2061
    new-instance v0, Lfhl;

    invoke-direct {v0, v1}, Lfhl;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2060
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_7

    .line 2064
    :pswitch_6
    if-eqz v0, :cond_6

    :goto_8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhd;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2065
    new-instance v0, Lfhd;

    invoke-direct {v0, v1}, Lfhd;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2064
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_8

    .line 2068
    :pswitch_7
    if-eqz v0, :cond_7

    :goto_9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhg;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2069
    new-instance v0, Lfhg;

    invoke-direct {v0, v1}, Lfhg;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2068
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_9

    .line 2072
    :pswitch_8
    if-eqz v0, :cond_8

    :goto_a
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhj;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2073
    new-instance v0, Lfhj;

    invoke-direct {v0, v1}, Lfhj;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2072
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_a

    .line 2077
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto/16 :goto_0

    .line 2038
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public final a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "realPosition"    # I
    .param p3, "data"    # Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 42
    invoke-super {p0, p1, p2, p3}, Lfgr;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V

    .line 44
    iget-boolean v2, p0, Lfgs;->h:Z

    if-eqz v2, :cond_0

    instance-of v2, p1, Lfgy;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 45
    check-cast v0, Lfgy;

    .line 47
    .local v0, "holder":Lfgy;
    iget v2, p0, Lfgs;->j:I

    if-eqz v2, :cond_3

    .line 49
    iget v2, p0, Lfgs;->j:I

    if-lez v2, :cond_0

    .line 50
    iget v2, p0, Lfgs;->i:I

    iget v3, p0, Lfgs;->j:I

    add-int v1, v2, v3

    .line 51
    .local v1, "subDeptLastPosition":I
    iget v2, p0, Lfgs;->i:I

    if-ne p2, v2, :cond_1

    .line 52
    invoke-virtual {v0}, Lfgy;->c()V

    .line 62
    .end local v0    # "holder":Lfgy;
    .end local v1    # "subDeptLastPosition":I
    :cond_0
    :goto_0
    return-void

    .line 53
    .restart local v0    # "holder":Lfgy;
    .restart local v1    # "subDeptLastPosition":I
    :cond_1
    iget v2, p0, Lfgs;->i:I

    if-le p2, v2, :cond_2

    if-ge p2, v1, :cond_2

    .line 54
    invoke-virtual {v0}, Lfgy;->d()V

    goto :goto_0

    .line 55
    :cond_2
    if-ne p2, v1, :cond_3

    .line 56
    invoke-virtual {v0}, Lfgy;->e()V

    goto :goto_0

    .line 58
    .end local v1    # "subDeptLastPosition":I
    :cond_3
    invoke-virtual {v0}, Lfgy;->b()V

    goto :goto_0
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 25
    check-cast p3, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-virtual {p0, p1, p2, p3}, Lfgs;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V

    return-void
.end method
