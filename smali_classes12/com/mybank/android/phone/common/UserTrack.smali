.class public Lcom/mybank/android/phone/common/UserTrack;
.super Ljava/lang/Object;
.source "UserTrack.java"


# static fields
.field private static ALI_TRACKER:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mybank/android/phone/common/UserTrack;->ALI_TRACKER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 3
    .param p0, "error"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-static {}, Lika;->e()Likn;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Likn;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 167
    return-void
.end method

.method public static error(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "error"    # Ljava/lang/Throwable;

    .prologue
    .line 170
    invoke-static {}, Lika;->e()Likn;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;->MONITORPOINT_CLIENTSERR:Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;

    invoke-interface {v0, v1, p0}, Likn;->a(Lcom/alipay/mobile/common/logging/api/monitor/ExceptionID;Ljava/lang/Throwable;)V

    .line 172
    return-void
.end method

.method public static event(Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;

    .prologue
    .line 112
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/mybank/android/phone/common/UserTrack;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;

    .prologue
    .line 116
    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/mybank/android/phone/common/UserTrack;->event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    return-void
.end method

.method public static event(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "extParamKey"    # Ljava/lang/String;
    .param p5, "extParamValue"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    :goto_0
    return-void

    .line 126
    :cond_0
    sget-boolean v1, Lcom/mybank/android/phone/common/UserTrack;->ALI_TRACKER:Z

    if-eqz v1, :cond_3

    .line 128
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 130
    const-string/jumbo v1, "extra3"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_1
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 134
    invoke-interface {v6, p4, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    :cond_2
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "mayi_"

    const v2, 0xfe03

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 138
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 141
    .end local v0    # "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    new-instance v7, Likj;

    invoke-direct {v7}, Likj;-><init>()V

    .line 3336
    .local v7, "behavor":Likj;
    iput-object p0, v7, Likj;->a:Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 3344
    iput-object p1, v7, Likj;->b:Ljava/lang/String;

    .line 148
    :cond_4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3352
    iput-object p2, v7, Likj;->c:Ljava/lang/String;

    .line 152
    :cond_5
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 3360
    iput-object p3, v7, Likj;->d:Ljava/lang/String;

    .line 156
    :cond_6
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 157
    invoke-virtual {v7, p4, p5}, Likj;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    :cond_7
    invoke-static {}, Lika;->c()Likl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2, v7}, Likl;->a(Ljava/lang/String;Likj;)V

    goto :goto_0
.end method

.method public static openPage(Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;

    .prologue
    .line 67
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/mybank/android/phone/common/UserTrack;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public static openPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;

    .prologue
    .line 71
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    invoke-static {p0, p1, v0, v1}, Lcom/mybank/android/phone/common/UserTrack;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public static openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string/jumbo v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/mybank/android/phone/common/UserTrack;->openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void
.end method

.method public static openPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    :goto_0
    return-void

    .line 83
    :cond_0
    sget-boolean v1, Lcom/mybank/android/phone/common/UserTrack;->ALI_TRACKER:Z

    if-eqz v1, :cond_2

    .line 85
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    const-string/jumbo v1, "extra3"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :cond_1
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "mayi_"

    const v2, 0xfe02

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 91
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 93
    .end local v0    # "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    new-instance v7, Likj;

    invoke-direct {v7}, Likj;-><init>()V

    .line 2336
    .local v7, "behavor":Likj;
    iput-object p0, v7, Likj;->a:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2344
    iput-object p1, v7, Likj;->b:Ljava/lang/String;

    .line 98
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2352
    iput-object p2, v7, Likj;->c:Ljava/lang/String;

    .line 101
    :cond_4
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 2360
    iput-object p3, v7, Likj;->d:Ljava/lang/String;

    .line 104
    :cond_5
    invoke-static {}, Lika;->c()Likl;

    move-result-object v1

    invoke-interface {v1, v7}, Likl;->b(Likj;)V

    goto :goto_0
.end method

.method public static openPageWithSpmId(Ljava/lang/String;)V
    .locals 2
    .param p0, "seedId"    # Ljava/lang/String;

    .prologue
    .line 175
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    :goto_0
    return-void

    .line 179
    :cond_0
    new-instance v0, Likj;

    invoke-direct {v0}, Likj;-><init>()V

    .line 4336
    .local v0, "behavor":Likj;
    iput-object p0, v0, Likj;->a:Ljava/lang/String;

    .line 4489
    iput-object p0, v0, Likj;->g:Ljava/lang/String;

    .line 182
    invoke-static {}, Lika;->c()Likl;

    move-result-object v1

    invoke-interface {v1, v0}, Likl;->b(Likj;)V

    goto :goto_0
.end method

.method public static trackClick(Ljava/lang/String;)V
    .locals 4
    .param p0, "seedId"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/mybank/android/phone/common/UserTrack;->trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static trackClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string/jumbo v0, ""

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {p0, p1, v0, v1, v2}, Lcom/mybank/android/phone/common/UserTrack;->trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;

    .prologue
    .line 26
    const-string/jumbo v0, ""

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v0, v1}, Lcom/mybank/android/phone/common/UserTrack;->trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public static varargs trackClick(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 9
    .param p0, "seedId"    # Ljava/lang/String;
    .param p1, "param1"    # Ljava/lang/String;
    .param p2, "param2"    # Ljava/lang/String;
    .param p3, "param3"    # Ljava/lang/String;
    .param p4, "extra"    # [Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    :goto_0
    return-void

    .line 34
    :cond_0
    sget-boolean v1, Lcom/mybank/android/phone/common/UserTrack;->ALI_TRACKER:Z

    if-eqz v1, :cond_4

    .line 36
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 37
    .local v6, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 38
    const-string/jumbo v1, "extra3"

    invoke-interface {v6, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_1
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v1, p4

    if-ge v8, v1, :cond_3

    .line 42
    aget-object v1, p4, v8

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    add-int/lit8 v1, v8, 0x1

    aget-object v1, p4, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 43
    aget-object v1, p4, v8

    add-int/lit8 v2, v8, 0x1

    aget-object v2, p4, v2

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :cond_2
    add-int/lit8 v8, v8, 0x2

    goto :goto_1

    .line 47
    :cond_3
    new-instance v0, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;

    const-string/jumbo v1, "mayi_"

    const v2, 0xfdfd

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 48
    .local v0, "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;->build()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ut/mini/UTTracker;->send(Ljava/util/Map;)V

    goto :goto_0

    .line 50
    .end local v0    # "builder":Lcom/ut/mini/internal/UTOriginalCustomHitBuilder;
    .end local v6    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "i":I
    :cond_4
    new-instance v7, Likj;

    invoke-direct {v7}, Likj;-><init>()V

    .line 1336
    .local v7, "behavor":Likj;
    iput-object p0, v7, Likj;->a:Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1344
    iput-object p1, v7, Likj;->b:Ljava/lang/String;

    .line 55
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1352
    iput-object p2, v7, Likj;->c:Ljava/lang/String;

    .line 58
    :cond_6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1360
    iput-object p3, v7, Likj;->d:Ljava/lang/String;

    .line 62
    :cond_7
    invoke-static {}, Lika;->c()Likl;

    move-result-object v1

    invoke-interface {v1, v7}, Likl;->a(Likj;)V

    goto :goto_0
.end method
