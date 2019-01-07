.class public final Lena;
.super Lemu;
.source "SearchResultRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lemu",
        "<",
        "Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/support/v7/widget/RecyclerView;

.field private final g:Landroid/app/Activity;

.field private h:Landroid/support/v7/widget/RecyclerView$LayoutManager;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 1
    .param p1, "parentView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    .line 23
    invoke-direct {p0}, Lemu;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lena;->e:Ljava/util/List;

    .line 24
    iget-object v0, p0, Lena;->e:Ljava/util/List;

    .line 1161
    iput-object v0, p0, Lemu;->a:Ljava/util/List;

    .line 25
    iput-object p1, p0, Lena;->f:Landroid/support/v7/widget/RecyclerView;

    .line 26
    iput-object p2, p0, Lena;->g:Landroid/app/Activity;

    .line 27
    iput-object p3, p0, Lena;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 28
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    .line 2043
    if-eqz p1, :cond_0

    .line 2044
    iget-object v0, p1, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;->b:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->getValue()I

    move-result v0

    :goto_0
    return v0

    .line 2046
    :cond_0
    sget-object v0, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->INVALID:Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 32
    iget-object v0, p0, Lena;->g:Landroid/app/Activity;

    .line 2017
    invoke-static {p2}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->getItemTypeFromInt(I)Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;

    move-result-object v1

    .line 2018
    sget-object v2, Letw$1;->a:[I

    invoke-virtual {v1}, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel$ItemType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 2035
    if-eqz v0, :cond_2

    :goto_0
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {}, Letu;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2036
    new-instance v0, Letu;

    invoke-direct {v0, v1}, Letu;-><init>(Landroid/view/View;)V

    .line 32
    :goto_1
    return-object v0

    .line 2020
    :pswitch_0
    if-eqz v0, :cond_0

    :goto_2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2021
    invoke-static {}, Letv;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2022
    new-instance v0, Letv;

    invoke-direct {v0, v1}, Letv;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2020
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_2

    .line 2025
    :pswitch_1
    if-eqz v0, :cond_1

    :goto_3
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2026
    invoke-static {}, Lett;->a()I

    move-result v1

    invoke-virtual {v0, v1, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2027
    new-instance v0, Lett;

    invoke-direct {v0, v1}, Lett;-><init>(Landroid/view/View;)V

    goto :goto_1

    .line 2025
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_3

    .line 2035
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    .line 2018
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 14
    check-cast p3, Lcom/alibaba/android/search/model/idl/models/MiniAppSearchListItemModel;

    .line 3038
    check-cast p1, Lets;

    invoke-virtual {p1, p3, p2}, Lets;->a(Ljava/lang/Object;I)V

    .line 14
    return-void
.end method
