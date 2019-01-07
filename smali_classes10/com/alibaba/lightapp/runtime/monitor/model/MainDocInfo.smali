.class public Lcom/alibaba/lightapp/runtime/monitor/model/MainDocInfo;
.super Ljava/lang/Object;
.source "MainDocInfo.java"


# instance fields
.field private mLoadStatus:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/MainDocInfo;->mLoadStatus:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/MainDocInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadStatus"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/MainDocInfo;->mLoadStatus:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/MainDocInfo;->mUrl:Ljava/lang/String;

    .line 17
    return-void
.end method
