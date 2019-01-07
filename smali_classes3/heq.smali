.class public final Lheq;
.super Lhek;
.source "RecyclerAdapterWithHeaderAndFooter.java"

# interfaces
.implements Lhep;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhek",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;",
        "Lhep;"
    }
.end annotation


# instance fields
.field public final g:Landroid/app/Activity;

.field public h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public j:I

.field public k:I

.field public l:Landroid/support/v7/widget/RecyclerView;

.field public m:Z

.field public n:I

.field public o:Z

.field private p:Z

.field private q:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "parentView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Lhek;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lheq;->i:Ljava/util/List;

    .line 35
    iput v1, p0, Lheq;->j:I

    .line 37
    iput v2, p0, Lheq;->k:I

    .line 41
    iput-boolean v1, p0, Lheq;->m:Z

    .line 43
    iput v2, p0, Lheq;->n:I

    .line 49
    iput v1, p0, Lheq;->q:I

    .line 55
    iget-object v0, p0, Lheq;->i:Ljava/util/List;

    .line 1181
    iput-object v0, p0, Lhek;->a:Ljava/util/List;

    .line 56
    iput-object p1, p0, Lheq;->l:Landroid/support/v7/widget/RecyclerView;

    .line 57
    iput-object p2, p0, Lheq;->g:Landroid/app/Activity;

    .line 58
    iput-object p3, p0, Lheq;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 59
    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 22
    check-cast p1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 2075
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2076
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v0

    :goto_0
    return v0

    .line 2078
    :cond_0
    sget-object v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->INVALID:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v0

    goto :goto_0
.end method

.method public final a(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 2
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 63
    iget-object v0, p0, Lheq;->g:Landroid/app/Activity;

    iget-object v1, p0, Lheq;->h:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {p1, p2, v0, v1}, Lhfa;->a(Landroid/view/ViewGroup;ILandroid/app/Activity;Landroid/support/v7/widget/RecyclerView$LayoutManager;)Lhes;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lheq;->p:Z

    if-eqz v0, :cond_0

    .line 185
    const/4 v0, 0x0

    iput-boolean v0, p0, Lheq;->p:Z

    .line 186
    invoke-virtual {p0}, Lheq;->notifyDataSetChanged()V

    .line 188
    :cond_0
    return-void
.end method

.method public final a(IILjava/lang/String;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "oldPosition"    # I
    .param p3, "actionType"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 83
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    if-ltz p1, :cond_0

    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge p1, v6, :cond_0

    .line 91
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 92
    .local v2, "itemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    if-eqz v2, :cond_0

    .line 96
    const/4 v1, 0x0

    .line 97
    .local v1, "insertIndex":I
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 98
    .local v3, "size":I
    const/4 v6, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 100
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_2
    if-ge v0, v3, :cond_3

    .line 101
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 102
    .local v5, "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 103
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 107
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v6

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_4

    .line 108
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getStickyStatus()Z

    move-result v6

    if-nez v6, :cond_4

    .line 109
    move v1, v0

    .line 113
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_3
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 114
    iput-boolean v8, p0, Lheq;->p:Z

    goto :goto_0

    .line 98
    .end local v0    # "index":I
    :sswitch_0
    const-string/jumbo v9, "mini_action_type_launch"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v7

    goto :goto_1

    :sswitch_1
    const-string/jumbo v9, "mini_action_type_stick"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v6, v8

    goto :goto_1

    :sswitch_2
    const-string/jumbo v9, "mini_action_type_cancel_stick"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v9, "mini_action_type_force_return"

    invoke-virtual {p3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    const/4 v6, 0x3

    goto :goto_1

    .line 100
    .restart local v0    # "index":I
    .restart local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 117
    .end local v0    # "index":I
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :pswitch_1
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_3
    if-ge v0, v3, :cond_5

    .line 118
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 119
    .restart local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 120
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v6

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_7

    .line 121
    move v1, v0

    .line 125
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_5
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 126
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setStickyStatus(Z)V

    .line 129
    :cond_6
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 130
    iput-boolean v8, p0, Lheq;->p:Z

    .line 131
    invoke-virtual {p0}, Lheq;->a()V

    goto/16 :goto_0

    .line 117
    .restart local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 134
    .end local v0    # "index":I
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :pswitch_2
    const/4 v0, 0x0

    .restart local v0    # "index":I
    :goto_4
    if-ge v0, v3, :cond_8

    .line 135
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 136
    .restart local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    if-eqz v5, :cond_a

    .line 139
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v4

    .line 140
    .local v4, "tempItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;
    if-eqz v4, :cond_a

    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    if-eqz v6, :cond_a

    .line 143
    invoke-virtual {v5}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v6

    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getItemType()Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    move-result-object v9

    invoke-virtual {v9}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->getValue()I

    move-result v9

    if-ne v6, v9, :cond_a

    .line 147
    invoke-virtual {v4}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getStickyStatus()Z

    move-result v6

    if-nez v6, :cond_a

    .line 148
    move v1, v0

    .line 153
    .end local v4    # "tempItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_8
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 154
    invoke-virtual {v2}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->setStickyStatus(Z)V

    .line 156
    :cond_9
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v6, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 157
    iput-boolean v8, p0, Lheq;->p:Z

    .line 158
    invoke-virtual {p0}, Lheq;->a()V

    goto/16 :goto_0

    .line 134
    .restart local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 161
    .end local v0    # "index":I
    .end local v5    # "tempModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :pswitch_3
    if-ltz p2, :cond_0

    if-ge p2, v3, :cond_0

    .line 165
    add-int/lit8 v6, p2, -0x1

    if-ltz v6, :cond_0

    .line 169
    iget-object v6, p0, Lheq;->i:Ljava/util/List;

    add-int/lit8 v7, p2, -0x1

    invoke-interface {v6, v7, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 170
    iput-boolean v8, p0, Lheq;->p:Z

    .line 171
    invoke-virtual {p0}, Lheq;->a()V

    goto/16 :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        -0x62b33371 -> :sswitch_2
        -0x52d96b49 -> :sswitch_0
        0x19ff3f08 -> :sswitch_3
        0x27093f0c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 22
    check-cast p3, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 3069
    check-cast p1, Lhes;

    invoke-virtual {p1, p3, p2, p0}, Lhes;->a(Ljava/lang/Object;ILhep;)V

    .line 22
    return-void
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 302
    iget-object v1, p0, Lheq;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 303
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;-><init>()V

    .line 304
    .local v0, "miniAppListItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->Group:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->setItemType(Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;)V

    .line 305
    iget-object v1, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    .end local v0    # "miniAppListItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 310
    iget-object v1, p0, Lheq;->i:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 311
    new-instance v0, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;-><init>()V

    .line 312
    .local v0, "miniAppListItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    sget-object v1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;->SearchHeader:Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->setItemType(Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel$ItemType;)V

    .line 313
    iget-object v1, p0, Lheq;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v0    # "miniAppListItemModel":Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;
    :cond_0
    return-void
.end method
