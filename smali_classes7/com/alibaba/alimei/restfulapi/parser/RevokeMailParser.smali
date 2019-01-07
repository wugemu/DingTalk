.class public Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "RevokeMailParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;",
        ">;"
    }
.end annotation


# static fields
.field public static final parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;

    invoke-direct {v0}, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;-><init>()V

    sput-object v0, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;->parser:Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;
    .locals 3
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 17
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;

    .line 18
    .local v0, "result":Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;
    return-object v0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/RevokeMailParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/RevokeResult;

    move-result-object v0

    return-object v0
.end method
