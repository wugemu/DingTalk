.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncMailResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .locals 5
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 19
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 21
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    .line 22
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;

    .line 23
    .local v0, "items":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;->items:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;->setMails(Ljava/util/List;)V

    .line 24
    move-object v1, v0

    .line 28
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;
    .local v1, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    :goto_0
    return-object v1

    .line 26
    .end local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMailResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    move-result-object v0

    return-object v0
.end method
