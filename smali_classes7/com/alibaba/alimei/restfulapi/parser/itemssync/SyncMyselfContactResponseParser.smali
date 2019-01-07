.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncMyselfContactResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;
    .locals 8
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v5

    .line 23
    .local v5, "resultElement":Lcom/google/gson/JsonElement;
    const/4 v4, 0x0

    .line 24
    .local v4, "result":Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 25
    invoke-virtual {v5}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v3

    .line 26
    .local v3, "objectItems":Lcom/google/gson/JsonObject;
    const-string/jumbo v6, "items"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 27
    const-string/jumbo v6, "items"

    invoke-virtual {v3, v6}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 28
    .local v2, "itemsElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 29
    invoke-virtual {v2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 30
    .local v1, "itemsArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 31
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 32
    .local v0, "contactElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    invoke-virtual {v6, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;
    check-cast v4, Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    .line 39
    .end local v0    # "contactElement":Lcom/google/gson/JsonElement;
    .end local v1    # "itemsArray":Lcom/google/gson/JsonArray;
    .end local v2    # "itemsElement":Lcom/google/gson/JsonElement;
    .end local v3    # "objectItems":Lcom/google/gson/JsonObject;
    .restart local v4    # "result":Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;
    :cond_0
    :goto_0
    return-object v4

    .line 37
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMyselfContactResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/data/contact/UserSelfContact;

    move-result-object v0

    return-object v0
.end method
