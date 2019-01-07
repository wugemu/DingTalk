.class public Lorg/webrtc/ali/VideoCodecInfo;
.super Ljava/lang/Object;
.source "VideoCodecInfo.java"


# instance fields
.field public final name:Ljava/lang/String;

.field public final params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final payload:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "payload"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p3, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lorg/webrtc/ali/VideoCodecInfo;->payload:I

    .line 25
    iput-object p2, p0, Lorg/webrtc/ali/VideoCodecInfo;->name:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/webrtc/ali/VideoCodecInfo;->params:Ljava/util/Map;

    .line 27
    return-void
.end method
