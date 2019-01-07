.class public Lcmp;
.super Ljava/lang/Object;
.source "SilenceModeSetting.java"


# static fields
.field private static a:Lcmp;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcmp;
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcmp;->a:Lcmp;

    if-nez v0, :cond_1

    .line 26
    const-class v1, Lcmp;

    monitor-enter v1

    .line 27
    :try_start_0
    sget-object v0, Lcmp;->a:Lcmp;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcmp;

    invoke-direct {v0}, Lcmp;-><init>()V

    sput-object v0, Lcmp;->a:Lcmp;

    .line 30
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_1
    sget-object v0, Lcmp;->a:Lcmp;

    return-object v0

    .line 30
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Ljava/lang/String;)[J
    .locals 10
    .param p0, "timeRangeString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 120
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 121
    const-string/jumbo v6, ":"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "t":[Ljava/lang/String;
    if-eqz v4, :cond_0

    array-length v6, v4

    if-ne v6, v7, :cond_0

    .line 123
    const-wide/16 v2, 0x0

    .line 124
    .local v2, "startTime":J
    const-wide/16 v0, 0x0

    .line 125
    .local v0, "endTime":J
    const/4 v5, 0x0

    .line 127
    .local v5, "timeSet":Z
    const/4 v6, 0x0

    :try_start_0
    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 128
    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 129
    const/4 v5, 0x1

    .line 131
    :goto_0
    if-eqz v5, :cond_0

    .line 132
    new-array v6, v7, [J

    aput-wide v2, v6, v8

    aput-wide v0, v6, v9

    .line 136
    .end local v0    # "endTime":J
    .end local v2    # "startTime":J
    .end local v4    # "t":[Ljava/lang/String;
    .end local v5    # "timeSet":Z
    :goto_1
    return-object v6

    :cond_0
    new-array v6, v7, [J

    fill-array-data v6, :array_0

    goto :goto_1

    .restart local v0    # "endTime":J
    .restart local v2    # "startTime":J
    .restart local v4    # "t":[Ljava/lang/String;
    .restart local v5    # "timeSet":Z
    :catch_0
    move-exception v6

    goto :goto_0

    :array_0
    .array-data 8
        0x4b87f00
        0x1b77400
    .end array-data
.end method


# virtual methods
.method public final a(JJ)V
    .locals 7
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J

    .prologue
    .line 50
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "silence_mode_time_range"

    .line 1140
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, ":"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    sget-object v4, Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;->ALL:Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcmt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/settings/CloudSetting$EffectScopeType;)V

    .line 51
    return-void
.end method

.method public final b()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 38
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "silence_mode"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1104
    const-string/jumbo v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1105
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1108
    :cond_0
    const/4 v0, 0x0

    .line 38
    goto :goto_0
.end method

.method public final c()[J
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 46
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "user_settings"

    const-string/jumbo v2, "silence_mode_time_range"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcmp;->a(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public final d()Z
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v4, 0x0

    .line 54
    invoke-virtual {p0}, Lcmp;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p0}, Lcmp;->c()[J

    move-result-object v7

    .line 2092
    .local v7, "t":[J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 2093
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v3

    .line 2094
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2095
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2096
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v0

    .line 2097
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 2098
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v3, v11}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v3

    move v5, v4

    move v6, v4

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    .line 2099
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long v8, v12, v0

    .line 57
    .local v8, "nowDayTime":J
    if-eqz v7, :cond_0

    array-length v0, v7

    if-ne v0, v11, :cond_0

    .line 58
    aget-wide v0, v7, v4

    aget-wide v2, v7, v10

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 59
    aget-wide v0, v7, v4

    cmp-long v0, v8, v0

    if-ltz v0, :cond_0

    aget-wide v0, v7, v10

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    move v4, v10

    .line 69
    .end local v7    # "t":[J
    .end local v8    # "nowDayTime":J
    :cond_0
    :goto_0
    return v4

    .line 63
    .restart local v7    # "t":[J
    .restart local v8    # "nowDayTime":J
    :cond_1
    aget-wide v0, v7, v4

    cmp-long v0, v8, v0

    if-gez v0, :cond_2

    aget-wide v0, v7, v10

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    :cond_2
    move v4, v10

    .line 64
    goto :goto_0
.end method
