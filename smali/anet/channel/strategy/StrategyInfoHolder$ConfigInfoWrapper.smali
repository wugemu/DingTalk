.class Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;
.super Ljava/lang/Object;
.source "StrategyInfoHolder.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/strategy/StrategyInfoHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfigInfoWrapper"
.end annotation


# static fields
.field static final FILE_NAME:Ljava/lang/String; = "config"

.field private static final serialVersionUID:J = -0x72c05cf30a7b3d1dL


# instance fields
.field hRStrategyMap:Lanet/channel/strategy/HorseRideStrategyMap;

.field safeAisleMap:Lanet/channel/strategy/SafeAislesMap;

.field unitMap:Lanet/channel/strategy/UnitMap;


# direct methods
.method constructor <init>(Lanet/channel/strategy/StrategyInfoHolder;)V
    .locals 1
    .param p1, "holder"    # Lanet/channel/strategy/StrategyInfoHolder;

    .prologue
    const/4 v0, 0x0

    .line 334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->unitMap:Lanet/channel/strategy/UnitMap;

    .line 331
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->safeAisleMap:Lanet/channel/strategy/SafeAislesMap;

    .line 332
    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->hRStrategyMap:Lanet/channel/strategy/HorseRideStrategyMap;

    .line 335
    iget-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->unitMap:Lanet/channel/strategy/UnitMap;

    .line 336
    iget-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->safeAisleMap:Lanet/channel/strategy/SafeAislesMap;

    .line 337
    iget-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    iput-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->hRStrategyMap:Lanet/channel/strategy/HorseRideStrategyMap;

    .line 338
    return-void
.end method


# virtual methods
.method fillHolder(Lanet/channel/strategy/StrategyInfoHolder;)V
    .locals 1
    .param p1, "holder"    # Lanet/channel/strategy/StrategyInfoHolder;

    .prologue
    .line 341
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->unitMap:Lanet/channel/strategy/UnitMap;

    iput-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->b:Lanet/channel/strategy/UnitMap;

    .line 342
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->safeAisleMap:Lanet/channel/strategy/SafeAislesMap;

    iput-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->c:Lanet/channel/strategy/SafeAislesMap;

    .line 343
    iget-object v0, p0, Lanet/channel/strategy/StrategyInfoHolder$ConfigInfoWrapper;->hRStrategyMap:Lanet/channel/strategy/HorseRideStrategyMap;

    iput-object v0, p1, Lanet/channel/strategy/StrategyInfoHolder;->d:Lanet/channel/strategy/HorseRideStrategyMap;

    .line 344
    return-void
.end method
