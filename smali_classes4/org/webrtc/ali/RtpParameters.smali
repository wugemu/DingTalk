.class public Lorg/webrtc/ali/RtpParameters;
.super Ljava/lang/Object;
.source "RtpParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/RtpParameters$Codec;,
        Lorg/webrtc/ali/RtpParameters$Encoding;
    }
.end annotation


# instance fields
.field public final codecs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/RtpParameters$Codec;",
            ">;"
        }
    .end annotation
.end field

.field public final encodings:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lorg/webrtc/ali/RtpParameters$Encoding;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/RtpParameters;->encodings:Ljava/util/LinkedList;

    .line 59
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/webrtc/ali/RtpParameters;->codecs:Ljava/util/LinkedList;

    .line 60
    return-void
.end method
