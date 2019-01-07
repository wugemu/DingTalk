.class Lcom/taobao/weex/ui/component/list/DefaultDragHelper;
.super Ljava/lang/Object;
.source "DefaultDragHelper.java"

# interfaces
.implements Lcom/taobao/weex/ui/component/list/DragHelper;


# static fields
.field private static final EVENT_END_DRAG:Ljava/lang/String; = "dragend"

.field private static final EVENT_START_DRAG:Ljava/lang/String; = "dragstart"

.field private static final TAG:Ljava/lang/String; = "WXListExComponent"

.field private static final TAG_EXCLUDED:Ljava/lang/String; = "drag_excluded"


# instance fields
.field private isDraggable:Z

.field private final mDataSource:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mEventTrigger:Lcom/taobao/weex/ui/component/list/EventTrigger;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLongPressEnabled:Z

.field private final mRecyclerView:Landroid/support/v7/widget/RecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;Landroid/support/v7/widget/RecyclerView;Lcom/taobao/weex/ui/component/list/EventTrigger;)V
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "trigger"    # Lcom/taobao/weex/ui/component/list/EventTrigger;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;",
            "Landroid/support/v7/widget/RecyclerView;",
            "Lcom/taobao/weex/ui/component/list/EventTrigger;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "dataSource":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->isDraggable:Z

    .line 65
    iput-object p1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mDataSource:Ljava/util/List;

    .line 66
    iput-object p3, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mEventTrigger:Lcom/taobao/weex/ui/component/list/EventTrigger;

    .line 67
    iput-object p2, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 70
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    new-instance v1, Lcom/taobao/weex/ui/component/list/DragSupportCallback;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/taobao/weex/ui/component/list/DragSupportCallback;-><init>(Lcom/taobao/weex/ui/component/list/DragHelper;Z)V

    invoke-direct {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private buildEvent(Ljava/lang/String;II)Ljava/util/Map;
    .locals 4
    .param p1, "target"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "fromIndex"    # I
    .param p3, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 166
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 167
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v1, "target"

    if-nez p1, :cond_0

    const-string/jumbo p1, "unknown"

    .end local p1    # "target":Ljava/lang/String;
    :cond_0
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string/jumbo v1, "fromIndex"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string/jumbo v1, "toIndex"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string/jumbo v1, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    return-object v0
.end method


# virtual methods
.method public isDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 3
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 156
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 157
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-string/jumbo v1, "WXListExComponent"

    const-string/jumbo v2, "[error] viewHolder.itemView is null"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "drag_excluded"

    iget-object v2, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDraggable()Z
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->isDraggable:Z

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mLongPressEnabled:Z

    return v0
.end method

.method public onDragEnd(Lcom/taobao/weex/ui/component/WXComponent;II)V
    .locals 3
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "from"    # I
    .param p3, "to"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 88
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    const-string/jumbo v0, "WXListExComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "list on drag end : from index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mEventTrigger:Lcom/taobao/weex/ui/component/list/EventTrigger;

    const-string/jumbo v1, "dragend"

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3}, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->buildEvent(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/EventTrigger;->triggerEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public onDragStart(Lcom/taobao/weex/ui/component/WXComponent;I)V
    .locals 4
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "from"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 80
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string/jumbo v0, "WXListExComponent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "list on drag start : from index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mEventTrigger:Lcom/taobao/weex/ui/component/list/EventTrigger;

    const-string/jumbo v1, "dragstart"

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v2, p2, v3}, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->buildEvent(Ljava/lang/String;II)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/taobao/weex/ui/component/list/EventTrigger;->triggerEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 84
    return-void
.end method

.method public onDragging(II)V
    .locals 4
    .param p1, "fromPos"    # I
    .param p2, "toPos"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 96
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string/jumbo v1, "WXListExComponent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "list on dragging : from index "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 101
    .local v0, "adapter":Landroid/support/v7/widget/RecyclerView$Adapter;
    if-nez v0, :cond_2

    .line 102
    const-string/jumbo v1, "WXListExComponent"

    const-string/jumbo v2, "drag failed because of RecyclerView#Adapter is not bound"

    invoke-static {v1, v2}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_1
    :goto_0
    return-void

    .line 106
    :cond_2
    if-ltz p1, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mDataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mDataSource:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-gt p2, v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mDataSource:Ljava/util/List;

    invoke-static {v1, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 108
    invoke-virtual {v0, p1, p2}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    goto :goto_0
.end method

.method public setDragExcluded(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V
    .locals 2
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "isExcluded"    # Z

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 142
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    const-string/jumbo v0, "WXListExComponent"

    const-string/jumbo v1, "[error] viewHolder.itemView is null"

    invoke-static {v0, v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    if-eqz p2, :cond_2

    .line 148
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string/jumbo v1, "drag_excluded"

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setDraggable(Z)V
    .locals 0
    .param p1, "draggable"    # Z

    .prologue
    .line 136
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->isDraggable:Z

    .line 137
    return-void
.end method

.method public setLongPressDragEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mLongPressEnabled:Z

    .line 120
    return-void
.end method

.method public startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->isDraggable:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/DefaultDragHelper;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 127
    :cond_0
    return-void
.end method
