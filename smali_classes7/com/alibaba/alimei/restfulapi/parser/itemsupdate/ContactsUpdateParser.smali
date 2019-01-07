.class public Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;
.super Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;
.source "ContactsUpdateParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;",
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
.method protected handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
    .param p2, "calendarsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 35
    return-void
.end method

.method protected bridge synthetic handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;->handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
    .param p2, "contactsJsonElements"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 39
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v3

    .line 40
    .local v3, "contactsArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v3}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    .line 41
    .local v5, "size":I
    if-lez v5, :cond_1

    .line 42
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 43
    .local v2, "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 44
    invoke-virtual {v3, v4}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    .line 45
    .local v1, "contactElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;

    invoke-virtual {v6, v1, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;

    .line 47
    .local v0, "contact":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "contact":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;
    .end local v1    # "contactElement":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {p1, v2}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->setContactsResult(Ljava/util/List;)V

    .line 51
    .end local v2    # "contacts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleContactUpdateResult;>;"
    .end local v4    # "i":I
    :cond_1
    return-void
.end method

.method protected bridge synthetic handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;->handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
    .param p2, "mailsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 31
    return-void
.end method

.method protected bridge synthetic handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;->handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;-><init>()V

    .line 25
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;->setResultCode(I)V

    .line 26
    return-object v0
.end method

.method protected bridge synthetic newResultByWholeStatus(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/ContactsUpdateParser;->newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/ContactsUpdateResult;

    move-result-object v0

    return-object v0
.end method
