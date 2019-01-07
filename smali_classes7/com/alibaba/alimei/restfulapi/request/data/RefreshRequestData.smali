.class public Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;
.super Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;
.source "RefreshRequestData.java"


# instance fields
.field public refreshToken:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/alibaba/alimei/restfulapi/request/data/RestfulBaseRequestData;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;->refreshToken:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public getRefreshToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;->refreshToken:Ljava/lang/String;

    return-object v0
.end method

.method public setRefreshToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "refreshToken"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/request/data/RefreshRequestData;->refreshToken:Ljava/lang/String;

    .line 22
    return-void
.end method
