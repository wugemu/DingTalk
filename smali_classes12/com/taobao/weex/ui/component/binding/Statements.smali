.class public Lcom/taobao/weex/ui/component/binding/Statements;
.super Ljava/lang/Object;
.source "Statements.java"


# static fields
.field private static final dynamicLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 564
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/taobao/weex/ui/component/binding/Statements;->dynamicLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 2
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v0

    .line 120
    .local v0, "copy":Lcom/taobao/weex/ui/component/WXComponent;
    return-object v0
.end method

.method private static final copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;
    .locals 19
    .param p0, "source"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "parent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 127
    const/4 v9, 0x0

    .line 129
    .local v9, "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/weex/ui/action/BasicComponentData;->clone()Lcom/taobao/weex/ui/action/BasicComponentData;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 133
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstance()Lcom/taobao/weex/WXSDKInstance;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-static {v3, v0, v9}, Lcom/taobao/weex/ui/component/WXComponentFactory;->newInstance(Lcom/taobao/weex/WXSDKInstance;Lcom/taobao/weex/ui/component/WXVContainer;Lcom/taobao/weex/ui/action/BasicComponentData;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v2

    .line 134
    .local v2, "component":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutPosition()Lcom/taobao/weex/ui/action/GraphicPosition;

    move-result-object v14

    .line 135
    .local v14, "graphicPosition":Lcom/taobao/weex/ui/action/GraphicPosition;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutSize()Lcom/taobao/weex/ui/action/GraphicSize;

    move-result-object v15

    .line 136
    .local v15, "graphicSize":Lcom/taobao/weex/ui/action/GraphicSize;
    invoke-virtual {v14}, Lcom/taobao/weex/ui/action/GraphicPosition;->getTop()F

    move-result v3

    invoke-virtual {v14}, Lcom/taobao/weex/ui/action/GraphicPosition;->getBottom()F

    move-result v4

    invoke-virtual {v14}, Lcom/taobao/weex/ui/action/GraphicPosition;->getLeft()F

    move-result v5

    invoke-virtual {v14}, Lcom/taobao/weex/ui/action/GraphicPosition;->getRight()F

    move-result v6

    .line 137
    invoke-virtual {v15}, Lcom/taobao/weex/ui/action/GraphicSize;->getHeight()F

    move-result v7

    invoke-virtual {v15}, Lcom/taobao/weex/ui/action/GraphicSize;->getWidth()F

    move-result v8

    .line 136
    invoke-virtual/range {v2 .. v8}, Lcom/taobao/weex/ui/component/WXComponent;->updateDemission(FFFFFF)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getExtra()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->updateExtra(Ljava/lang/Object;)V

    .line 139
    move-object/from16 v0, p0

    instance-of v3, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v3, :cond_1

    move-object/from16 v11, p0

    .line 140
    check-cast v11, Lcom/taobao/weex/ui/component/WXVContainer;

    .local v11, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    move-object v10, v2

    .line 141
    check-cast v10, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 142
    .local v10, "childParent":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v12

    .line 143
    .local v12, "count":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_1

    .line 144
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v17

    .line 145
    .local v17, "sourceChild":Lcom/taobao/weex/ui/component/WXComponent;
    if-eqz v17, :cond_0

    .line 146
    move-object/from16 v0, v17

    invoke-static {v0, v10}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v18

    .local v18, "targetChild":Lcom/taobao/weex/ui/component/WXComponent;
    move-object/from16 v0, v18

    invoke-virtual {v10, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 147
    invoke-virtual {v10}, Lcom/taobao/weex/ui/component/WXVContainer;->getRenderObjectPtr()J

    move-result-wide v4

    .line 148
    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v6

    .line 147
    invoke-static {v4, v5, v6, v7}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeAddChildRenderObject(JJ)V

    .line 143
    .end local v18    # "targetChild":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 130
    .end local v2    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v10    # "childParent":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v11    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v12    # "count":I
    .end local v14    # "graphicPosition":Lcom/taobao/weex/ui/action/GraphicPosition;
    .end local v15    # "graphicSize":Lcom/taobao/weex/ui/action/GraphicSize;
    .end local v16    # "i":I
    .end local v17    # "sourceChild":Lcom/taobao/weex/ui/component/WXComponent;
    :catch_0
    move-exception v13

    .line 131
    .local v13, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v13}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0

    .line 153
    .end local v13    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v2    # "component":Lcom/taobao/weex/ui/component/WXComponent;
    .restart local v14    # "graphicPosition":Lcom/taobao/weex/ui/action/GraphicPosition;
    .restart local v15    # "graphicSize":Lcom/taobao/weex/ui/action/GraphicSize;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 156
    :cond_2
    return-object v2
.end method

.method private static doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V
    .locals 22
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "context"    # Lcom/taobao/weex/ui/component/list/template/CellRenderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p2, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    .line 356
    .local v2, "attr":Lcom/taobao/weex/dom/WXAttr;
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 360
    .local v11, "stack":Lcom/taobao/weex/el/parse/ArrayStack;
    const-string/jumbo v14, "@isComponentRoot"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "@isComponentRoot"

    .line 361
    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 362
    const-string/jumbo v14, "@componentProps"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    const-string/jumbo v14, "@componentProps"

    .line 363
    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/taobao/weex/dom/binding/JSONUtils;->isJSON(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 364
    const-string/jumbo v14, "@templateId"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 366
    .local v4, "compoentId":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_8

    .line 367
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 368
    .local v12, "virtualComponentId":Ljava/lang/String;
    if-nez v12, :cond_7

    .line 369
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getRef()Ljava/lang/String;

    move-result-object v14

    .line 370
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getItemId(I)J

    move-result-wide v16

    .line 369
    invoke-static/range {v14 .. v17}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->createVirtualComponentId(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v12

    .line 371
    const-string/jumbo v14, "@componentProps"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-static {v14}, Lcom/taobao/weex/dom/binding/JSONUtils;->toJSON(Ljava/lang/Object;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v14

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v14, v15}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v9

    .line 372
    .local v9, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v14

    const-string/jumbo v15, "componentHook"

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v4, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "lifecycle"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "create"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v10

    .line 376
    .local v10, "result":Lcom/taobao/weex/bridge/EventResult;
    if-eqz v10, :cond_0

    .line 377
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 378
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/util/Map;

    if-eqz v14, :cond_0

    .line 379
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-interface {v9, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 381
    :cond_0
    move-object v3, v9

    .line 382
    .local v3, "compoentData":Ljava/util/Map;
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentIds()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v14

    move-object/from16 v0, p1

    iget v15, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->position:I

    invoke-virtual {v14, v15, v12, v3}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->createVirtualComponentData(ILjava/lang/String;Ljava/lang/Object;)V

    .line 385
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v14

    const-string/jumbo v15, "componentHook"

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "lifecycle"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "attach"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x0

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 404
    .end local v3    # "compoentData":Ljava/util/Map;
    .end local v9    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "result":Lcom/taobao/weex/bridge/EventResult;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v14

    const-string/jumbo v15, "@virtualComponentId"

    invoke-virtual {v14, v15, v12}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .end local v12    # "virtualComponentId":Ljava/lang/String;
    :goto_1
    new-instance v14, Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-direct {v14}, Lcom/taobao/weex/el/parse/ArrayStack;-><init>()V

    move-object/from16 v0, p1

    iput-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 411
    if-eqz v3, :cond_2

    .line 412
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-virtual {v14, v3}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 420
    .end local v4    # "compoentId":Ljava/lang/String;
    :cond_2
    const/4 v13, 0x0

    .line 421
    .local v13, "vonce":Ljava/lang/Object;
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v14

    if-eqz v14, :cond_3

    .line 422
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v14

    const-string/jumbo v15, "[[once]]"

    invoke-virtual {v14, v15}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 424
    .end local v13    # "vonce":Ljava/lang/Object;
    :cond_3
    if-eqz v13, :cond_5

    .line 425
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getOnceComponentStates()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/el/parse/ArrayStack;

    .line 426
    .local v8, "onceStack":Lcom/taobao/weex/el/parse/ArrayStack;
    if-nez v8, :cond_4

    .line 427
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0, v11}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->copyStack(Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Lcom/taobao/weex/el/parse/ArrayStack;)Lcom/taobao/weex/el/parse/ArrayStack;

    move-result-object v8

    .line 428
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getOnceComponentStates()Ljava/util/Map;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getViewTreeKey()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    :cond_4
    move-object/from16 v0, p1

    iput-object v8, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 433
    .end local v8    # "onceStack":Lcom/taobao/weex/el/parse/ArrayStack;
    :cond_5
    invoke-static/range {p0 .. p1}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderBindingAttrsAndEvent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)V

    .line 434
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v14, :cond_a

    .line 435
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 436
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v14, :cond_9

    .line 449
    :cond_6
    :goto_2
    return-void

    .line 387
    .restart local v4    # "compoentId":Ljava/lang/String;
    .restart local v12    # "virtualComponentId":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->getVirtualComponentDatas()Ljava/util/Map;

    move-result-object v14

    invoke-interface {v14, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 388
    .local v3, "compoentData":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->getRenderState()Lcom/taobao/weex/ui/component/list/template/CellRenderState;

    move-result-object v14

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/CellRenderState;->isHasDataUpdate()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 389
    const-string/jumbo v14, "@componentProps"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v14, v15}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v9

    .line 390
    .restart local v9    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v14

    const-string/jumbo v15, "componentHook"

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getInstanceId()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v12, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "lifecycle"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "syncState"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v12, v20, v21

    const/16 v21, 0x1

    aput-object v9, v20, v21

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const/16 v20, 0x0

    aput-object v20, v18, v19

    invoke-virtual/range {v14 .. v18}, Lcom/taobao/weex/bridge/WXBridgeManager;->syncCallJSEventWithResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)Lcom/taobao/weex/bridge/EventResult;

    move-result-object v10

    .line 395
    .restart local v10    # "result":Lcom/taobao/weex/bridge/EventResult;
    if-eqz v10, :cond_1

    .line 396
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 397
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Ljava/util/Map;

    if-eqz v14, :cond_1

    .line 398
    invoke-virtual {v10}, Lcom/taobao/weex/bridge/EventResult;->getResult()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map;

    invoke-interface {v9, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 399
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->templateList:Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;

    invoke-virtual {v14}, Lcom/taobao/weex/ui/component/list/template/WXRecyclerTemplateList;->getCellDataManager()Lcom/taobao/weex/ui/component/list/template/CellDataManager;

    move-result-object v14

    invoke-virtual {v14, v12, v9}, Lcom/taobao/weex/ui/component/list/template/CellDataManager;->updateVirtualComponentData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 400
    move-object v3, v9

    .local v3, "compoentData":Ljava/util/Map;
    goto/16 :goto_0

    .line 406
    .end local v3    # "compoentData":Ljava/util/Map;
    .end local v9    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "result":Lcom/taobao/weex/bridge/EventResult;
    .end local v12    # "virtualComponentId":Ljava/lang/String;
    :cond_8
    const-string/jumbo v14, "@componentProps"

    invoke-virtual {v2, v14}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    invoke-static {v14, v15}, Lcom/taobao/weex/ui/component/binding/Statements;->renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v9

    .line 407
    .restart local v9    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object v3, v9

    .restart local v3    # "compoentData":Ljava/util/Map;
    goto/16 :goto_1

    .end local v3    # "compoentData":Ljava/util/Map;
    .end local v4    # "compoentId":Ljava/lang/String;
    .end local v9    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_9
    move-object/from16 v5, p0

    .line 440
    check-cast v5, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 441
    .local v5, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    const/4 v6, 0x0

    .local v6, "k":I
    :goto_3
    invoke-virtual {v5}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v14

    if-ge v6, v14, :cond_a

    .line 442
    invoke-virtual {v5, v6}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v7

    .line 443
    .local v7, "next":Lcom/taobao/weex/ui/component/WXComponent;
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v7, v0, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I

    move-result v14

    add-int/2addr v6, v14

    .line 444
    goto :goto_3

    .line 446
    .end local v5    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v6    # "k":I
    .end local v7    # "next":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_a
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    if-eq v11, v14, :cond_6

    .line 447
    move-object/from16 v0, p1

    iput-object v11, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    goto/16 :goto_2
.end method

.method public static final doInitCompontent(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 196
    :cond_0
    return-void

    .line 183
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/ui/component/WXComponent;

    .line 184
    .local v2, "renderNode":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v4

    if-nez v4, :cond_2

    .line 185
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "render node parent cann\'t find"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 187
    :cond_2
    invoke-virtual {v2}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v0

    .line 188
    .local v0, "parent":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v0, v2}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v1

    .line 189
    .local v1, "renderIndex":I
    if-gez v1, :cond_3

    .line 190
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "render node cann\'t find"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 192
    :cond_3
    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 193
    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 194
    invoke-virtual {v2, v2}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    goto :goto_0
.end method

.method public static final doRender(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)Ljava/util/List;
    .locals 3
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "stack"    # Lcom/taobao/weex/ui/component/list/template/CellRenderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 172
    .local v1, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    :try_start_0
    invoke-static {p0, p1, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-object v1

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "WeexStatementRender"

    invoke-static {v2, v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private static doRenderBindingAttrsAndEvent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;)V
    .locals 21
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "context"    # Lcom/taobao/weex/ui/component/list/template/CellRenderContext;

    .prologue
    .line 464
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    .line 465
    .local v14, "stack":Lcom/taobao/weex/el/parse/ArrayStack;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    .line 467
    .local v2, "attr":Lcom/taobao/weex/dom/WXAttr;
    if-eqz v2, :cond_4

    .line 468
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Lfk;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 469
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Lfk;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lfk;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 470
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/taobao/weex/dom/WXAttr;->getBindingAttrs()Lfk;

    move-result-object v3

    .line 471
    .local v3, "bindAttrs":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v3, v14}, Lcom/taobao/weex/ui/component/binding/Statements;->renderBindingAttrs(Lfk;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v5

    .line 472
    .local v5, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 476
    .local v6, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 477
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 478
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 479
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 480
    .local v12, "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 481
    .local v16, "value":Ljava/lang/Object;
    invoke-virtual {v2, v12}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 482
    .local v13, "oldValue":Ljava/lang/Object;
    if-nez v16, :cond_1

    .line 483
    if-nez v13, :cond_0

    .line 484
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 488
    :cond_1
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 489
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 494
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "oldValue":Ljava/lang/Object;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_2
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v18

    if-lez v18, :cond_4

    .line 495
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    const-string/jumbo v18, "src"

    .line 496
    move-object/from16 v0, v18

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    instance-of v0, v0, Lcom/taobao/weex/ui/component/WXImage;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v18

    const-string/jumbo v19, "src"

    const-string/jumbo v20, "src"

    move-object/from16 v0, v20

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v18 .. v20}, Lcom/taobao/weex/dom/WXAttr;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :goto_1
    invoke-static {}, Lcom/taobao/weex/ui/component/binding/Statements;->isMainThread()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 504
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 506
    :cond_3
    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 511
    .end local v3    # "bindAttrs":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v15

    .line 512
    .local v15, "style":Lcom/taobao/weex/dom/WXStyle;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/taobao/weex/dom/WXStyle;->getBindingStyle()Lfk;

    move-result-object v18

    if-eqz v18, :cond_9

    .line 513
    invoke-virtual {v15}, Lcom/taobao/weex/dom/WXStyle;->getBindingStyle()Lfk;

    move-result-object v4

    .line 514
    .local v4, "bindStyle":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v4, v14}, Lcom/taobao/weex/ui/component/binding/Statements;->renderBindingAttrs(Lfk;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;

    move-result-object v5

    .line 515
    .restart local v5    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 519
    .restart local v6    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 520
    .restart local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_5
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 521
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 522
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 523
    .restart local v12    # "key":Ljava/lang/String;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    .line 524
    .restart local v16    # "value":Ljava/lang/Object;
    invoke-virtual {v15, v12}, Lcom/taobao/weex/dom/WXStyle;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 525
    .restart local v13    # "oldValue":Ljava/lang/Object;
    if-nez v16, :cond_7

    .line 526
    if-nez v13, :cond_5

    .line 527
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 501
    .end local v4    # "bindStyle":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "oldValue":Ljava/lang/Object;
    .end local v15    # "style":Lcom/taobao/weex/dom/WXStyle;
    .end local v16    # "value":Ljava/lang/Object;
    .restart local v3    # "bindAttrs":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/WXComponent;->nativeUpdateAttrs(Ljava/util/Map;)V

    goto :goto_1

    .line 531
    .end local v3    # "bindAttrs":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4    # "bindStyle":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v12    # "key":Ljava/lang/String;
    .restart local v13    # "oldValue":Ljava/lang/Object;
    .restart local v15    # "style":Lcom/taobao/weex/dom/WXStyle;
    .restart local v16    # "value":Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 532
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_2

    .line 536
    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "oldValue":Ljava/lang/Object;
    .end local v16    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v18

    if-lez v18, :cond_9

    .line 537
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/WXComponent;->updateNativeStyles(Ljava/util/Map;)V

    .line 538
    invoke-static {}, Lcom/taobao/weex/ui/component/binding/Statements;->isMainThread()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 539
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/taobao/weex/ui/component/WXComponent;->updateProperties(Ljava/util/Map;)V

    .line 544
    .end local v4    # "bindStyle":Lfk;, "Lfk<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v11    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v8

    .line 545
    .local v8, "event":Lcom/taobao/weex/dom/WXEvent;
    if-eqz v8, :cond_a

    invoke-virtual {v8}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Lfk;

    move-result-object v18

    if-nez v18, :cond_b

    .line 556
    :cond_a
    return-void

    .line 548
    :cond_b
    invoke-virtual {v8}, Lcom/taobao/weex/dom/WXEvent;->getEventBindingArgs()Lfk;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lfk;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 549
    .local v10, "eventBindArgsEntrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_c
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_a

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 550
    .local v9, "eventBindArgsEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->getBindingEventArgs(Lcom/taobao/weex/el/parse/ArrayStack;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    .line 551
    .local v17, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz v17, :cond_c

    .line 552
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Lcom/taobao/weex/dom/WXEvent;->putEventBindingArgsValue(Ljava/lang/String;Ljava/util/List;)V

    goto :goto_3
.end method

.method private static final doRenderComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)I
    .locals 28
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "context"    # Lcom/taobao/weex/ui/component/list/template/CellRenderContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            "Lcom/taobao/weex/ui/component/list/template/CellRenderContext;",
            "Ljava/util/List",
            "<",
            "Lcom/taobao/weex/ui/component/WXComponent;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "updates":Ljava/util/List;, "Ljava/util/List<Lcom/taobao/weex/ui/component/WXComponent;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object v13

    .line 211
    .local v13, "parent":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v2

    .line 212
    .local v2, "attrs":Lcom/taobao/weex/dom/WXAttr;
    invoke-virtual {v2}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v18

    .line 213
    .local v18, "statement":Lcom/taobao/weex/dom/binding/WXStatement;
    if-eqz v18, :cond_15

    .line 214
    const/16 v21, 0x0

    .line 215
    .local v21, "vif":Lcom/taobao/weex/el/parse/Token;
    const/16 v20, 0x0

    .line 216
    .local v20, "vfor":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v23, "[[match]]"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/taobao/weex/el/parse/Token;

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 217
    const-string/jumbo v23, "[[match]]"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    .end local v21    # "vif":Lcom/taobao/weex/el/parse/Token;
    check-cast v21, Lcom/taobao/weex/el/parse/Token;

    .line 219
    .restart local v21    # "vif":Lcom/taobao/weex/el/parse/Token;
    :cond_0
    const-string/jumbo v23, "[[repeat]]"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/alibaba/fastjson/JSONObject;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    .line 220
    const-string/jumbo v23, "[[repeat]]"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/dom/binding/WXStatement;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    .end local v20    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    check-cast v20, Lcom/alibaba/fastjson/JSONObject;

    .line 223
    .restart local v20    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    if-eqz v20, :cond_13

    .line 224
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v14

    .line 225
    .local v14, "renderIndex":I
    const-string/jumbo v23, "@expression"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Lcom/taobao/weex/el/parse/Token;

    move/from16 v23, v0

    if-eqz v23, :cond_10

    .line 226
    const-string/jumbo v23, "@expression"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/taobao/weex/el/parse/Token;

    .line 227
    .local v10, "listBlock":Lcom/taobao/weex/el/parse/Token;
    const-string/jumbo v23, "@index"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "indexKey":Ljava/lang/String;
    const-string/jumbo v23, "@alias"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 229
    .local v8, "itemKey":Ljava/lang/String;
    const/4 v4, 0x0

    .line 230
    .local v4, "data":Ljava/lang/Object;
    if-eqz v10, :cond_2

    .line 231
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 233
    .end local v4    # "data":Ljava/lang/Object;
    :cond_2
    instance-of v0, v4, Ljava/util/List;

    move/from16 v23, v0

    if-nez v23, :cond_3

    instance-of v0, v4, Ljava/util/Map;

    move/from16 v23, v0

    if-eqz v23, :cond_11

    .line 236
    :cond_3
    const/4 v12, 0x0

    .line 237
    .local v12, "map":Ljava/util/Map;
    instance-of v0, v4, Ljava/util/List;

    move/from16 v23, v0

    if-eqz v23, :cond_d

    move-object v3, v4

    .line 238
    check-cast v3, Ljava/util/List;

    .line 243
    .local v3, "collection":Ljava/util/Collection;
    :goto_0
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 244
    .local v11, "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v5, 0x0

    .line 245
    .local v5, "index":I
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_4
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_11

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 248
    .local v7, "item":Ljava/lang/Object;
    if-nez v12, :cond_e

    .line 249
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 250
    .local v9, "key":Ljava/lang/Integer;
    move-object/from16 v19, v7

    .line 251
    .local v19, "value":Ljava/lang/Object;
    add-int/lit8 v5, v5, 0x1

    .line 256
    .end local v9    # "key":Ljava/lang/Integer;
    :goto_2
    if-eqz v6, :cond_5

    .line 257
    invoke-interface {v11, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_5
    if-eqz v8, :cond_f

    .line 261
    move-object/from16 v0, v19

    invoke-interface {v11, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    :goto_3
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_6

    .line 266
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 270
    :cond_6
    if-eqz v21, :cond_7

    .line 271
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 276
    :cond_7
    const/4 v15, 0x0

    .line 277
    .local v15, "renderNode":Lcom/taobao/weex/ui/component/WXComponent;
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v24

    move/from16 v0, v24

    if-ge v14, v0, :cond_9

    .line 278
    invoke-virtual {v13, v14}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v15

    .line 280
    move-object/from16 v0, p0

    invoke-static {v15, v0}, Lcom/taobao/weex/ui/component/binding/Statements;->isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v24

    if-nez v24, :cond_8

    .line 281
    const/4 v15, 0x0

    .line 283
    :cond_8
    if-eqz v15, :cond_9

    .line 284
    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->isWaste()Z

    move-result v24

    if-eqz v24, :cond_9

    .line 285
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 290
    :cond_9
    if-nez v15, :cond_b

    .line 291
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 292
    .local v16, "start":J
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/taobao/weex/ui/component/binding/Statements;->copyComponentTree(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v15

    .line 293
    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v15, v0}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 294
    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v24

    if-eqz v24, :cond_a

    .line 295
    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v24

    const-string/jumbo v25, "[[repeat]]"

    invoke-virtual/range {v24 .. v25}, Lcom/taobao/weex/dom/binding/WXStatement;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/weex/dom/WXAttr;->getStatement()Lcom/taobao/weex/dom/binding/WXStatement;

    move-result-object v24

    const-string/jumbo v25, "[[match]]"

    invoke-virtual/range {v24 .. v25}, Lcom/taobao/weex/dom/binding/WXStatement;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    :cond_a
    invoke-virtual {v13, v15, v14}, Lcom/taobao/weex/ui/component/WXVContainer;->addChild(Lcom/taobao/weex/ui/component/WXComponent;I)V

    .line 299
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXVContainer;->getRenderObjectPtr()J

    move-result-wide v24

    .line 300
    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v26

    .line 299
    invoke-static/range {v24 .. v27}, Lcom/taobao/weex/ui/component/list/template/jni/NativeRenderObjectUtils;->nativeAddChildRenderObject(JJ)V

    .line 301
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v24

    if-eqz v24, :cond_b

    .line 303
    const-string/jumbo v24, "WXRecyclerTemplateList"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v15}, Lcom/taobao/weex/ui/component/WXComponent;->getComponentType()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, "statements copy component tree used "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    sub-long v26, v26, v16

    invoke-virtual/range {v25 .. v27}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Lcom/taobao/weex/utils/WXLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v16    # "start":J
    :cond_b
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V

    .line 307
    add-int/lit8 v14, v14, 0x1

    .line 308
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v24

    if-lez v24, :cond_c

    .line 309
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    .line 311
    :cond_c
    if-nez v8, :cond_4

    .line 312
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/taobao/weex/el/parse/ArrayStack;->pop()Ljava/lang/Object;

    goto/16 :goto_1

    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    .end local v7    # "item":Ljava/lang/Object;
    .end local v11    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "renderNode":Lcom/taobao/weex/ui/component/WXComponent;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_d
    move-object v12, v4

    .line 240
    check-cast v12, Ljava/util/Map;

    .line 241
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .restart local v3    # "collection":Ljava/util/Collection;
    goto/16 :goto_0

    .line 253
    .restart local v5    # "index":I
    .restart local v7    # "item":Ljava/lang/Object;
    .restart local v11    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_e
    move-object v9, v7

    .line 254
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {v12, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .restart local v19    # "value":Ljava/lang/Object;
    goto/16 :goto_2

    .line 263
    .end local v9    # "key":Ljava/lang/Object;
    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/ArrayStack;->push(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 317
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    .end local v6    # "indexKey":Ljava/lang/String;
    .end local v7    # "item":Ljava/lang/Object;
    .end local v8    # "itemKey":Ljava/lang/String;
    .end local v10    # "listBlock":Lcom/taobao/weex/el/parse/Token;
    .end local v11    # "loop":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12    # "map":Ljava/util/Map;
    .end local v19    # "value":Ljava/lang/Object;
    :cond_10
    const-string/jumbo v23, "WXRecyclerTemplateList"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, " not call vfor block, for pre compile"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_11
    :goto_4
    invoke-virtual {v13}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v23

    move/from16 v0, v23

    if-ge v14, v0, :cond_12

    .line 321
    invoke-virtual {v13, v14}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v22

    .line 322
    .local v22, "wasteNode":Lcom/taobao/weex/ui/component/WXComponent;
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/taobao/weex/ui/component/binding/Statements;->isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z

    move-result v23

    if-eqz v23, :cond_12

    .line 325
    const/16 v23, 0x1

    invoke-virtual/range {v22 .. v23}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 320
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 327
    .end local v22    # "wasteNode":Lcom/taobao/weex/ui/component/WXComponent;
    :cond_12
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v23

    sub-int v23, v14, v23

    .line 342
    .end local v14    # "renderIndex":I
    .end local v20    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "vif":Lcom/taobao/weex/el/parse/Token;
    :goto_5
    return v23

    .line 331
    .restart local v20    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .restart local v21    # "vif":Lcom/taobao/weex/el/parse/Token;
    :cond_13
    if-eqz v21, :cond_15

    .line 332
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/taobao/weex/ui/component/list/template/CellRenderContext;->stack:Lcom/taobao/weex/el/parse/ArrayStack;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/taobao/weex/el/parse/Operators;->isTrue(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_14

    .line 333
    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 334
    const/16 v23, 0x1

    goto :goto_5

    .line 336
    :cond_14
    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->setWaste(Z)V

    .line 341
    .end local v20    # "vfor":Lcom/alibaba/fastjson/JSONObject;
    .end local v21    # "vif":Lcom/taobao/weex/el/parse/Token;
    :cond_15
    invoke-static/range {p0 .. p2}, Lcom/taobao/weex/ui/component/binding/Statements;->doBindingAttrsEventAndRenderChildNode(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/list/template/CellRenderContext;Ljava/util/List;)V

    .line 342
    const/16 v23, 0x1

    goto :goto_5
.end method

.method public static getBindingEventArgs(Lcom/taobao/weex/el/parse/ArrayStack;Ljava/lang/Object;)Ljava/util/List;
    .locals 9
    .param p0, "stack"    # Lcom/taobao/weex/el/parse/ArrayStack;
    .param p1, "bindings"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    new-instance v5, Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 638
    .local v5, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v7, :cond_1

    move-object v0, p1

    .line 639
    check-cast v0, Lcom/alibaba/fastjson/JSONArray;

    .line 640
    .local v0, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 641
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    .line 642
    .local v6, "value":Ljava/lang/Object;
    instance-of v7, v6, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_0

    move-object v7, v6

    check-cast v7, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v8, "@binding"

    .line 643
    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/taobao/weex/el/parse/Token;

    if-eqz v7, :cond_0

    .line 644
    check-cast v6, Lcom/alibaba/fastjson/JSONObject;

    .end local v6    # "value":Ljava/lang/Object;
    const-string/jumbo v7, "@binding"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/taobao/weex/el/parse/Token;

    move-object v2, v7

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 645
    .local v2, "block":Lcom/taobao/weex/el/parse/Token;
    invoke-virtual {v2, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 646
    .local v3, "blockValue":Ljava/lang/Object;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v2    # "block":Lcom/taobao/weex/el/parse/Token;
    .end local v3    # "blockValue":Ljava/lang/Object;
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 648
    .restart local v6    # "value":Ljava/lang/Object;
    :cond_0
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 651
    .end local v0    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v4    # "i":I
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v7, p1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v7, :cond_4

    move-object v1, p1

    .line 652
    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 653
    .local v1, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "@binding"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lcom/taobao/weex/el/parse/Token;

    if-eqz v7, :cond_3

    .line 654
    const-string/jumbo v7, "@binding"

    invoke-virtual {v1, v7}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/taobao/weex/el/parse/Token;

    .line 655
    .restart local v2    # "block":Lcom/taobao/weex/el/parse/Token;
    invoke-virtual {v2, p0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 656
    .restart local v3    # "blockValue":Ljava/lang/Object;
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    .end local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "block":Lcom/taobao/weex/el/parse/Token;
    .end local v3    # "blockValue":Ljava/lang/Object;
    :cond_2
    :goto_2
    return-object v5

    .line 658
    .restart local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 661
    .end local v1    # "binding":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static getComponentId(Lcom/taobao/weex/ui/component/WXComponent;)Ljava/lang/String;
    .locals 5
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    const/4 v2, 0x0

    .line 674
    :goto_0
    instance-of v3, p0, Lcom/taobao/weex/ui/component/list/WXCell;

    if-nez v3, :cond_0

    if-nez p0, :cond_1

    .line 686
    :cond_0
    :goto_1
    return-object v2

    .line 677
    :cond_1
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v0

    .line 678
    .local v0, "attr":Lcom/taobao/weex/dom/WXAttr;
    const-string/jumbo v3, "@isComponentRoot"

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "@isComponentRoot"

    .line 679
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/taobao/weex/utils/WXUtils;->getBoolean(Ljava/lang/Object;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 680
    const-string/jumbo v3, "@componentProps"

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "@componentProps"

    .line 681
    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_2

    .line 682
    const-string/jumbo v3, "@virtualComponentId"

    invoke-virtual {v0, v3}, Lcom/taobao/weex/dom/WXAttr;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 683
    .local v1, "componentId":Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 686
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 689
    .end local v1    # "componentId":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getParent()Lcom/taobao/weex/ui/component/WXVContainer;

    move-result-object p0

    goto :goto_0
.end method

.method public static initLazyComponent(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXVContainer;)V
    .locals 2
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "mParent"    # Lcom/taobao/weex/ui/component/WXVContainer;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->isLazy()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    .line 101
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/taobao/weex/ui/component/WXComponent;->lazy(Z)V

    .line 102
    if-eqz p1, :cond_2

    .line 103
    invoke-virtual {p1, p0}, Lcom/taobao/weex/ui/component/WXVContainer;->indexOf(Lcom/taobao/weex/ui/component/WXComponent;)I

    move-result v0

    .line 104
    .local v0, "index":I
    invoke-virtual {p1, v0}, Lcom/taobao/weex/ui/component/WXVContainer;->createChildViewAt(I)V

    .line 108
    .end local v0    # "index":I
    :goto_0
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->applyLayoutAndEvent(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 109
    invoke-virtual {p0, p0}, Lcom/taobao/weex/ui/component/WXComponent;->bindData(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 111
    :cond_1
    return-void

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->createView()V

    goto :goto_0
.end method

.method private static isCreateFromNodeStatement(Lcom/taobao/weex/ui/component/WXComponent;Lcom/taobao/weex/ui/component/WXComponent;)Z
    .locals 2
    .param p0, "renderNode"    # Lcom/taobao/weex/ui/component/WXComponent;
    .param p1, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/taobao/weex/ui/component/WXComponent;->getRef()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMainThread()Z
    .locals 2

    .prologue
    .line 668
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V
    .locals 8
    .param p0, "component"    # Lcom/taobao/weex/ui/component/WXComponent;

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/ui/action/BasicComponentData;->isRenderPtrEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v4

    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getRenderObjectPtr()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/taobao/weex/ui/action/BasicComponentData;->setRenderObjectPr(J)V

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 79
    invoke-virtual {p0}, Lcom/taobao/weex/ui/component/WXComponent;->getBasicComponentData()Lcom/taobao/weex/ui/action/BasicComponentData;

    move-result-object v0

    .line 80
    .local v0, "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getAttrs()Lcom/taobao/weex/dom/WXAttr;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXAttr;->parseStatements()V

    .line 81
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getStyles()Lcom/taobao/weex/dom/WXStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXStyle;->parseStatements()V

    .line 82
    invoke-virtual {v0}, Lcom/taobao/weex/ui/action/BasicComponentData;->getEvents()Lcom/taobao/weex/dom/WXEvent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/weex/dom/WXEvent;->parseStatements()V

    .line 84
    .end local v0    # "basicComponentData":Lcom/taobao/weex/ui/action/BasicComponentData;
    :cond_1
    instance-of v4, p0, Lcom/taobao/weex/ui/component/WXVContainer;

    if-eqz v4, :cond_2

    move-object v1, p0

    .line 85
    check-cast v1, Lcom/taobao/weex/ui/component/WXVContainer;

    .line 86
    .local v1, "container":Lcom/taobao/weex/ui/component/WXVContainer;
    invoke-virtual {v1}, Lcom/taobao/weex/ui/component/WXVContainer;->getChildCount()I

    move-result v2

    .line 87
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 88
    invoke-virtual {v1, v3}, Lcom/taobao/weex/ui/component/WXVContainer;->getChild(I)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v4

    invoke-static {v4}, Lcom/taobao/weex/ui/component/binding/Statements;->parseStatementsToken(Lcom/taobao/weex/ui/component/WXComponent;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "container":Lcom/taobao/weex/ui/component/WXVContainer;
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public static renderBindingAttrs(Lfk;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;
    .locals 18
    .param p0, "bindAttrs"    # Lfk;
    .param p1, "stack"    # Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfk;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    invoke-virtual/range {p0 .. p0}, Lfk;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 567
    .local v10, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    sget-object v14, Lcom/taobao/weex/ui/component/binding/Statements;->dynamicLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v14}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 568
    .local v7, "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v7, :cond_0

    .line 569
    new-instance v7, Ljava/util/HashMap;

    .end local v7    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 570
    .restart local v7    # "dynamic":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v14, Lcom/taobao/weex/ui/component/binding/Statements;->dynamicLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v14, v7}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 572
    :cond_0
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v14

    if-lez v14, :cond_1

    .line 573
    invoke-interface {v7}, Ljava/util/Map;->clear()V

    .line 575
    :cond_1
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 576
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    .line 577
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 578
    .local v12, "key":Ljava/lang/String;
    instance-of v14, v13, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v14, :cond_3

    move-object v14, v13

    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v16, "@binding"

    .line 579
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/taobao/weex/el/parse/Token;

    if-eqz v14, :cond_3

    move-object v2, v13

    .line 580
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 581
    .local v2, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "@binding"

    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/el/parse/Token;

    move-object v3, v14

    check-cast v3, Lcom/taobao/weex/el/parse/Token;

    .line 582
    .local v3, "block":Lcom/taobao/weex/el/parse/Token;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 583
    .local v4, "blockValue":Ljava/lang/Object;
    invoke-interface {v7, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 584
    .end local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "block":Lcom/taobao/weex/el/parse/Token;
    .end local v4    # "blockValue":Ljava/lang/Object;
    :cond_3
    instance-of v14, v13, Lcom/alibaba/fastjson/JSONArray;

    if-eqz v14, :cond_2

    move-object v1, v13

    .line 585
    check-cast v1, Lcom/alibaba/fastjson/JSONArray;

    .line 586
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 587
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v14

    if-ge v11, v14, :cond_7

    .line 588
    invoke-virtual {v1, v11}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 589
    .local v8, "element":Ljava/lang/Object;
    instance-of v14, v8, Ljava/lang/CharSequence;

    if-eqz v14, :cond_5

    .line 590
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 587
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 593
    :cond_5
    instance-of v14, v8, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v14, :cond_4

    move-object v14, v8

    check-cast v14, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v16, "@binding"

    .line 594
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/taobao/weex/el/parse/Token;

    if-eqz v14, :cond_4

    move-object v2, v8

    .line 595
    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 596
    .restart local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "@binding"

    invoke-virtual {v2, v14}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/taobao/weex/el/parse/Token;

    move-object v3, v14

    check-cast v3, Lcom/taobao/weex/el/parse/Token;

    .line 597
    .restart local v3    # "block":Lcom/taobao/weex/el/parse/Token;
    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 598
    .restart local v4    # "blockValue":Ljava/lang/Object;
    if-nez v4, :cond_6

    .line 599
    const-string/jumbo v4, ""

    .line 601
    .end local v4    # "blockValue":Ljava/lang/Object;
    :cond_6
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 604
    .end local v2    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v3    # "block":Lcom/taobao/weex/el/parse/Token;
    .end local v8    # "element":Ljava/lang/Object;
    :cond_7
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 605
    .local v6, "builderString":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v16, 0x100

    move/from16 v0, v16

    if-le v14, v0, :cond_8

    .line 606
    invoke-static {}, Lcom/taobao/weex/WXEnvironment;->isApkDebugable()Z

    move-result v14

    if-eqz v14, :cond_8

    .line 607
    const-string/jumbo v14, "WXRecyclerTemplateList"

    new-instance v16, Ljava/lang/StringBuilder;

    const-string/jumbo v17, " warn too big string "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v14, v0}, Lcom/taobao/weex/utils/WXLogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    :cond_8
    invoke-interface {v7, v12, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 613
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "builder":Ljava/lang/StringBuilder;
    .end local v6    # "builderString":Ljava/lang/String;
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "i":I
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_9
    return-object v7
.end method

.method public static renderProps(Lcom/alibaba/fastjson/JSONObject;Lcom/taobao/weex/el/parse/ArrayStack;)Ljava/util/Map;
    .locals 11
    .param p0, "props"    # Lcom/alibaba/fastjson/JSONObject;
    .param p1, "stack"    # Lcom/taobao/weex/el/parse/ArrayStack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/JSONObject;",
            "Lcom/taobao/weex/el/parse/ArrayStack;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 619
    .local v4, "entrySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v6, Lfk;

    const/4 v8, 0x4

    invoke-direct {v6, v8}, Lfk;-><init>(I)V

    .line 620
    .local v6, "renderProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 621
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 622
    .local v7, "value":Ljava/lang/Object;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 623
    .local v5, "key":Ljava/lang/String;
    instance-of v8, v7, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v8, :cond_0

    move-object v8, v7

    check-cast v8, Lcom/alibaba/fastjson/JSONObject;

    const-string/jumbo v10, "@binding"

    .line 624
    invoke-virtual {v8, v10}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/taobao/weex/el/parse/Token;

    if-eqz v8, :cond_0

    move-object v0, v7

    .line 625
    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    .line 626
    .local v0, "binding":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v8, "@binding"

    invoke-virtual {v0, v8}, Lcom/alibaba/fastjson/JSONObject;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/taobao/weex/el/parse/Token;

    move-object v1, v8

    check-cast v1, Lcom/taobao/weex/el/parse/Token;

    .line 627
    .local v1, "block":Lcom/taobao/weex/el/parse/Token;
    invoke-virtual {v1, p1}, Lcom/taobao/weex/el/parse/Token;->execute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 628
    .local v2, "blockValue":Ljava/lang/Object;
    invoke-interface {v6, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 630
    .end local v0    # "binding":Lcom/alibaba/fastjson/JSONObject;
    .end local v1    # "block":Lcom/taobao/weex/el/parse/Token;
    .end local v2    # "blockValue":Ljava/lang/Object;
    :cond_0
    invoke-interface {v6, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 633
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_1
    return-object v6
.end method
