.class Lanet/channel/strategy/HorseRideStrategy;
.super Ljava/lang/Object;
.source "HorseRideStrategy.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljz;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lanet/channel/strategy/HorseRideStrategy$1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x47ea8a599dcb7207L


# instance fields
.field public final horseRideInterval:J

.field public final horseRideMethod:Ljava/lang/String;

.field public final hrNum:I

.field public lastHorseRideTime:J

.field public final maxParallelConnNum:I

.field public final urlPath:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JII)V
    .locals 1
    .param p1, "horseRideMethod"    # Ljava/lang/String;
    .param p2, "urlPath"    # Ljava/lang/String;
    .param p3, "horseRideInterval"    # J
    .param p5, "maxParallelConnNum"    # I
    .param p6, "hrNum"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lanet/channel/strategy/HorseRideStrategy;->horseRideMethod:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lanet/channel/strategy/HorseRideStrategy;->urlPath:Ljava/lang/String;

    .line 22
    iput-wide p3, p0, Lanet/channel/strategy/HorseRideStrategy;->horseRideInterval:J

    .line 23
    iput p5, p0, Lanet/channel/strategy/HorseRideStrategy;->maxParallelConnNum:I

    .line 24
    iput p6, p0, Lanet/channel/strategy/HorseRideStrategy;->hrNum:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;JIILanet/channel/strategy/HorseRideStrategy$1;)V
    .locals 1
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # I
    .param p6, "x4"    # I
    .param p7, "x5"    # Lanet/channel/strategy/HorseRideStrategy$1;

    .prologue
    .line 9
    invoke-direct/range {p0 .. p6}, Lanet/channel/strategy/HorseRideStrategy;-><init>(Ljava/lang/String;Ljava/lang/String;JII)V

    return-void
.end method


# virtual methods
.method public getHRInterval()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 34
    iget-wide v0, p0, Lanet/channel/strategy/HorseRideStrategy;->horseRideInterval:J

    return-wide v0
.end method

.method public getHRStrategy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lanet/channel/strategy/HorseRideStrategy;->horseRideMethod:Ljava/lang/String;

    return-object v0
.end method

.method public getHrNum()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lanet/channel/strategy/HorseRideStrategy;->hrNum:I

    return v0
.end method

.method public getLastHRTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 49
    iget-wide v0, p0, Lanet/channel/strategy/HorseRideStrategy;->lastHorseRideTime:J

    return-wide v0
.end method

.method public getParallelConnNum()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lanet/channel/strategy/HorseRideStrategy;->maxParallelConnNum:I

    return v0
.end method

.method public getUrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lanet/channel/strategy/HorseRideStrategy;->urlPath:Ljava/lang/String;

    return-object v0
.end method
