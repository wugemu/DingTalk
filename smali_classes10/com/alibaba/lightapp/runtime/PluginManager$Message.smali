.class public Lcom/alibaba/lightapp/runtime/PluginManager$Message;
.super Lcom/alibaba/lightapp/runtime/Plugin;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/lightapp/runtime/PluginManager;


# direct methods
.method public constructor <init>(Lcom/alibaba/lightapp/runtime/PluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/PluginManager;

    .prologue
    .line 961
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Plugin;-><init>()V

    return-void
.end method


# virtual methods
.method public _consume(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 8
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 1020
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v3}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 1021
    iget-object v3, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v4, "mid"

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1022
    .local v0, "mid":J
    cmp-long v3, v0, v6

    if-nez v3, :cond_0

    .line 1023
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x2

    const-string/jumbo v6, "invalid args"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 1030
    .end local v0    # "mid":J
    :goto_0
    return-object v3

    .line 1025
    .restart local v0    # "mid":J
    :cond_0
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v3, v3, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v3}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v2

    .line 1026
    .local v2, "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    invoke-interface {v2, v0, v1}, Lcom/alibaba/lightapp/runtime/INuvaContext;->consumeMessage(J)V

    .line 1027
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v3, v4}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    goto :goto_0

    .line 1029
    .end local v0    # "mid":J
    .end local v2    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    :cond_1
    new-instance v3, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v4, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v5, 0x3

    const-string/jumbo v6, "app view or nuva context is null"

    .line 1030
    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public _register(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1036
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v1}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1037
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v1, v1, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v1}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v0

    .line 1038
    .local v0, "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    invoke-interface {v0}, Lcom/alibaba/lightapp/runtime/INuvaContext;->triggerMessage()V

    .line 1040
    .end local v0    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    return-object v1
.end method

.method public fetch(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x3

    .line 997
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v5}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 999
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v5, v5, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v5}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v2

    .line 1000
    .local v2, "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    invoke-interface {v2}, Lcom/alibaba/lightapp/runtime/INuvaContext;->getCurrentNavId()Ljava/lang/String;

    move-result-object v4

    .line 1001
    .local v4, "target":Ljava/lang/String;
    invoke-interface {v2, v4}, Lcom/alibaba/lightapp/runtime/INuvaContext;->fetchMessage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 1002
    .local v1, "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    if-eqz v1, :cond_1

    .line 1003
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1004
    .local v3, "result":Lorg/json/JSONArray;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhdi$b;

    .line 1005
    .local v0, "message":Lhdi$b;
    invoke-virtual {v0}, Lhdi$b;->c()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1007
    .end local v0    # "message":Lhdi$b;
    :cond_0
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONArray;)V

    .line 1014
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    .end local v2    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    .end local v3    # "result":Lorg/json/JSONArray;
    .end local v4    # "target":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 1009
    .restart local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    .restart local v2    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    .restart local v4    # "target":Ljava/lang/String;
    :cond_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "cannot fetch message from id: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1010
    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 1013
    .end local v1    # "messages":Ljava/util/List;, "Ljava/util/List<Lhdi$b;>;"
    .end local v2    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    .end local v4    # "target":Ljava/lang/String;
    :cond_2
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "app view or nuva context is null"

    .line 1014
    invoke-static {v9, v7}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1
.end method

.method public post(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 13
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 966
    :try_start_0
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v9}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 967
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "to"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 968
    .local v8, "to":Lorg/json/JSONArray;
    iget-object v9, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v10, "content"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 970
    .local v0, "content":Lorg/json/JSONObject;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 971
    .local v6, "receiverList":Ljava/util/List;
    if-eqz v8, :cond_0

    .line 972
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v7

    .line 973
    .local v7, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v7, :cond_0

    .line 975
    :try_start_1
    invoke-virtual {v8, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 973
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 976
    :catch_0
    move-exception v1

    .line 977
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 988
    .end local v0    # "content":Lorg/json/JSONObject;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    .end local v3    # "i":I
    .end local v6    # "receiverList":Ljava/util/List;
    .end local v7    # "size":I
    .end local v8    # "to":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 989
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 990
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v11, 0x2

    const-string/jumbo v12, "invalid args"

    .line 991
    invoke-static {v11, v12}, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v9

    .line 982
    .restart local v0    # "content":Lorg/json/JSONObject;
    .restart local v6    # "receiverList":Ljava/util/List;
    .restart local v8    # "to":Lorg/json/JSONArray;
    :cond_0
    :try_start_3
    iget-object v9, p0, Lcom/alibaba/lightapp/runtime/PluginManager$Message;->a:Lcom/alibaba/lightapp/runtime/PluginManager;

    iget-object v9, v9, Lcom/alibaba/lightapp/runtime/PluginManager;->b:Lhde;

    invoke-interface {v9}, Lhde;->getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;

    move-result-object v5

    .line 983
    .local v5, "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    invoke-interface {v5}, Lcom/alibaba/lightapp/runtime/INuvaContext;->getCurrentNavId()Ljava/lang/String;

    move-result-object v2

    .line 984
    .local v2, "from":Ljava/lang/String;
    invoke-static {v2, v0}, Lhdi$b;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lhdi$b;

    move-result-object v4

    .line 985
    .local v4, "m":Lhdi$b;
    invoke-interface {v5, v6, v4}, Lcom/alibaba/lightapp/runtime/INuvaContext;->postMessage(Ljava/util/List;Lhdi$b;)V

    .line 987
    .end local v0    # "content":Lorg/json/JSONObject;
    .end local v2    # "from":Ljava/lang/String;
    .end local v4    # "m":Lhdi$b;
    .end local v5    # "nuvaContext":Lcom/alibaba/lightapp/runtime/INuvaContext;
    .end local v6    # "receiverList":Ljava/util/List;
    .end local v8    # "to":Lorg/json/JSONArray;
    :cond_1
    new-instance v9, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v10, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v9, v10}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
