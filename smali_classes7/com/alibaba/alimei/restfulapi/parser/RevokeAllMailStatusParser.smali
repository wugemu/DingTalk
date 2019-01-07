.class public Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "RevokeAllMailStatusParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/util/List;
    .locals 6
    .param p1, "data"    # Lcom/google/gson/JsonElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 27
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 28
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string/jumbo v4, "resultVec"

    invoke-virtual {v0, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 29
    new-instance v4, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser$1;

    invoke-direct {v4, p0}, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser$1;-><init>(Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser;)V

    invoke-virtual {v4}, Lcom/alibaba/alimei/restfulapi/parser/RevokeAllMailStatusParser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 30
    .local v1, "listType":Ljava/lang/reflect/Type;
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v4

    invoke-virtual {v4, p1, v1}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 31
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;>;"
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 32
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;

    .line 33
    .local v2, "result":Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;
    if-eqz v2, :cond_0

    .line 36
    invoke-virtual {v2}, Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;->parse()V

    goto :goto_0

    .line 39
    .end local v2    # "result":Lcom/alibaba/alimei/restfulapi/response/data/RevokeMailQueryResult;
    :cond_1
    return-object v3
.end method
