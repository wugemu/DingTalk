.class public Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;
.super Ljava/lang/Object;
.source "MiniAppItemModel.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAppearTime:Ljava/lang/Long;

.field private mDesc:Ljava/lang/String;

.field private mJumpUrl:Ljava/lang/String;

.field private mLogo:Ljava/lang/String;

.field private mMiniAppId:Ljava/lang/String;

.field private mMiniAppName:Ljava/lang/String;

.field private mStickyStatus:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mAppearTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getAppearTime()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mAppearTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getJumpUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mJumpUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLogo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mMiniAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getMiniAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mMiniAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getStickyStatus()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mStickyStatus:Z

    return v0
.end method

.method public setAppearTime(Ljava/lang/Long;)V
    .locals 0
    .param p1, "time"    # Ljava/lang/Long;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mAppearTime:Ljava/lang/Long;

    .line 59
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .param p1, "desc"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mDesc:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setJumpUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "jumpUrl"    # Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mJumpUrl:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setLogo(Ljava/lang/String;)V
    .locals 0
    .param p1, "logo"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mLogo:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setMiniAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "miniAppId"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mMiniAppId:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setMiniAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "miniAppName"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mMiniAppName:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setStickyStatus(Z)V
    .locals 0
    .param p1, "status"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->mStickyStatus:Z

    .line 67
    return-void
.end method
