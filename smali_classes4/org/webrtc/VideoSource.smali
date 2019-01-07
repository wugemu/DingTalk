.class public Lorg/webrtc/VideoSource;
.super Ljava/lang/Object;
.source "VideoSource.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoSource"


# instance fields
.field public nativeSource:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeSource"    # J

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-wide p1, p0, Lorg/webrtc/VideoSource;->nativeSource:J

    .line 18
    return-void
.end method

.method private static native nativeAdaptOutputFormat(JIII)V
.end method


# virtual methods
.method public adaptOutputFormat(III)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "fps"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 27
    const-string/jumbo v0, "VideoSource"

    const-string/jumbo v1, "adaptOutputFormat"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "width"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "height"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "fps"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/taobao/artc/utils/ArtcLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    iget-wide v0, p0, Lorg/webrtc/VideoSource;->nativeSource:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/VideoSource;->nativeAdaptOutputFormat(JIII)V

    .line 29
    return-void
.end method
