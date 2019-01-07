.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncMultipleMailResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<[",
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
.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    .locals 8
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 20
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncMultipleMailResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;

    invoke-virtual {v6, p1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;

    .line 21
    .local v4, "resultFolders":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;
    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMultipleMailResultItems;->getFolders()Ljava/util/List;

    move-result-object v0

    .line 22
    .local v0, "folders":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;>;"
    if-nez v0, :cond_1

    .line 23
    const/4 v3, 0x0

    .line 34
    :cond_0
    return-object v3

    .line 26
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 27
    .local v5, "size":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;

    .line 28
    .local v3, "result":[Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    .line 29
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;

    .line 30
    .local v2, "items":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;
    aput-object v2, v3, v1

    .line 31
    aget-object v6, v3, v1

    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResultItems;->getItems()Ljava/util/List;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncMailResult;->setMails(Ljava/util/List;)V

    .line 28
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
