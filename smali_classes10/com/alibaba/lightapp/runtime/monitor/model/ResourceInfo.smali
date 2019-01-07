.class public Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;
.super Ljava/lang/Object;
.source "ResourceInfo.java"


# instance fields
.field private mLoadStatus:I

.field private mLoadType:Ljava/lang/String;

.field private mResUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadStatus()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mLoadStatus:I

    return v0
.end method

.method public getLoadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mLoadType:Ljava/lang/String;

    return-object v0
.end method

.method public getResUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mResUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadStatus(I)V
    .locals 0
    .param p1, "loadStatus"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mLoadStatus:I

    .line 34
    return-void
.end method

.method public setLoadType(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadType"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mLoadType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setResUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "resUrl"    # Ljava/lang/String;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/monitor/model/ResourceInfo;->mResUrl:Ljava/lang/String;

    .line 18
    return-void
.end method
