.class Lorg/webrtc/Histogram;
.super Ljava/lang/Object;
.source "Histogram.java"


# instance fields
.field private final handle:J


# direct methods
.method private constructor <init>(J)V
    .locals 1
    .param p1, "handle"    # J

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lorg/webrtc/Histogram;->handle:J

    .line 27
    return-void
.end method

.method public static createCounts(Ljava/lang/String;III)Lorg/webrtc/Histogram;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "bucketCount"    # I

    .prologue
    .line 30
    new-instance v0, Lorg/webrtc/Histogram;

    invoke-static {p0, p1, p2, p3}, Lorg/webrtc/Histogram;->nativeCreateCounts(Ljava/lang/String;III)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/Histogram;-><init>(J)V

    return-object v0
.end method

.method public static createEnumeration(Ljava/lang/String;I)Lorg/webrtc/Histogram;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "max"    # I

    .prologue
    .line 34
    new-instance v0, Lorg/webrtc/Histogram;

    invoke-static {p0, p1}, Lorg/webrtc/Histogram;->nativeCreateEnumeration(Ljava/lang/String;I)J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/webrtc/Histogram;-><init>(J)V

    return-object v0
.end method

.method private static native nativeAddSample(JI)V
.end method

.method private static native nativeCreateCounts(Ljava/lang/String;III)J
.end method

.method private static native nativeCreateEnumeration(Ljava/lang/String;I)J
.end method


# virtual methods
.method public addSample(I)V
    .locals 2
    .param p1, "sample"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/webrtc/Histogram;->handle:J

    invoke-static {v0, v1, p1}, Lorg/webrtc/Histogram;->nativeAddSample(JI)V

    .line 39
    return-void
.end method
