.class public Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncCalendarsResponseParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "SyncCalendarsResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;",
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
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
    .locals 5
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 22
    invoke-static {p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncCalendarsResponseParser;->getSyncResultItemsJsonElement(Lcom/google/gson/JsonElement;)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 24
    .local v2, "resultElement":Lcom/google/gson/JsonElement;
    if-eqz v2, :cond_0

    .line 25
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncCalendarsResponseParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;

    invoke-virtual {v3, v2, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;

    .line 26
    .local v0, "items":Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;
    iget-object v3, v0, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;->items:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;->setCalendars(Ljava/util/List;)V

    .line 27
    move-object v1, v0

    .line 31
    .end local v0    # "items":Lcom/alibaba/alimei/restfulapi/data/contact/InnerSyncCalendarResult;
    .local v1, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
    :goto_0
    return-object v1

    .line 29
    .end local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "result":Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;
    goto :goto_0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemssync/SyncCalendarsResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/itemssync/SyncCalendarResult;

    move-result-object v0

    return-object v0
.end method