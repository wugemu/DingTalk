.class public Lorg/webrtc/ali/Metrics;
.super Ljava/lang/Object;
.source "Metrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/Metrics$HistogramInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Metrics"


# instance fields
.field public final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/webrtc/ali/Metrics$HistogramInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/Metrics;->map:Ljava/util/Map;

    return-void
.end method

.method private add(Ljava/lang/String;Lorg/webrtc/ali/Metrics$HistogramInfo;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "info"    # Lorg/webrtc/ali/Metrics$HistogramInfo;

    .prologue
    .line 63
    iget-object v0, p0, Lorg/webrtc/ali/Metrics;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public static enable()V
    .locals 0

    .prologue
    .line 69
    invoke-static {}, Lorg/webrtc/ali/Metrics;->nativeEnable()V

    .line 70
    return-void
.end method

.method public static getAndReset()Lorg/webrtc/ali/Metrics;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lorg/webrtc/ali/Metrics;->nativeGetAndReset()Lorg/webrtc/ali/Metrics;

    move-result-object v0

    return-object v0
.end method

.method private static native nativeEnable()V
.end method

.method private static native nativeGetAndReset()Lorg/webrtc/ali/Metrics;
.end method
