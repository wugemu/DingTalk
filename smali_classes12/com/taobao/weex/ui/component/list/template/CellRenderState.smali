.class public Lcom/taobao/weex/ui/component/list/template/CellRenderState;
.super Ljava/lang/Object;
.source "CellRenderState.java"


# instance fields
.field hasDataUpdate:Z

.field hasPositionChange:Z

.field hasVirtualCompoentUpdate:Z

.field itemId:J

.field private onceComponentStates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ">;"
        }
    .end annotation
.end field

.field position:I

.field private virtualComponentDatas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private virtualComponentIds:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualCompoentUpdate:Z

    .line 42
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    .line 47
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasPositionChange:Z

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->itemId:J

    return-void
.end method


# virtual methods
.method public getOnceComponentStates()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->onceComponentStates:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->onceComponentStates:Ljava/util/Map;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->onceComponentStates:Ljava/util/Map;

    return-object v0
.end method

.method public getVirtualComponentDatas()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 90
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentDatas:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentDatas:Ljava/util/Map;

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentDatas:Ljava/util/Map;

    return-object v0
.end method

.method public getVirtualComponentIds()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentIds:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentIds:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentIds:Ljava/util/Map;

    return-object v0
.end method

.method public hasVirtualComponents()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentIds:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->virtualComponentIds:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDirty()Z
    .locals 1

    .prologue
    .line 104
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualCompoentUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasPositionChange:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHasDataUpdate()Z
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    return v0
.end method

.method public resetDirty()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 116
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasDataUpdate:Z

    .line 117
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasVirtualCompoentUpdate:Z

    .line 118
    iput-boolean v0, p0, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->hasPositionChange:Z

    .line 119
    return-void
.end method
