.class public Lcom/alibaba/doraemon/audio/opus/OpusTool;
.super Ljava/lang/Object;
.source "OpusTool.java"


# static fields
.field private static final MAX_ERROR_TIMES:I = 0x2

.field private static final TAG:Ljava/lang/String;

.field private static isOpusSupported:Z

.field private static sPlayErrorTimes:I

.field private static sRecordErrorTimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 17
    const-class v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->TAG:Ljava/lang/String;

    .line 19
    sput v2, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sRecordErrorTimes:I

    .line 20
    sput v2, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sPlayErrorTimes:I

    .line 24
    :try_start_0
    const-string/jumbo v0, "ddopustools"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 26
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported:Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    sget-object v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Could not load library "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sput-boolean v2, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canPlayWithOpus()Z
    .locals 2

    .prologue
    .line 112
    sget-boolean v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sPlayErrorTimes:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canRecordWithOpus()Z
    .locals 2

    .prologue
    .line 108
    sget-boolean v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sRecordErrorTimes:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native getPcmOffset()J
.end method

.method private native getTotalPcmDuration()J
.end method

.method public static increaseOpusPlayErrorTimes()V
    .locals 6

    .prologue
    .line 122
    sget v1, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sPlayErrorTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sPlayErrorTimes:I

    .line 123
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 124
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Doraemon"

    const-string/jumbo v2, "opusPlay"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 125
    return-void
.end method

.method public static increaseOpusRecordErrorTimes()V
    .locals 6

    .prologue
    .line 116
    sget v1, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sRecordErrorTimes:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/alibaba/doraemon/audio/opus/OpusTool;->sRecordErrorTimes:I

    .line 117
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    .line 118
    .local v0, "statistics":Lcom/alibaba/doraemon/statistics/Statistics;
    const-string/jumbo v1, "Doraemon"

    const-string/jumbo v2, "opusRecord"

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v4, v5}, Lcom/alibaba/doraemon/statistics/Statistics;->commitCountEvent(Ljava/lang/String;Ljava/lang/String;D)V

    .line 119
    return-void
.end method

.method public static isOpusSupported()Z
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/alibaba/doraemon/audio/opus/OpusTool;->isOpusSupported:Z

    return v0
.end method


# virtual methods
.method public native closeOpusFile()V
.end method

.method public native getChannelCount()I
.end method

.method public getCurrentPCMOffset()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getPcmOffset()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getCurrentPosition()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getPcmOffset()J

    move-result-wide v0

    const-wide/16 v2, 0x30

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalDuration()J
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalPcmDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x30

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTotalPCMDuration()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alibaba/doraemon/audio/opus/OpusTool;->getTotalPcmDuration()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public native getWaveform(Ljava/lang/String;)[B
.end method

.method public native getWaveform2([SI)[B
.end method

.method public native isOpusFile(Ljava/lang/String;)I
.end method

.method public native nativeGetString()Ljava/lang/String;
.end method

.method public native openOpusFile(Ljava/lang/String;)I
.end method

.method public native readOpusFile(Ljava/nio/ByteBuffer;I[I)V
.end method

.method public native seekOpusFile(F)I
.end method

.method public native startRecord(Ljava/lang/String;)I
.end method

.method public native stopRecord()V
.end method

.method public native writeFrame(Ljava/nio/ByteBuffer;I)I
.end method
