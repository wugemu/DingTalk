.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl;
.source "MessageContentImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageContent$ForwardCombineContent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ForwardCombineContentImpl"
.end annotation


# instance fields
.field private mContents:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mExtensions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSummary:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "summary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 2423
    .local p3, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    .local p4, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/16 v0, 0x5dc

    invoke-direct {p0, v0}, Lcom/alibaba/wukong/im/message/MessageContentImpl;-><init>(I)V

    .line 2418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mContents:Ljava/util/ArrayList;

    .line 2420
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mExtensions:Ljava/util/ArrayList;

    .line 2424
    iput-object p1, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    .line 2425
    iput-object p2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    .line 2426
    if-eqz p3, :cond_0

    .line 2427
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mContents:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2429
    :cond_0
    if-eqz p4, :cond_1

    .line 2430
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mExtensions:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 2432
    :cond_1
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2433
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    .line 2435
    :cond_2
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2436
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    .line 2438
    :cond_3
    return-void
.end method

.method static synthetic access$1500(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 2414
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;
    .locals 14
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 2489
    if-nez p0, :cond_0

    .line 2490
    const/4 v13, 0x0

    .line 2521
    :goto_0
    return-object v13

    .line 2492
    :cond_0
    const-string/jumbo v13, "title"

    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 2493
    .local v12, "title":Ljava/lang/String;
    const-string/jumbo v13, "summary"

    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2494
    .local v11, "summary":Ljava/lang/String;
    const-string/jumbo v13, "multi"

    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 2495
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2496
    .local v1, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2498
    .local v3, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz v0, :cond_4

    .line 2499
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v4, v13, :cond_4

    .line 2500
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 2501
    .local v8, "obj":Lorg/json/JSONObject;
    if-eqz v8, :cond_3

    .line 2502
    const-string/jumbo v13, "message"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2503
    .local v9, "packMsg":Ljava/lang/String;
    invoke-static {v9}, Libt;->d(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v7

    .line 2504
    .local v7, "message":Lcom/alibaba/wukong/im/Message;
    if-eqz v7, :cond_1

    .line 2505
    const-string/jumbo v13, "senderName"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2506
    .local v10, "senderName":Ljava/lang/String;
    const-string/jumbo v13, "senderName"

    invoke-interface {v7, v13, v10}, Lcom/alibaba/wukong/im/Message;->updateLocalExtension(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2510
    .end local v10    # "senderName":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2511
    .local v2, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v8}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 2512
    .local v6, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 2513
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 2514
    .local v5, "key":Ljava/lang/String;
    invoke-virtual {v8, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v2, v5, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2516
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2499
    .end local v2    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6    # "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v7    # "message":Lcom/alibaba/wukong/im/Message;
    .end local v9    # "packMsg":Ljava/lang/String;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2521
    .end local v4    # "i":I
    .end local v8    # "obj":Lorg/json/JSONObject;
    :cond_4
    new-instance v13, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    invoke-direct {v13, v12, v11, v1, v3}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic cloneContent()Lcom/alibaba/wukong/im/MessageContent;
    .locals 1

    .prologue
    .line 2414
    invoke-virtual {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    move-result-object v0

    return-object v0
.end method

.method public cloneContent()Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2457
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mContents:Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2458
    .local v0, "contents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mExtensions:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2459
    .local v1, "extensions":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v2, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;

    iget-object v3, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    return-object v2
.end method

.method public contents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2452
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mContents:Ljava/util/ArrayList;

    return-object v0
.end method

.method public summary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2447
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    return-object v0
.end method

.method public title()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2442
    iget-object v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method protected toJSON()Lorg/json/JSONObject;
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 2463
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 2465
    .local v5, "object":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v6, "tp"

    iget v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mType:I

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 2466
    const-string/jumbo v6, "title"

    iget-object v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mTitle:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2467
    const-string/jumbo v6, "summary"

    iget-object v7, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mSummary:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2469
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2470
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mExtensions:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    .line 2471
    iget-object v6, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$ForwardCombineContentImpl;->mExtensions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 2472
    .local v3, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 2473
    .local v4, "obj":Lorg/json/JSONObject;
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2474
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 2475
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v4, v6, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2482
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 2483
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 2485
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-object v5

    .line 2478
    .restart local v0    # "array":Lorg/json/JSONArray;
    .restart local v3    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4    # "obj":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 2481
    .end local v3    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "obj":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v6, "multi"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
