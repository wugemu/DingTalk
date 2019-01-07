.class public Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;
.super Ljava/lang/Object;
.source "FaceDetectInfo.java"


# instance fields
.field public faceLandmarks:[F

.field public faceRect:[I


# direct methods
.method public constructor <init>([I[F)V
    .locals 0
    .param p1, "faceRect"    # [I
    .param p2, "faceLandmarks"    # [F

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;->faceRect:[I

    .line 13
    iput-object p2, p0, Ltv/danmaku/ijk/media/player/misc/FaceDetectInfo;->faceLandmarks:[F

    .line 14
    return-void
.end method
