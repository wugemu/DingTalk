.class Lcom/taobao/weex/bridge/WXBridgeManager$8;
.super Ljava/lang/Object;
.source "WXBridgeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/bridge/WXBridgeManager;->addJSEventTask(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V
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
    .line 910
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    iput-object p2, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$args:[Ljava/lang/Object;

    iput-object p3, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$params:Ljava/util/List;

    iput-object p4, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$method:Ljava/lang/String;

    iput-object p5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$instanceId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 913
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$args:[Ljava/lang/Object;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$args:[Ljava/lang/Object;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 939
    :cond_0
    :goto_0
    return-void

    .line 917
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 918
    .local v1, "argsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$args:[Ljava/lang/Object;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v7, :cond_2

    aget-object v0, v6, v5

    .line 919
    .local v0, "arg":Ljava/lang/Object;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 921
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_2
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$params:Ljava/util/List;

    if-eqz v5, :cond_3

    .line 922
    new-instance v3, Lfk;

    const/4 v5, 0x4

    invoke-direct {v3, v5}, Lfk;-><init>(I)V

    .line 923
    .local v3, "map":Lfk;
    const-string/jumbo v5, "params"

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$params:Ljava/util/List;

    invoke-virtual {v3, v5, v6}, Lfk;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 924
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 927
    .end local v3    # "map":Lfk;
    :cond_3
    new-instance v4, Lcom/taobao/weex/bridge/WXHashMap;

    invoke-direct {v4}, Lcom/taobao/weex/bridge/WXHashMap;-><init>()V

    .line 928
    .local v4, "task":Lcom/taobao/weex/bridge/WXHashMap;, "Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "method"

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$method:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const-string/jumbo v5, "args"

    invoke-virtual {v4, v5, v1}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 932
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_4

    .line 933
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 934
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 935
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v5, v6, v2}, Lcom/taobao/weex/bridge/WXHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 937
    .end local v2    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/taobao/weex/bridge/WXHashMap<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    iget-object v5, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->this$0:Lcom/taobao/weex/bridge/WXBridgeManager;

    invoke-static {v5}, Lcom/taobao/weex/bridge/WXBridgeManager;->access$300(Lcom/taobao/weex/bridge/WXBridgeManager;)Lcom/taobao/weex/bridge/WXHashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/taobao/weex/bridge/WXBridgeManager$8;->val$instanceId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/taobao/weex/bridge/WXHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
