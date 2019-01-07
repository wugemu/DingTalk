.class public Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;
.super Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;
.source "CalendarsUpdateParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method protected handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;
    .param p2, "calendarsJsonElements"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v2

    .line 38
    .local v2, "calendarsArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v2}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    .line 39
    .local v5, "size":I
    if-lez v5, :cond_1

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    .local v1, "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 42
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v0

    .line 43
    .local v0, "calendarElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;

    invoke-virtual {v6, v0, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;

    .line 45
    .local v3, "contact":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "calendarElement":Lcom/google/gson/JsonElement;
    .end local v3    # "contact":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;
    :cond_0
    invoke-virtual {p1, v1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;->setCalendarsResult(Ljava/util/List;)V

    .line 49
    .end local v1    # "calendars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleCalendarUpdateResult;>;"
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method protected bridge synthetic handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;->handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;
    .param p2, "contactsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 53
    return-void
.end method

.method protected bridge synthetic handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;->handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;
    .param p2, "mailsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 32
    return-void
.end method

.method protected bridge synthetic handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;->handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;-><init>()V

    .line 25
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;->setResultCode(I)V

    .line 26
    return-object v0
.end method

.method protected bridge synthetic newResultByWholeStatus(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/CalendarsUpdateParser;->newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/CalendarsUpdateResult;

    move-result-object v0

    return-object v0
.end method
