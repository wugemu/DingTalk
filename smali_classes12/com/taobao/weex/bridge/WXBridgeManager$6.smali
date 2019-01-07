.class Lcom/taobao/weex/bridge/WXBridgeManager$6;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->asyncCallJSEventVoidResult(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$instanceId:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/taobao/weex/bridge/WXBridgeManager;[Ljava/lang/Object;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/bridge/WXBridgeManager;

    .prologue
    .line 823
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$args:[Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$args:[Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 831
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 832
    .local v7, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$args:[Ljava/lang/Object;

    array-length v2, v1

    :goto_1
    if-ge v0, v2, :cond_2

    aget-object v6, v1, v0

    .line 833
    .local v6, "arg":Ljava/lang/Object;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 832
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 835
    .end local v6    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$params:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 836
    new-instance v9, Lfk;

    const/4 v0, 0x4

    invoke-direct {v9, v0}, Lfk;-><init>(I)V

    .line 837
    .local v9, "map":Lfk;
    const-string/jumbo v0, "params"

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$params:Ljava/util/List;

    invoke-virtual {v9, v0, v1}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 838
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 841
    .end local v9    # "map":Lfk;
    :cond_3
    new-instance v10, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v10}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 842
    .local v10, "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "method"

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$method:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    const-string/jumbo v0, "args"

    invoke-virtual {v10, v0, v7}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 844
    const/4 v0, 0x1

    new-array v11, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object v10, v11, v0

    .line 845
    .local v11, "tasks":[Ljava/lang/Object;
    const/4 v0, 0x2

    new-array v4, v0, [Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v0, 0x0

    new-instance v1, Lcom/taobao/weex/bridge/WXJSObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$instanceId:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/taobao/weex/bridge/WXJSObject;-><init>(ILjava/lang/Object;)V

    aput-object v1, v4, v0

    const/4 v0, 0x1

    .line 847
    invoke-static {v11}, Lcom/taobao/weex/utils/WXWsonJSONSwitch;->toWsonOrJsonWXJSObject(Ljava/lang/Object;)Lcom/taobao/weex/bridge/WXJSObject;

    move-result-object v1

    aput-object v1, v4, v0

    .line 848
    .local v4, "jsArgs":[Lcom/taobao/weex/bridge/WXJSObject;
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$6;->val$instanceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string/jumbo v3, "callJS"

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->invokeExecJS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Lcom/taobao/weex/bridge/WXJSObject;Z)V

    .line 849
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-object v1, v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 851
    .end local v4    # "jsArgs":[Lcom/taobao/weex/bridge/WXJSObject;
    .end local v7    # "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v10    # "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "tasks":[Ljava/lang/Object;
    :catch_0
    move-exception v8

    .line 852
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "asyncCallJSEventVoidResult"

    invoke-static {v0, v8}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
