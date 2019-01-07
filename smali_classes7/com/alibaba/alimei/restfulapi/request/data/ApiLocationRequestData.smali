.class public Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "ApiLocationRequestData.java"


# instance fields
.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appver:Ljava/lang/String;

.field private email:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->email:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->email:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppver()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appver:Ljava/lang/String;

    return-object v0
.end method

.method public setAccountName(Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->email:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "appKey"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appKey:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setAppver(Ljava/lang/String;)V
    .locals 0
    .param p1, "appver"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/ApiLocationRequestData;->appver:Ljava/lang/String;

    .line 46
    return-void
.end method
