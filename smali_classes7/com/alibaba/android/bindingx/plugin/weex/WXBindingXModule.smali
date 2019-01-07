.class public Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXBindingXModule.java"


# instance fields
.field private mBindingXCore:Lanu;

.field private mPlatformManager:Laoa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method constructor <init>(Lanu;)V
    .locals 0
    .param p1, "core"    # Lanu;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)Lanu;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    return-object v0
.end method

.method static synthetic access$002(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lanu;)Lanu;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;
    .param p1, "x1"    # Lanu;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    return-object p1
.end method

.method static createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Laoa;
    .locals 4
    .param p0, "instance"    # Lcom/taobao/weex/WXSDKInstance;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 265
    if-nez p0, :cond_0

    const/16 v0, 0x2ee

    .line 267
    .local v0, "viewPort":I
    :goto_0
    new-instance v1, Laoa$a;

    invoke-direct {v1}, Laoa$a;-><init>()V

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;

    invoke-direct {v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$6;-><init>()V

    .line 2119
    iput-object v2, v1, Laoa$a;->b:Laoa$c;

    .line 268
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;

    invoke-direct {v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$5;-><init>()V

    .line 2124
    iput-object v2, v1, Laoa$a;->c:Laoa$d;

    .line 279
    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;

    invoke-direct {v2, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$4;-><init>(I)V

    .line 3114
    iput-object v2, v1, Laoa$a;->a:Laoa$b;

    .line 4106
    new-instance v2, Laoa;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Laoa;-><init>(B)V

    .line 4107
    iget-object v3, v1, Laoa$a;->b:Laoa$c;

    .line 5032
    iput-object v3, v2, Laoa;->b:Laoa$c;

    .line 4108
    iget-object v3, v1, Laoa$a;->a:Laoa$b;

    .line 6032
    iput-object v3, v2, Laoa;->a:Laoa$b;

    .line 4109
    iget-object v1, v1, Laoa$a;->c:Laoa$d;

    .line 7032
    iput-object v1, v2, Laoa;->c:Laoa$d;

    .line 322
    return-object v2

    .line 265
    .end local v0    # "viewPort":I
    :cond_0
    invoke-virtual {p0}, Lcom/taobao/weex/WXSDKInstance;->getInstanceViewPortWidth()I

    move-result v0

    goto :goto_0
.end method

.method private prepareInternal()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Laoa;

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Laoa;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Laoa;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Lanu;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Laoa;

    invoke-direct {v0, v1}, Lanu;-><init>(Laoa;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    .line 84
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    const-string/jumbo v1, "scroll"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    invoke-virtual {v0, v1, v2}, Lanu;->a(Ljava/lang/String;Lanu$b;)V

    .line 92
    :cond_1
    return-void
.end method


# virtual methods
.method public bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;
    .locals 6
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 102
    iget-object v4, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v2, :cond_1

    move-object v2, v3

    .line 103
    :goto_0
    iget-object v5, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v5, :cond_2

    .line 104
    :goto_1
    if-nez p1, :cond_0

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    .end local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    new-instance v5, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;

    invoke-direct {v5, p0, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;Lcom/taobao/weex/bridge/JSCallback;)V

    .line 102
    invoke-virtual {v4, v2, v3, p1, v5}, Lanu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Lanu$a;)Ljava/lang/String;

    move-result-object v1

    .line 114
    .local v1, "token":Ljava/lang/String;
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 115
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "token"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-object v0

    .line 102
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "token":Ljava/lang/String;
    .restart local p1    # "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 103
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 104
    invoke-virtual {v3}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public bindAsync(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
    .param p3, "tokenCallback"    # Lcom/taobao/weex/bridge/JSCallback;
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->bind(Ljava/util/Map;Lcom/taobao/weex/bridge/JSCallback;)Ljava/util/Map;

    move-result-object v0

    .line 122
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {p3, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 125
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 251
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$3;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 261
    return-void
.end method

.method public getComputedStyle(Ljava/lang/String;)Ljava/util/Map;
    .locals 37
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct/range {p0 .. p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mPlatformManager:Laoa;

    move-object/from16 v27, v0

    .line 2043
    move-object/from16 v0, v27

    iget-object v0, v0, Laoa;->a:Laoa$b;

    move-object/from16 v22, v0

    .line 159
    .local v22, "resolutionTranslator":Laoa$b;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/alibaba/android/bindingx/plugin/weex/WXModuleUtils;->findComponentByRef(Ljava/lang/String;Ljava/lang/String;)Lcom/taobao/weex/ui/component/WXComponent;

    move-result-object v11

    .line 160
    .local v11, "component":Lcom/taobao/weex/ui/component/WXComponent;
    if-nez v11, :cond_1

    .line 161
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v20

    .line 246
    :cond_0
    :goto_0
    return-object v20

    .line 163
    :cond_1
    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getHostView()Landroid/view/View;

    move-result-object v25

    .line 164
    .local v25, "sourceView":Landroid/view/View;
    if-nez v25, :cond_2

    .line 165
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v20

    goto :goto_0

    .line 168
    :cond_2
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v20, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v27, "width"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutWidth()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string/jumbo v27, "height"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getLayoutHeight()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string/jumbo v27, "padding-left"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string/jumbo v27, "padding-top"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string/jumbo v27, "padding-right"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string/jumbo v27, "padding-bottom"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getPadding()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string/jumbo v27, "margin-left"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->LEFT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v27, "margin-top"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->TOP:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string/jumbo v27, "margin-right"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->RIGHT:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string/jumbo v27, "margin-bottom"

    invoke-virtual {v11}, Lcom/taobao/weex/ui/component/WXComponent;->getMargin()Lcom/taobao/weex/dom/CSSShorthand;

    move-result-object v32

    sget-object v33, Lcom/taobao/weex/dom/CSSShorthand$EDGE;->BOTTOM:Lcom/taobao/weex/dom/CSSShorthand$EDGE;

    invoke-virtual/range {v32 .. v33}, Lcom/taobao/weex/dom/CSSShorthand;->get(Lcom/taobao/weex/dom/CSSShorthand$EDGE;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string/jumbo v27, "translateX"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationX()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string/jumbo v27, "translateY"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getTranslationY()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    const/16 v34, 0x0

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v32

    move-object/from16 v3, v34

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string/jumbo v27, "rotateX"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRotationX()F

    move-result v32

    invoke-static/range {v32 .. v32}, Laou;->a(F)F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string/jumbo v27, "rotateY"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRotationY()F

    move-result v32

    invoke-static/range {v32 .. v32}, Laou;->a(F)F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string/jumbo v27, "rotateZ"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getRotation()F

    move-result v32

    invoke-static/range {v32 .. v32}, Laou;->a(F)F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string/jumbo v27, "scaleX"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getScaleX()F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string/jumbo v27, "scaleY"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getScaleY()F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string/jumbo v27, "opacity"

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getAlpha()F

    move-result v32

    invoke-static/range {v32 .. v32}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    .line 196
    .local v16, "drawable":Landroid/graphics/drawable/Drawable;
    const-wide/16 v28, 0x0

    .local v28, "topLeft":D
    const-wide/16 v30, 0x0

    .local v30, "topRight":D
    const-wide/16 v12, 0x0

    .local v12, "bottomLeft":D
    const-wide/16 v14, 0x0

    .line 197
    .local v14, "bottomRight":D
    if-eqz v16, :cond_3

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v10, v16

    .line 198
    check-cast v10, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    .line 199
    .local v10, "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    new-instance v27, Landroid/graphics/RectF;

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v34

    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v34, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v35

    move/from16 v0, v35

    int-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v35

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getBorderRadius(Landroid/graphics/RectF;)[F

    move-result-object v23

    .line 200
    .local v23, "result":[F
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    const/16 v32, 0x8

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 201
    const/16 v27, 0x0

    aget v27, v23, v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v28, v0

    .line 202
    const/16 v27, 0x2

    aget v27, v23, v27

    move/from16 v0, v27

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 203
    const/16 v27, 0x6

    aget v27, v23, v27

    move/from16 v0, v27

    float-to-double v12, v0

    .line 204
    const/16 v27, 0x4

    aget v27, v23, v27

    move/from16 v0, v27

    float-to-double v14, v0

    .line 207
    .end local v10    # "borderDrawable":Lcom/taobao/weex/ui/view/border/BorderDrawable;
    .end local v23    # "result":[F
    :cond_3
    const-string/jumbo v27, "border-top-left-radius"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v28

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v27, "border-top-right-radius"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v30

    move-object/from16 v3, v32

    invoke-interface {v0, v1, v2, v3}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v27, "border-bottom-left-radius"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v12, v13, v1}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo v27, "border-bottom-right-radius"

    const/16 v32, 0x0

    move/from16 v0, v32

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v32, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    invoke-interface {v0, v14, v15, v1}, Laoa$b;->nativeToWeb(D[Ljava/lang/Object;)D

    move-result-wide v32

    invoke-static/range {v32 .. v33}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    if-eqz v27, :cond_5

    .line 213
    const/high16 v9, -0x1000000

    .line 214
    .local v9, "backgroundColor":I
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    move/from16 v27, v0

    if-eqz v27, :cond_6

    .line 215
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    .line 220
    :cond_4
    :goto_1
    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v6, v32, v34

    .line 221
    .local v6, "a":D
    invoke-static {v9}, Landroid/graphics/Color;->red(I)I

    move-result v21

    .line 222
    .local v21, "r":I
    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v18

    .line 223
    .local v18, "g":I
    invoke-static {v9}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 224
    .local v8, "b":I
    const-string/jumbo v27, "background-color"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v32

    const-string/jumbo v33, "rgba(%d,%d,%d,%f)"

    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v32 .. v34}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v6    # "a":D
    .end local v8    # "b":I
    .end local v9    # "backgroundColor":I
    .end local v18    # "g":I
    .end local v21    # "r":I
    :cond_5
    instance-of v0, v11, Lcom/taobao/weex/ui/component/WXText;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v0, v25

    instance-of v0, v0, Lcom/taobao/weex/ui/view/WXTextView;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    .line 228
    check-cast v25, Lcom/taobao/weex/ui/view/WXTextView;

    .end local v25    # "sourceView":Landroid/view/View;
    invoke-virtual/range {v25 .. v25}, Lcom/taobao/weex/ui/view/WXTextView;->getTextLayout()Landroid/text/Layout;

    move-result-object v19

    .line 229
    .local v19, "layout":Landroid/text/Layout;
    if-eqz v19, :cond_0

    .line 230
    invoke-virtual/range {v19 .. v19}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v24

    .line 231
    .local v24, "sequence":Ljava/lang/CharSequence;
    if-eqz v24, :cond_0

    move-object/from16 v0, v24

    instance-of v0, v0, Landroid/text/SpannableString;

    move/from16 v27, v0

    if-eqz v27, :cond_0

    move-object/from16 v27, v24

    .line 232
    check-cast v27, Landroid/text/SpannableString;

    const/16 v32, 0x0

    invoke-interface/range {v24 .. v24}, Ljava/lang/CharSequence;->length()I

    move-result v33

    const-class v34, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v33

    move-object/from16 v3, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v26

    check-cast v26, [Landroid/text/style/ForegroundColorSpan;

    .line 233
    .local v26, "spans":[Landroid/text/style/ForegroundColorSpan;
    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v27, v0

    const/16 v32, 0x1

    move/from16 v0, v27

    move/from16 v1, v32

    if-ne v0, v1, :cond_0

    .line 234
    const/16 v27, 0x0

    aget-object v27, v26, v27

    invoke-virtual/range {v27 .. v27}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v17

    .line 236
    .local v17, "fontColor":I
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->alpha(I)I

    move-result v27

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0x406fe00000000000L    # 255.0

    div-double v6, v32, v34

    .line 237
    .restart local v6    # "a":D
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->red(I)I

    move-result v21

    .line 238
    .restart local v21    # "r":I
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->green(I)I

    move-result v18

    .line 239
    .restart local v18    # "g":I
    invoke-static/range {v17 .. v17}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    .line 240
    .restart local v8    # "b":I
    const-string/jumbo v27, "color"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v32

    const-string/jumbo v33, "rgba(%d,%d,%d,%f)"

    const/16 v34, 0x4

    move/from16 v0, v34

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v36

    aput-object v36, v34, v35

    const/16 v35, 0x3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v36

    aput-object v36, v34, v35

    invoke-static/range {v32 .. v34}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    move-object/from16 v2, v32

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 216
    .end local v6    # "a":D
    .end local v8    # "b":I
    .end local v17    # "fontColor":I
    .end local v18    # "g":I
    .end local v19    # "layout":Landroid/text/Layout;
    .end local v21    # "r":I
    .end local v24    # "sequence":Ljava/lang/CharSequence;
    .end local v26    # "spans":[Landroid/text/style/ForegroundColorSpan;
    .restart local v9    # "backgroundColor":I
    .restart local v25    # "sourceView":Landroid/view/View;
    :cond_6
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    move-object/from16 v0, v27

    instance-of v0, v0, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    move/from16 v27, v0

    if-eqz v27, :cond_4

    .line 217
    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v27

    check-cast v27, Lcom/taobao/weex/ui/view/border/BorderDrawable;

    invoke-virtual/range {v27 .. v27}, Lcom/taobao/weex/ui/view/border/BorderDrawable;->getColor()I

    move-result v9

    goto/16 :goto_1
.end method

.method public getComputedStyleAsync(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 1
    .param p1, "ref"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->getComputedStyle(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 149
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p2, :cond_0

    .line 150
    invoke-interface {p2, v0}, Lcom/taobao/weex/bridge/JSCallback;->invoke(Ljava/lang/Object;)V

    .line 152
    :cond_0
    return-void
.end method

.method public onActivityPause()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 330
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$7;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 338
    return-void
.end method

.method public onActivityResume()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 342
    invoke-static {}, Lcom/taobao/weex/bridge/WXBridgeManager;->getInstance()Lcom/taobao/weex/bridge/WXBridgeManager;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule$8;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/taobao/weex/bridge/WXBridgeManager;->post(Ljava/lang/Runnable;Ljava/lang/Object;)V

    .line 350
    return-void
.end method

.method public prepare(Ljava/util/Map;)V
    .locals 0
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->prepareInternal()V

    .line 97
    return-void
.end method

.method public supportFeatures()Ljava/util/List;
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 143
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pan"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "orientation"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "timing"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "scroll"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public unbind(Ljava/util/Map;)V
    .locals 3
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 129
    .local p1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    .line 1121
    if-eqz p1, :cond_0

    .line 1124
    const-string/jumbo v1, "eventType"

    invoke-static {p1, v1}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1125
    const-string/jumbo v2, "token"

    invoke-static {p1, v2}, Laou;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1127
    invoke-virtual {v0, v2, v1}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void
.end method

.method public unbindAll()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->mBindingXCore:Lanu;

    invoke-virtual {v0}, Lanu;->a()V

    .line 139
    :cond_0
    return-void
.end method
