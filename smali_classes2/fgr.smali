.class public Lfgr;
.super Lfgb;
.source "RecyclerAdapterWithHeaderAndFooter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgb",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field final e:Landroid/app/Activity;

.field public f:Lcry;

.field public g:J


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/app/Activity;)V
    .locals 0
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
    .line 27
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;>;"
    invoke-direct {p0}, Lfgb;-><init>()V

    .line 1128
    iput-object p1, p0, Lfgb;->a:Ljava/util/List;

    .line 29
    iput-object p2, p0, Lfgr;->e:Landroid/app/Activity;

    .line 30
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 21
    check-cast p1, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    .line 3057
    if-eqz p1, :cond_0

    .line 3058
    invoke-virtual {p1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;->getItemType()Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->getValue()I

    move-result v0

    :goto_0
    return v0

    .line 3060
    :cond_0
    sget-object v0, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->INVALID:Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 41
    iget-object v0, p0, Lfgr;->e:Landroid/app/Activity;

    .line 2034
    invoke-static {p2}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->getItemTypeFromInt(I)Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;

    move-result-object v1

    .line 2035
    sget-object v2, Lfhe$1;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel$ItemType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2074
    if-eqz v0, :cond_9

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfha;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2075
    new-instance v0, Lfha;

    invoke-direct {v0, v1}, Lfha;-><init>(Landroid/view/View;)V

    .line 41
    :goto_1
    return-object v0

    .line 2037
    :pswitch_0
    if-eqz v0, :cond_0

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfgz;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2038
    new-instance v0, Lfgz;

    invoke-direct {v0, v1}, Lfgz;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2037
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_2

    .line 2041
    :pswitch_1
    if-eqz v0, :cond_1

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhh;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2042
    new-instance v0, Lfhh;

    invoke-direct {v0, v1}, Lfhh;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2041
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_3

    .line 2045
    :pswitch_2
    if-eqz v0, :cond_2

    :goto_4
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhb;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2046
    new-instance v0, Lfhb;

    invoke-direct {v0, v1}, Lfhb;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2045
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_4

    .line 2049
    :pswitch_3
    if-eqz v0, :cond_3

    :goto_5
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhc;->f()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2050
    new-instance v0, Lfhc;

    invoke-direct {v0, v1}, Lfhc;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2049
    :cond_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_5

    .line 2053
    :pswitch_4
    if-eqz v0, :cond_4

    :goto_6
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhk;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2054
    new-instance v0, Lfhk;

    invoke-direct {v0, v1}, Lfhk;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2053
    :cond_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_6

    .line 2057
    :pswitch_5
    if-eqz v0, :cond_5

    :goto_7
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhl;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2058
    new-instance v0, Lfhl;

    invoke-direct {v0, v1}, Lfhl;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2057
    :cond_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_7

    .line 2061
    :pswitch_6
    if-eqz v0, :cond_6

    :goto_8
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhd;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2062
    new-instance v0, Lfhd;

    invoke-direct {v0, v1}, Lfhd;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2061
    :cond_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_8

    .line 2065
    :pswitch_7
    if-eqz v0, :cond_7

    :goto_9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhg;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2066
    new-instance v0, Lfhg;

    invoke-direct {v0, v1}, Lfhg;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2065
    :cond_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_9

    .line 2069
    :pswitch_8
    if-eqz v0, :cond_8

    :goto_a
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Lfhj;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2070
    new-instance v0, Lfhj;

    invoke-direct {v0, v1}, Lfhj;-><init>(Landroid/view/View;)V

    goto/16 :goto_1

    .line 2069
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_a

    .line 2074
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto/16 :goto_0

    .line 2035
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

.method public a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V
    .locals 4
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "RealPosition"    # I
    .param p3, "data"    # Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 46
    instance-of v0, p1, Lfhc;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 47
    check-cast v0, Lfhc;

    iget-object v1, p0, Lfgr;->f:Lcry;

    .line 2099
    iput-object v1, v0, Lfhc;->b:Lcry;

    .line 52
    :cond_0
    :goto_0
    check-cast p1, Lfgx;

    .end local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-virtual {p1, p3}, Lfgx;->a(Ljava/lang/Object;)V

    .line 53
    return-void

    .line 48
    .restart local p1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_1
    instance-of v0, p1, Lfhk;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 49
    check-cast v0, Lfhk;

    iget-wide v2, p0, Lfgr;->g:J

    .line 2176
    iput-wide v2, v0, Lfhk;->a:J

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p3, Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;

    invoke-virtual {p0, p1, p2, p3}, Lfgr;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILcom/alibaba/android/user/contact/homepage/ContactHomePageModel;)V

    return-void
.end method
