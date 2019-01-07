.class public Lorg/webrtc/ali/DtmfSender;
.super Ljava/lang/Object;
.source "DtmfSender.java"


# instance fields
.field final nativeDtmfSender:J


# direct methods
.method public constructor <init>(J)V
    .locals 1
    .param p1, "nativeDtmfSender"    # J

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    .line 19
    return-void
.end method

.method private static native free(J)V
.end method

.method private static native nativeCanInsertDtmf(J)Z
.end method

.method private static native nativeDuration(J)I
.end method

.method private static native nativeInsertDtmf(JLjava/lang/String;II)Z
.end method

.method private static native nativeInterToneGap(J)I
.end method

.method private static native nativeTones(J)Ljava/lang/String;
.end method


# virtual methods
.method public canInsertDtmf()Z
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 25
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/DtmfSender;->nativeCanInsertDtmf(J)Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/DtmfSender;->free(J)V

    .line 75
    return-void
.end method

.method public duration()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 61
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/DtmfSender;->nativeDuration(J)I

    move-result v0

    return v0
.end method

.method public insertDtmf(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "tones"    # Ljava/lang/String;
    .param p2, "duration"    # I
    .param p3, "interToneGap"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1, p1, p2, p3}, Lorg/webrtc/ali/DtmfSender;->nativeInsertDtmf(JLjava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public interToneGap()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 70
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/DtmfSender;->nativeInterToneGap(J)I

    move-result v0

    return v0
.end method

.method public tones()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 53
    iget-wide v0, p0, Lorg/webrtc/ali/DtmfSender;->nativeDtmfSender:J

    invoke-static {v0, v1}, Lorg/webrtc/ali/DtmfSender;->nativeTones(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
