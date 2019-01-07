.class public Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;
.super Ljava/lang/Object;
.source "TemplateStickyHelper.java"


# instance fields
.field private mStickyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

.field private stickyHolderCache:Lfk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfk",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private stickyPositions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;)V
    .locals 2
    .param p1, "recyclerTemplateList"    # Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    .line 49
    new-instance v0, Lfk;

    invoke-direct {v0}, Lfk;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Lfk;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->mStickyTypes:Ljava/util/List;

    .line 51
    return-void
.end method


# virtual methods
.method public getStickyPositions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    return-object v0
.end method

.method public getStickyTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->mStickyTypes:Ljava/util/List;

    return-object v0
.end method

.method public onBeforeScroll(II)V
    .locals 27
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 57
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    if-nez v25, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    .line 61
    .local v4, "bounceRecyclerView":Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getHostView()Landroid/view/View;

    move-result-object v25

    check-cast v25, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getInnerView()Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/support/v7/widget/RecyclerView;

    .line 62
    .local v20, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v14

    .line 63
    .local v14, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    const/4 v8, -0x1

    .line 64
    .local v8, "firstVisiblePosition":I
    const/4 v13, 0x0

    .line 65
    .local v13, "lastVisiblePosition":I
    instance-of v0, v14, Landroid/support/v7/widget/LinearLayoutManager;

    move/from16 v25, v0

    if-eqz v25, :cond_4

    move-object/from16 v25, v14

    .line 66
    check-cast v25, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual/range {v25 .. v25}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v8

    .line 67
    check-cast v14, Landroid/support/v7/widget/LinearLayoutManager;

    .end local v14    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v14}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v13

    .line 73
    :cond_2
    :goto_1
    if-ltz v8, :cond_0

    .line 77
    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v6

    check-cast v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 78
    .local v6, "firstVisibleItemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-eqz v6, :cond_0

    .line 83
    const/4 v15, -0x1

    .line 84
    .local v15, "matchStickyPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_3
    :goto_2
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    .line 85
    .local v9, "headerPosition":Ljava/lang/Integer;
    if-eqz v9, :cond_3

    .line 88
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    if-gt v0, v8, :cond_5

    .line 89
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v26

    move/from16 v0, v26

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 93
    goto :goto_2

    .line 68
    .end local v6    # "firstVisibleItemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v9    # "headerPosition":Ljava/lang/Integer;
    .end local v15    # "matchStickyPosition":I
    .restart local v14    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_4
    instance-of v0, v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move/from16 v25, v0

    if-eqz v25, :cond_2

    .line 69
    const/16 v25, 0x3

    move/from16 v0, v25

    new-array v7, v0, [I

    .local v7, "firstVisibleItemPositions":[I
    move-object/from16 v25, v14

    .line 70
    check-cast v25, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    move-result-object v25

    const/16 v26, 0x0

    aget v8, v25, v26

    .line 71
    check-cast v14, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v14    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v14, v7}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    move-result-object v25

    const/16 v26, 0x0

    aget v13, v25, v26

    goto :goto_1

    .line 94
    .end local v7    # "firstVisibleItemPositions":[I
    .restart local v6    # "firstVisibleItemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .restart local v15    # "matchStickyPosition":I
    :cond_5
    if-gez v15, :cond_8

    .line 96
    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 97
    .local v21, "stickyFakeView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move/from16 v25, v0

    if-eqz v25, :cond_6

    .line 98
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 99
    .local v22, "stickyFakeViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeView(Landroid/view/View;)V

    .line 100
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    .line 101
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    if-eqz v25, :cond_6

    .line 102
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v25

    const-string/jumbo v26, "unsticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 103
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    const-string/jumbo v26, "unsticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 108
    .end local v22    # "stickyFakeViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    :cond_6
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_3
    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_0

    .line 109
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 110
    .local v12, "itemView":Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    check-cast v11, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 111
    .local v11, "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-eqz v11, :cond_7

    .line 114
    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getAdapterPosition()I

    move-result v3

    .line 115
    .local v3, "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 118
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-eqz v25, :cond_7

    .line 119
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .end local v3    # "adapterPosition":I
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 126
    .end local v10    # "i":I
    .end local v11    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v12    # "itemView":Landroid/view/View;
    .end local v21    # "stickyFakeView":Landroid/view/View;
    :cond_8
    invoke-virtual {v4}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildCount()I

    move-result v25

    add-int/lit8 v25, v25, -0x1

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    .line 127
    .restart local v21    # "stickyFakeView":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move/from16 v25, v0

    if-eqz v25, :cond_9

    .line 128
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v25

    move/from16 v0, v25

    if-eq v0, v15, :cond_d

    .line 131
    :cond_9
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move/from16 v25, v0

    if-eqz v25, :cond_a

    .line 132
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v25

    move/from16 v0, v25

    if-eq v0, v15, :cond_a

    .line 133
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 134
    .restart local v22    # "stickyFakeViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->removeView(Landroid/view/View;)V

    .line 135
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    .line 136
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    if-eqz v25, :cond_a

    .line 137
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v25

    const-string/jumbo v26, "unsticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 138
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    const-string/jumbo v26, "unsticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 143
    .end local v22    # "stickyFakeViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemViewType(I)I

    move-result v23

    .line 144
    .local v23, "stickyHolderType":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Lfk;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lfk;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 145
    .local v5, "fakeStickyHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-nez v5, :cond_b

    .line 146
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    move-result-object v5

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyHolderCache:Lfk;

    move-object/from16 v25, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v5}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->recyclerTemplateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5, v15}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->onBindViewHolder(Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;I)V

    .line 150
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    .line 151
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 152
    new-instance v18, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v25, -0x1

    const/16 v26, -0x2

    move-object/from16 v0, v18

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 153
    .local v18, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/WXComponent;->clearPreLayout()V

    .line 154
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    if-eqz v25, :cond_c

    .line 155
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    .line 156
    .local v19, "parent":Landroid/view/ViewGroup;
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 158
    .end local v19    # "parent":Landroid/view/ViewGroup;
    :cond_c
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Lcom/taobao/weex/ui/view/refresh/wrapper/BounceRecyclerView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/ui/component/WXComponent;->setLayout(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 160
    iget-object v0, v5, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 161
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    if-eqz v25, :cond_d

    .line 162
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v25

    const-string/jumbo v26, "sticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/dom/WXEvent;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 163
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    const-string/jumbo v26, "sticky"

    invoke-virtual/range {v25 .. v26}, Lcom/taobao/weex/ui/component/WXComponent;->fireEvent(Ljava/lang/String;)V

    .line 166
    .end local v5    # "fakeStickyHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v18    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v23    # "stickyHolderType":I
    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 167
    .restart local v22    # "stickyFakeViewHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    invoke-virtual/range {v20 .. v20}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v25

    move/from16 v0, v25

    if-ge v10, v0, :cond_10

    .line 168
    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 169
    .restart local v12    # "itemView":Landroid/view/View;
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v11

    check-cast v11, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 170
    .restart local v11    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-eqz v11, :cond_e

    .line 173
    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getAdapterPosition()I

    move-result v3

    .line 174
    .restart local v3    # "adapterPosition":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_e

    .line 177
    invoke-virtual/range {v22 .. v22}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getHolderPosition()I

    move-result v25

    move/from16 v0, v25

    if-ne v3, v0, :cond_f

    .line 178
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_e

    .line 179
    const/16 v25, 0x4

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .end local v3    # "adapterPosition":I
    :cond_e
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 182
    .restart local v3    # "adapterPosition":I
    :cond_f
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-eqz v25, :cond_e

    .line 183
    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 188
    .end local v3    # "adapterPosition":I
    .end local v11    # "itemHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    .end local v12    # "itemView":Landroid/view/View;
    :cond_10
    invoke-virtual {v6}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/component/WXComponent;->isSticky()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 189
    iget-object v0, v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getY()F

    move-result v25

    const/16 v26, 0x0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_15

    .line 190
    iget-object v0, v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x4

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_11

    .line 191
    iget-object v0, v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 193
    :cond_11
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-eqz v25, :cond_12

    .line 194
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :cond_12
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->bringToFront()V

    .line 212
    :cond_13
    :goto_6
    add-int/lit8 v17, v8, 0x1

    .line 213
    .local v17, "nextVisiblePostion":I
    if-lez v13, :cond_14

    .line 214
    move/from16 v10, v17

    :goto_7
    if-gt v10, v13, :cond_14

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_18

    .line 216
    move/from16 v17, v10

    .line 221
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateStickyHelper;->stickyPositions:Ljava/util/List;

    move-object/from16 v25, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-interface/range {v25 .. v26}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_19

    .line 222
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationY()F

    move-result v25

    const/16 v26, 0x0

    cmpg-float v25, v25, v26

    if-gez v25, :cond_0

    .line 223
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 198
    .end local v17    # "nextVisiblePostion":I
    :cond_15
    iget-object v0, v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-eqz v25, :cond_16

    .line 199
    iget-object v0, v6, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    .line 201
    :cond_16
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_13

    .line 202
    const/16 v25, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 206
    :cond_17
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v25

    if-eqz v25, :cond_13

    .line 207
    const/16 v25, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 214
    .restart local v17    # "nextVisiblePostion":I
    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_7

    .line 227
    :cond_19
    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v16

    check-cast v16, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;

    .line 228
    .local v16, "nextStickyHolder":Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;
    if-eqz v16, :cond_0

    .line 229
    invoke-virtual/range {v16 .. v16}, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->getComponent()Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 232
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getY()F

    move-result v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getMeasuredHeight()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v24, v0

    .line 233
    .local v24, "translationY":I
    if-gtz v24, :cond_1a

    .line 234
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0

    .line 236
    :cond_1a
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/TemplateViewHolder;->itemView:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setTranslationY(F)V

    goto/16 :goto_0
.end method
