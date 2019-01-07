.class public Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;
.super Ljava/lang/Object;
.source "ApiLocationResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlResult"
.end annotation


# instance fields
.field private accsUrl:Ljava/lang/String;

.field private originUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->accsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->originUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setAccsUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "accsUrl"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->accsUrl:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setOriginUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "originUrl"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/alimei/restfulapi/response/data/ApiLocationResult$UrlResult;->originUrl:Ljava/lang/String;

    .line 83
    return-void
.end method
