.class public Lorg/webrtc/ali/CallSessionFileRotatingLogSink;
.super Ljava/lang/Object;
.source "CallSessionFileRotatingLogSink.java"


# instance fields
.field private nativeSink:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 16
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILorg/webrtc/ali/Logging$Severity;)V
    .locals 2
    .param p1, "dirPath"    # Ljava/lang/String;
    .param p2, "maxFileSize"    # I
    .param p3, "severity"    # Lorg/webrtc/ali/Logging$Severity;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p3}, Lorg/webrtc/ali/Logging$Severity;->ordinal()I

    move-result v0

    invoke-static {p1, p2, v0}, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeAddSink(Ljava/lang/String;II)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeSink:J

    .line 27
    return-void
.end method

.method public static getLogData(Ljava/lang/String;)[B
    .locals 1
    .param p0, "dirPath"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-static {p0}, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeGetLogData(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static native nativeAddSink(Ljava/lang/String;II)J
.end method

.method private static native nativeDeleteSink(J)V
.end method

.method private static native nativeGetLogData(Ljava/lang/String;)[B
.end method


# virtual methods
.method public dispose()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v2, 0x0

    .line 30
    iget-wide v0, p0, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeSink:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 31
    iget-wide v0, p0, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeSink:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeDeleteSink(J)V

    .line 32
    iput-wide v2, p0, Lorg/webrtc/ali/CallSessionFileRotatingLogSink;->nativeSink:J

    .line 34
    :cond_0
    return-void
.end method
