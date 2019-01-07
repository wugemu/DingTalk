.class public Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;
.super Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
.source "MessageContentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/wukong/im/message/MessageContentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LinkedNoMenuContentImpl"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "picUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 601
    .local p5, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 605
    const/16 v0, 0x515

    iput v0, p0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->mType:I

    .line 606
    return-void
.end method

.method static synthetic access$600(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
    .locals 1
    .param p0, "x0"    # Lorg/json/JSONObject;

    .prologue
    .line 599
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;

    move-result-object v0

    return-object v0
.end method

.method private static fromJSON(Lorg/json/JSONObject;)Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedContentImpl;
    .locals 13
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 635
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 655
    :goto_0
    return-object v0

    .line 638
    :cond_0
    invoke-static {p0}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->getCompatJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v12

    .line 639
    .local v12, "compatJsonObject":Lorg/json/JSONObject;
    if-eqz v12, :cond_1

    .line 640
    invoke-static {v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5

    .line 641
    .local v5, "compatExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v5, :cond_1

    .line 642
    invoke-static {v12}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;->getCompatUrl(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 643
    .local v1, "url":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    .local v2, "title":Ljava/lang/String;
    const-string/jumbo v0, "text"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 645
    .local v3, "text":Ljava/lang/String;
    const-string/jumbo v0, "picUrl"

    invoke-interface {v5, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Libt;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 646
    .local v4, "picUrl":Ljava/lang/String;
    new-instance v0, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 650
    .end local v1    # "url":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "picUrl":Ljava/lang/String;
    .end local v5    # "compatExtension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 651
    .restart local v1    # "url":Ljava/lang/String;
    const-string/jumbo v0, "title"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 652
    .restart local v2    # "title":Ljava/lang/String;
    const-string/jumbo v0, "txt"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 653
    .restart local v3    # "text":Ljava/lang/String;
    const-string/jumbo v0, "picUrl"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 654
    .restart local v4    # "picUrl":Ljava/lang/String;
    const-string/jumbo v0, "ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v11

    .line 655
    .local v11, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v6, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-direct/range {v6 .. v11}, Lcom/alibaba/wukong/im/message/MessageContentImpl$LinkedNoMenuContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v6

    goto :goto_0
.end method

.method private static getCompatExtension(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 1
    .param p0, "compatJsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 620
    if-eqz p0, :cond_0

    .line 621
    const-string/jumbo v0, "ext"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lieb;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 624
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getCompatJsonObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 609
    if-nez p0, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-object v1

    .line 612
    :cond_1
    const-string/jumbo v2, "multi"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 613
    .local v0, "jsonArray":Lorg/json/JSONArray;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 614
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0
.end method

.method private static getCompatUrl(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p0, "compatJsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 628
    if-eqz p0, :cond_0

    .line 629
    const-string/jumbo v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
