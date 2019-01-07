.class public Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "GetImageCheckCodeRequestData.java"


# instance fields
.field private height:I

.field private sessionId:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->height:I

    return v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->height:I

    .line 30
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->sessionId:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/GetImageCheckCodeRequestData;->width:I

    .line 24
    return-void
.end method
