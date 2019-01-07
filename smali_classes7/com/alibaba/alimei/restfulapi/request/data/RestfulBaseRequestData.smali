.class public abstract Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.super Ljava/lang/Object;
.source "RestfulBaseRequestData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    invoke-static {}, Lcom/alibaba/alimei/restfulapi/support/GsonTools;->getGsonInstance()Lcom/google/gson/Gson;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
