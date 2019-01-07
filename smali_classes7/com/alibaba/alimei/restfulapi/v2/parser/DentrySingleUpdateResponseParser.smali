.class public Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "DentrySingleUpdateResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;",
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
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;
    .locals 6
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 20
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;->getV2UpdateResultFirsrtItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 22
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_1

    .line 23
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v4

    const-class v5, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    invoke-virtual {v4, v2, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;

    .line 28
    .local v1, "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;
    :goto_0
    if-nez v1, :cond_2

    move-object v0, v3

    .line 29
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;>;"
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 30
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    .line 32
    :cond_0
    return-object v3

    .line 25
    .end local v0    # "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;>;"
    .end local v1    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "mSyncResult":Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResult;->getItems()Ljava/util/List;

    move-result-object v0

    goto :goto_1
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/v2/parser/DentrySingleUpdateResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/v2/response/DentryUpdateResultItem;

    move-result-object v0

    return-object v0
.end method
