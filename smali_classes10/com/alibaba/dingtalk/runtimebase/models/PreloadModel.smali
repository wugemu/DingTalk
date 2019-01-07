.class public Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;
.super Ljava/lang/Object;
.source "PreloadModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private appId:Ljava/lang/String;

.field private corpId:Ljava/lang/String;

.field private isKeepLive:Z

.field private mParams:Landroid/os/Bundle;

.field private preloadId:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getCorpId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->corpId:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPreloadId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->preloadId:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isKeepLive()Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->isKeepLive:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->appId:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setCorpId(Ljava/lang/String;)V
    .locals 0
    .param p1, "corpId"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->corpId:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setKeepLive(Z)V
    .locals 0
    .param p1, "keepLive"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->isKeepLive:Z

    .line 57
    return-void
.end method

.method public setParams(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "params"    # Landroid/os/Bundle;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->mParams:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method public setPreloadId(Ljava/lang/String;)V
    .locals 0
    .param p1, "preloadId"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->preloadId:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alibaba/dingtalk/runtimebase/models/PreloadModel;->url:Ljava/lang/String;

    .line 49
    return-void
.end method
