.class public Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "MailInfoParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final parser:Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;
    .locals 4
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 21
    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 22
    .local v0, "jsonObject":Lcom/google/gson/JsonObject;
    const-string/jumbo v2, "rets"

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    .line 23
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v2

    const-class v3, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    .line 24
    .local v1, "result":Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;->parse()V

    .line 27
    :cond_0
    return-object v1
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/MailInfoParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/MailAddrInfoResult;

    move-result-object v0

    return-object v0
.end method
