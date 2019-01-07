.class public Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;
.super Ljava/lang/Object;
.source "AlivcVideoConfConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alivc/live/conf/AlivcVideoConfConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CameraConfig"
.end annotation


# instance fields
.field private autoFocus:Z

.field private flash:Z

.field private videoSource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->videoSource:I

    .line 279
    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->autoFocus:Z

    .line 280
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->flash:Z

    return-void
.end method


# virtual methods
.method public getVideoSource()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->videoSource:I

    return v0
.end method

.method public isAutoFocus()Z
    .locals 1

    .prologue
    .line 291
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->autoFocus:Z

    return v0
.end method

.method public isFlash()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->flash:Z

    return v0
.end method

.method public setAutoFocus(Z)V
    .locals 0
    .param p1, "autoFocus"    # Z

    .prologue
    .line 295
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->autoFocus:Z

    .line 296
    return-void
.end method

.method public setFlash(Z)V
    .locals 0
    .param p1, "flash"    # Z

    .prologue
    .line 303
    iput-boolean p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->flash:Z

    .line 304
    return-void
.end method

.method public setVideoSource(I)V
    .locals 0
    .param p1, "videoSource"    # I

    .prologue
    .line 287
    iput p1, p0, Lcom/alivc/live/conf/AlivcVideoConfConstants$CameraConfig;->videoSource:I

    .line 288
    return-void
.end method
