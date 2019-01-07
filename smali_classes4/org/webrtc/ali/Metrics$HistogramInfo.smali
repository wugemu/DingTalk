.class public Lorg/webrtc/ali/Metrics$HistogramInfo;
.super Ljava/lang/Object;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/Metrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HistogramInfo"
.end annotation


# instance fields
.field public final bucketCount:I

.field public final max:I

.field public final min:I

.field public final samples:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .param p1, "min"    # I
    .param p2, "max"    # I
    .param p3, "bucketCount"    # I

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/Metrics$HistogramInfo;->samples:Ljava/util/Map;

    .line 52
    iput p1, p0, Lorg/webrtc/ali/Metrics$HistogramInfo;->min:I

    .line 53
    iput p2, p0, Lorg/webrtc/ali/Metrics$HistogramInfo;->max:I

    .line 54
    iput p3, p0, Lorg/webrtc/ali/Metrics$HistogramInfo;->bucketCount:I

    .line 55
    return-void
.end method


# virtual methods
.method public addSample(II)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "numEvents"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 58
    iget-object v0, p0, Lorg/webrtc/ali/Metrics$HistogramInfo;->samples:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method
