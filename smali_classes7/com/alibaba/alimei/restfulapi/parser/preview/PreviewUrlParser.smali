.class public Lcom/alibaba/alimei/restfulapi/parser/preview/PreviewUrlParser;
.super Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;
.source "PreviewUrlParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser",
        "<",
        "Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;
    .locals 1
    .param p1, "data"    # Lcom/google/gson/JsonElement;

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/TextHttpResponseParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    return-object v0
.end method

.method protected bridge synthetic onHandleResponseData(Lcom/google/gson/JsonElement;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/restfulapi/parser/preview/PreviewUrlParser;->onHandleResponseData(Lcom/google/gson/JsonElement;)Lcom/alibaba/alimei/restfulapi/response/data/PreviewDocUrlResult;

    move-result-object v0

    return-object v0
.end method
