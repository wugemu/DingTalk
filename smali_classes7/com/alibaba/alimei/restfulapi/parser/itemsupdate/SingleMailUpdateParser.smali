.class public Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;
.super Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;
.source "SingleMailUpdateParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method protected handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .param p2, "calendarsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 45
    return-void
.end method

.method protected bridge synthetic handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;->handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .param p2, "contactsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 53
    return-void
.end method

.method protected bridge synthetic handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;->handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 5
    .param p1, "target"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .param p2, "mailsJsonElements"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 29
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v1

    .line 30
    .local v1, "mails":Lcom/google/gson/JsonArray;
    invoke-virtual {v1}, Lcom/google/gson/JsonArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 31
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 32
    .local v0, "mailElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v3

    const-class v4, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 34
    .local v2, "source":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    invoke-static {p1, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->copy(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;)V

    .line 36
    .end local v0    # "mailElement":Lcom/google/gson/JsonElement;
    .end local v2    # "source":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    :cond_0
    return-void
.end method

.method protected bridge synthetic handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 12
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;->handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 21
    new-instance v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;-><init>()V

    .line 22
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;->setResultCode(I)V

    .line 23
    return-object v0
.end method

.method protected bridge synthetic newResultByWholeStatus(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/SingleMailUpdateParser;->newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    move-result-object v0

    return-object v0
.end method
