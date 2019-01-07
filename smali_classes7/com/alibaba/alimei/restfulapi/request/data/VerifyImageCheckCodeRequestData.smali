.class public Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "VerifyImageCheckCodeRequestData.java"


# instance fields
.field private code:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->code:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/VerifyImageCheckCodeRequestData;->sessionId:Ljava/lang/String;

    .line 17
    return-void
.end method
