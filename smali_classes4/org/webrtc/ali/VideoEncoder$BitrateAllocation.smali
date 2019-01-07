.class public Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;
.super Ljava/lang/Object;
.source "VideoEncoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/VideoEncoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitrateAllocation"
.end annotation


# instance fields
.field public final bitratesBbs:[[I


# direct methods
.method public constructor <init>([[I)V
    .locals 0
    .param p1, "bitratesBbs"    # [[I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;->bitratesBbs:[[I

    .line 68
    return-void
.end method


# virtual methods
.method public getSum()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 74
    const/4 v2, 0x0

    .line 75
    .local v2, "sum":I
    iget-object v6, p0, Lorg/webrtc/ali/VideoEncoder$BitrateAllocation;->bitratesBbs:[[I

    array-length v7, v6

    move v5, v4

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v1, v6, v5

    .line 76
    .local v1, "spatialLayer":[I
    array-length v8, v1

    move v3, v4

    :goto_1
    if-ge v3, v8, :cond_0

    aget v0, v1, v3

    .line 77
    .local v0, "bitrate":I
    add-int/2addr v2, v0

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 75
    .end local v0    # "bitrate":I
    :cond_0
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    .line 80
    .end local v1    # "spatialLayer":[I
    :cond_1
    return v2
.end method
