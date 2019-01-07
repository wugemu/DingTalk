.class Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;
.super Ljava/lang/Object;
.source "RunningAverageRssiFilter.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Measurement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;",
        ">;"
    }
.end annotation


# instance fields
.field rssi:Ljava/lang/Integer;

.field final synthetic this$0:Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;

.field timestamp:J


# direct methods
.method private constructor <init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->this$0:Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;
    .param p2, "x1"    # Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$1;

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;-><init>(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    invoke-virtual {p0, p1}, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->compareTo(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;)I
    .locals 2
    .param p1, "arg0"    # Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 76
    iget-object v0, p0, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    iget-object v1, p1, Lorg/altbeacon/beacon/service/RunningAverageRssiFilter$Measurement;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method
