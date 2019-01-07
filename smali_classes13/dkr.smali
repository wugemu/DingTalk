.class public final Ldkr;
.super Ljava/lang/Object;
.source "AggregationFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;)Ldkt;
    .locals 1
    .param p0, "type"    # Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    .prologue
    .line 11
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->Shopping:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    if-ne p0, v0, :cond_0

    .line 12
    new-instance v0, Ldkw;

    invoke-direct {v0}, Ldkw;-><init>()V

    .line 18
    :goto_0
    return-object v0

    .line 13
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->CampusStudent:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    if-ne p0, v0, :cond_1

    .line 14
    new-instance v0, Ldkv;

    invoke-direct {v0}, Ldkv;-><init>()V

    goto :goto_0

    .line 15
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;->CampusHr:Lcom/alibaba/android/dingtalkim/imtools/aggregation/AggregationType;

    if-ne p0, v0, :cond_2

    .line 16
    new-instance v0, Ldku;

    invoke-direct {v0}, Ldku;-><init>()V

    goto :goto_0

    .line 18
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
