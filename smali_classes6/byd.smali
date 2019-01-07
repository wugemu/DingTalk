.class public final Lbyd;
.super Ljava/lang/Object;
.source "AppMonitorUtils.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "webViewLoad"

    aput-object v1, v0, v2

    sput-object v0, Lbyd;->a:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "h5url"

    aput-object v1, v0, v2

    const-string/jumbo v1, "liveurl"

    aput-object v1, v0, v3

    sput-object v0, Lbyd;->b:[Ljava/lang/String;

    .line 29
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "Page_LV_LivePlay_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Page_LV_LivePlay_2"

    aput-object v1, v0, v3

    sput-object v0, Lbyd;->c:[Ljava/lang/String;

    .line 30
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "Monitor_LV_LivePlay_1"

    aput-object v1, v0, v2

    const-string/jumbo v1, "Monitor_LV_LivePlay_2"

    aput-object v1, v0, v3

    sput-object v0, Lbyd;->d:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 5

    .prologue
    .line 34
    sget-object v2, Lbyd;->b:[Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 35
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    sget-object v2, Lbyd;->a:[Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 36
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "LV_HugeLive_Module"

    const-string/jumbo v3, "LV_HugeLive_PerformanceTable"

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v0, v4}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V

    .line 37
    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "loadTime"    # J

    .prologue
    .line 40
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v0

    .line 41
    .local v0, "dimensionValueSet":Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;
    const-string/jumbo v2, "h5url"

    invoke-virtual {v0, v2, p0}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    .line 42
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v1

    .line 43
    .local v1, "measureValueSet":Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;
    const-string/jumbo v2, "webViewLoad"

    long-to-double v4, p1

    invoke-virtual {v1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    .line 44
    const-string/jumbo v2, "LV_HugeLive_Module"

    const-string/jumbo v3, "LV_HugeLive_PerformanceTable"

    invoke-static {v2, v3, v0, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    .line 1050
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1051
    const-string/jumbo v3, "h5url"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string/jumbo v3, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    invoke-static {v2}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1054
    const-string/jumbo v3, "Page_LVHugeLive"

    const-string/jumbo v4, "LVHugeLive_WebView_Monitor"

    invoke-static {v3, v4, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "index"    # I

    .prologue
    .line 65
    if-ltz p2, :cond_0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "liveurl"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string/jumbo v2, "live_play_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string/jumbo v2, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "mapStr":Ljava/lang/String;
    sget-object v2, Lbyd;->c:[Ljava/lang/String;

    aget-object v2, v2, p2

    sget-object v3, Lbyd;->d:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-static {v2, v3, v1}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "mapStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "ip"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "errorCode"    # Ljava/lang/String;
    .param p4, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 75
    if-ltz p2, :cond_0

    const/4 v2, 0x2

    if-ge p2, v2, :cond_0

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 77
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "liveurl"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v2, "live_play_id"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v2, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 81
    .local v1, "mapStr":Ljava/lang/String;
    sget-object v2, Lbyd;->c:[Ljava/lang/String;

    aget-object v2, v2, p2

    sget-object v3, Lbyd;->d:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-static {v2, v3, v1, p3, p4}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "mapStr":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 58
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "h5url"

    invoke-virtual {v0, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v2, "user_id"

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v3

    invoke-virtual {v3}, Lccr;->c()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "mapStr":Ljava/lang/String;
    const-string/jumbo v2, "Page_LVHugeLive"

    const-string/jumbo v3, "LVHugeLive_WebView_Monitor"

    invoke-static {v2, v3, v1, p1, p2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Alarm;->commitFail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method
