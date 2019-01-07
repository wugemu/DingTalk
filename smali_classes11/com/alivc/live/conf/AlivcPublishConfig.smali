.class public Lcom/alivc/live/conf/AlivcPublishConfig;
.super Ljava/lang/Object;
.source "AlivcPublishConfig.java"


# instance fields
.field mEnableDualVideoStream:Z

.field private mediaProfile:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMediaProfile()Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/alivc/live/conf/AlivcPublishConfig;->mediaProfile:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    return-object v0
.end method

.method public isEnableDualVideoStream()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcPublishConfig;->mEnableDualVideoStream:Z

    return v0
.end method

.method public setEnableDualVideoStream(Z)V
    .locals 0
    .param p1, "enableDualVideoStream"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcPublishConfig;->mEnableDualVideoStream:Z

    .line 36
    return-void
.end method

.method public setMediaProfile(Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;)V
    .locals 0
    .param p1, "mediaProfile"    # Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/alivc/live/conf/AlivcPublishConfig;->mediaProfile:Lcom/alivc/live/conf/AlivcVideoConfConstants$PublishMediaProfile;

    .line 28
    return-void
.end method
