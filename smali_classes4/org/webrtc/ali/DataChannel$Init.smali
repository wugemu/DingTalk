.class public Lorg/webrtc/ali/DataChannel$Init;
.super Ljava/lang/Object;
.source "DataChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/ali/DataChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Init"
.end annotation


# instance fields
.field public id:I

.field public maxRetransmitTimeMs:I

.field public maxRetransmits:I

.field public negotiated:Z

.field public ordered:Z

.field public protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/DataChannel$Init;->ordered:Z

    .line 21
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmitTimeMs:I

    .line 23
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmits:I

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/webrtc/ali/DataChannel$Init;->protocol:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/DataChannel$Init;->negotiated:Z

    .line 27
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->id:I

    .line 29
    return-void
.end method

.method private constructor <init>(ZIILjava/lang/String;ZI)V
    .locals 2
    .param p1, "ordered"    # Z
    .param p2, "maxRetransmitTimeMs"    # I
    .param p3, "maxRetransmits"    # I
    .param p4, "protocol"    # Ljava/lang/String;
    .param p5, "negotiated"    # Z
    .param p6, "id"    # I

    .prologue
    const/4 v1, -0x1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/webrtc/ali/DataChannel$Init;->ordered:Z

    .line 21
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmitTimeMs:I

    .line 23
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmits:I

    .line 24
    const-string/jumbo v0, ""

    iput-object v0, p0, Lorg/webrtc/ali/DataChannel$Init;->protocol:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/webrtc/ali/DataChannel$Init;->negotiated:Z

    .line 27
    iput v1, p0, Lorg/webrtc/ali/DataChannel$Init;->id:I

    .line 34
    iput-boolean p1, p0, Lorg/webrtc/ali/DataChannel$Init;->ordered:Z

    .line 35
    iput p2, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmitTimeMs:I

    .line 36
    iput p3, p0, Lorg/webrtc/ali/DataChannel$Init;->maxRetransmits:I

    .line 37
    iput-object p4, p0, Lorg/webrtc/ali/DataChannel$Init;->protocol:Ljava/lang/String;

    .line 38
    iput-boolean p5, p0, Lorg/webrtc/ali/DataChannel$Init;->negotiated:Z

    .line 39
    iput p6, p0, Lorg/webrtc/ali/DataChannel$Init;->id:I

    .line 40
    return-void
.end method
