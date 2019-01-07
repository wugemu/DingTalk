.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->getUnreadSessionsByTag(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

.field final synthetic val$tag:I


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iput p2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->val$tag:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const/4 v1, 0x3

    const-string/jumbo v2, "NO_DATA"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6400(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1058
    return-void
.end method

.method public bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1017
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->onProgress(Ljava/util/List;I)V

    return-void
.end method

.method public onProgress(Ljava/util/List;I)V
    .locals 0
    .param p2, "progress"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1017
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->onSuccess(Ljava/util/List;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "listParam":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    const/4 v10, 0x3

    .line 1025
    if-nez p1, :cond_0

    .line 1026
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const-string/jumbo v6, "NO_DATA"

    invoke-static {v10, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6100(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 1053
    :goto_0
    return-void

    .line 1030
    :cond_0
    const/4 v4, 0x0

    .line 1031
    .local v4, "resultCount":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1032
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/alibaba/wukong/im/Conversation;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1033
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 1034
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_1

    .line 1035
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->tag()J

    move-result-wide v6

    iget v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->val$tag:I

    int-to-long v8, v5

    cmp-long v5, v6, v8

    if-nez v5, :cond_1

    .line 1036
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 1037
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1041
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    :cond_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1042
    .local v3, "jsonResultObject":Lorg/json/JSONObject;
    if-ltz v4, :cond_3

    .line 1044
    :try_start_0
    const-string/jumbo v5, "count"

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    :goto_2
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    iget-object v6, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6200(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0

    .line 1045
    :catch_0
    move-exception v1

    .line 1046
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 1050
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    const-string/jumbo v6, "NO_DATA"

    invoke-static {v10, v6}, Lcom/alibaba/lightapp/runtime/Plugin;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    iget-object v7, p0, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$16;->this$0:Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;

    invoke-static {v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6000(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;->access$6300(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method
