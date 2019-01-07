.class final Lenz$2$1;
.super Ljava/lang/Object;
.source "SearchMoreMiniApp.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lenz$2;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lenz$2;


# direct methods
.method constructor <init>(Lenz$2;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lenz$2;

    .prologue
    .line 117
    iput-object p1, p0, Lenz$2$1;->c:Lenz$2;

    iput-object p2, p0, Lenz$2$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lenz$2$1;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 120
    const-string/jumbo v6, "ding"

    iget-object v7, p0, Lenz$2$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "ding_attachment"

    iget-object v7, p0, Lenz$2$1;->a:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    iget-object v6, p0, Lenz$2$1;->b:Ljava/util/List;

    iget-object v7, p0, Lenz$2$1;->c:Lenz$2;

    iget-object v7, v7, Lenz$2;->a:Ljava/lang/String;

    invoke-static {v6, v7}, Lenz;->a(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 125
    .local v1, "ds":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/search/model/BaseModel;>;"
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, p0, Lenz$2$1;->c:Lenz$2;

    iget-object v6, v6, Lenz$2;->b:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 126
    :cond_2
    iget-object v6, p0, Lenz$2$1;->c:Lenz$2;

    iget-object v6, v6, Lenz$2;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 127
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 128
    .local v5, "ret":Lcom/alibaba/fastjson/JSONArray;
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 129
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    iget-object v6, p0, Lenz$2$1;->c:Lenz$2;

    iget-object v6, v6, Lenz$2;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/search/model/BaseModel;

    .local v2, "m":Lcom/alibaba/android/search/model/BaseModel;
    move-object v0, v2

    .line 130
    check-cast v0, Lcom/alibaba/android/search/model/DingModel;

    .line 131
    .local v0, "dm":Lcom/alibaba/android/search/model/DingModel;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 137
    .local v3, "obj":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v7, "dingId"

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/DingModel;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string/jumbo v7, "createdAt"

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/DingModel;->getCreatedAt()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v7, "senderUid"

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/DingModel;->getUId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string/jumbo v7, "dingContentText"

    invoke-virtual {v0}, Lcom/alibaba/android/search/model/DingModel;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {v5, v3}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 143
    .end local v0    # "dm":Lcom/alibaba/android/search/model/DingModel;
    .end local v2    # "m":Lcom/alibaba/android/search/model/BaseModel;
    .end local v3    # "obj":Lcom/alibaba/fastjson/JSONObject;
    :cond_3
    const-string/jumbo v6, "dingList"

    invoke-virtual {v4, v6, v5}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v6, p0, Lenz$2$1;->c:Lenz$2;

    iget-object v6, v6, Lenz$2;->d:Lhll;

    invoke-interface {v6, v4}, Lhll;->a(Lcom/alibaba/fastjson/JSONObject;)V

    goto/16 :goto_0
.end method
