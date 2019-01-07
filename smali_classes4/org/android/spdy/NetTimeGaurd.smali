.class public Lorg/android/spdy/NetTimeGaurd;
.super Ljava/lang/Object;
.source "NetTimeGaurd.java"


# static fields
.field public static final CREATE:I = 0x0

.field public static final ERROR:I = 0x2

.field public static final PING:I = 0x1

.field public static final STREAM:I = 0x3

.field private static final calltime:J = 0xaL

.field private static final total:J = 0x32L

.field private static totaltime:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const/4 v0, 0x4

    new-array v0, v0, [J

    sput-object v0, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static begin()J
    .locals 3

    .prologue
    .line 24
    const-wide/16 v0, 0x0

    .line 25
    .local v0, "time":J
    sget-boolean v2, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    if-eqz v2, :cond_0

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 28
    :cond_0
    return-wide v0
.end method

.method static end(Ljava/lang/String;IJ)V
    .locals 6
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "level"    # I
    .param p2, "begin"    # J

    .prologue
    .line 32
    sget-boolean v2, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    if-eqz v2, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, p2

    .line 34
    .local v0, "time":J
    sget-object v2, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    sget-object v3, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    aget-wide v4, v3, p1

    add-long/2addr v4, v0

    aput-wide v4, v2, p1

    .line 35
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "NetTimeGaurd[end]"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " total="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    aget-wide v4, v3, p1

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    const-wide/16 v2, 0xa

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 37
    new-instance v2, Lorg/android/spdy/SpdyErrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CallBack:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " timeconsuming:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mustlessthan:10"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v2

    .line 40
    .end local v0    # "time":J
    :cond_0
    return-void
.end method

.method static finish(I)V
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 44
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NetTimeGaurd[finish]:time="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    aget-wide v2, v1, p0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    sget-object v0, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    aget-wide v0, v0, p0

    const-wide/16 v2, 0x32

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 47
    new-instance v0, Lorg/android/spdy/SpdyErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "CallBack totaltimeconsuming:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    aget-wide v2, v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mustlessthan:50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/android/spdy/SpdyErrorException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 50
    :cond_0
    return-void
.end method

.method static start(I)V
    .locals 4
    .param p0, "level"    # I

    .prologue
    .line 18
    sget-boolean v0, Lorg/android/spdy/SpdyAgent;->enableTimeGaurd:Z

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lorg/android/spdy/NetTimeGaurd;->totaltime:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, p0

    .line 21
    :cond_0
    return-void
.end method
