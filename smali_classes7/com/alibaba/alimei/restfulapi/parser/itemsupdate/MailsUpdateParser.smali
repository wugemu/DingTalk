.class public Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;
.super Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser;
.source "MailsUpdateParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/AbsItemsUpdateResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;",
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
.method protected handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    .param p2, "calendarsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 51
    return-void
.end method

.method protected bridge synthetic handleCalendarsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;->handleCalendarsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 0
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    .param p2, "contactsJsonElements"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 58
    return-void
.end method

.method protected bridge synthetic handleContactsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;->handleContactsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V
    .locals 8
    .param p1, "result"    # Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    .param p2, "mailsJsonElements"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 32
    invoke-virtual {p2}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object v4

    .line 33
    .local v4, "mailsArray":Lcom/google/gson/JsonArray;
    invoke-virtual {v4}, Lcom/google/gson/JsonArray;->size()I

    move-result v5

    .line 34
    .local v5, "size":I
    if-lez v5, :cond_1

    .line 35
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 36
    .local v3, "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    .line 37
    invoke-virtual {v4, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v2

    .line 38
    .local v2, "mailElement":Lcom/google/gson/JsonElement;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;->gsonInstance()Lcom/google/gson/Gson;

    move-result-object v6

    const-class v7, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    invoke-virtual {v6, v2, v7}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;

    .line 40
    .local v1, "mail":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    .end local v1    # "mail":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;
    .end local v2    # "mailElement":Lcom/google/gson/JsonElement;
    :cond_0
    invoke-virtual {p1, v3}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->setMailResults(Ljava/util/List;)V

    .line 44
    .end local v0    # "i":I
    .end local v3    # "mails":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/SingleMailUpdateResult;>;"
    :cond_1
    return-void
.end method

.method protected bridge synthetic handleMailsResult(Ljava/lang/Object;Lcom/google/gson/JsonElement;)V
    .locals 0

    .prologue
    .line 15
    check-cast p1, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;->handleMailsResult(Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;Lcom/google/gson/JsonElement;)V

    return-void
.end method

.method protected newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    .locals 1
    .param p1, "resultCode"    # I

    .prologue
    .line 24
    new-instance v0, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;-><init>()V

    .line 25
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;
    invoke-virtual {v0, p1}, Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;->setResultCode(I)V

    .line 26
    return-object v0
.end method

.method protected bridge synthetic newResultByWholeStatus(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/itemsupdate/MailsUpdateParser;->newResultByWholeStatus(I)Lcom/alibaba/alimei/restfulapi/response/data/itemsupdate/MailsUpdateResult;

    move-result-object v0

    return-object v0
.end method
