.class public Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "WebTokenRequestData.java"


# instance fields
.field private accesstoken:Ljava/lang/String;

.field private meta:Ljava/lang/String;

.field private timeOut:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 14
    const/16 v0, 0x708

    iput v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->timeOut:I

    .line 18
    return-void
.end method


# virtual methods
.method public getAccesstoken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->accesstoken:Ljava/lang/String;

    return-object v0
.end method

.method public getMeta()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->meta:Ljava/lang/String;

    return-object v0
.end method

.method public getTimeOut()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->timeOut:I

    return v0
.end method

.method public setAccesstoken(Ljava/lang/String;)V
    .locals 0
    .param p1, "accesstoken"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->accesstoken:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setMeta(Ljava/lang/String;)V
    .locals 0
    .param p1, "meta"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->meta:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setTimeOut(I)V
    .locals 0
    .param p1, "timeOut"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/WebTokenRequestData;->timeOut:I

    .line 34
    return-void
.end method
