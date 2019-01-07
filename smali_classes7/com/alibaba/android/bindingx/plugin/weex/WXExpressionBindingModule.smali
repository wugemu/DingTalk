.class public final Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXExpressionBindingModule.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mExpressionBindingCore:Lanu;

.field private mPlatformManager:Laoa;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method


# virtual methods
.method public final createBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 12
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "exitExpression"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lcom/taobao/weex/bridge/JSCallback;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 72
    .local p4, "expressionArgs":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->enableBinding(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const/4 v1, 0x0

    invoke-static {v1, p3}, Laok;->a(Ljava/lang/String;Ljava/lang/String;)Laok;

    move-result-object v6

    .line 75
    .local v6, "exitExpressionPair":Laok;
    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;

    move-object/from16 v0, p5

    invoke-direct {v9, p0, v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$2;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;Lcom/taobao/weex/bridge/JSCallback;)V

    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v2, :cond_0

    const/4 v10, 0x0

    .line 91
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    if-nez v2, :cond_1

    const/4 v11, 0x0

    :goto_1
    move-object v2, p1

    move-object v4, p2

    move-object/from16 v7, p4

    .line 75
    invoke-virtual/range {v1 .. v11}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Laok;Ljava/util/List;Ljava/util/Map;Lanu$a;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    return-void

    .line 75
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 91
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v10

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 92
    invoke-virtual {v2}, Lcom/taobao/weex/WXSDKInstance;->getInstanceId()Ljava/lang/String;

    move-result-object v11

    goto :goto_1
.end method

.method public final destroy()V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    invoke-virtual {v0}, Lanu;->a()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    .line 117
    :cond_0
    return-void
.end method

.method public final disableAll()V
    .locals 1
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    invoke-virtual {v0}, Lanu;->a()V

    .line 109
    :cond_0
    return-void
.end method

.method public final disableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    invoke-virtual {v0, p1, p2}, Lanu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method public final enableBinding(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourceRef"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "eventType"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Laoa;

    if-nez v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mWXSDKInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-static {v0}, Lcom/alibaba/android/bindingx/plugin/weex/WXBindingXModule;->createPlatformManager(Lcom/taobao/weex/WXSDKInstance;)Laoa;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Laoa;

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-nez v0, :cond_1

    .line 57
    new-instance v0, Lanu;

    iget-object v1, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mPlatformManager:Laoa;

    invoke-direct {v0, v1}, Lanu;-><init>(Laoa;)V

    iput-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    const-string/jumbo v1, "scroll"

    new-instance v2, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule$1;-><init>(Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;)V

    invoke-virtual {v0, v1, v2}, Lanu;->a(Ljava/lang/String;Lanu$b;)V

    .line 66
    :cond_1
    return-void
.end method

.method public final onActivityPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    invoke-virtual {v0}, Lanu;->b()V

    .line 126
    :cond_0
    return-void
.end method

.method public final onActivityResume()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/alibaba/android/bindingx/plugin/weex/WXExpressionBindingModule;->mExpressionBindingCore:Lanu;

    invoke-virtual {v0}, Lanu;->c()V

    .line 133
    :cond_0
    return-void
.end method
