.class public Lcbh;
.super Ljava/lang/Object;
.source "RedBombManager.java"


# static fields
.field private static volatile a:Lcbh;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lcbh;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcbh;->a:Lcbh;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lcbh;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lcbh;->a:Lcbh;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcbh;

    invoke-direct {v0}, Lcbh;-><init>()V

    sput-object v0, Lcbh;->a:Lcbh;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lcbh;->a:Lcbh;

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;
    .locals 12

    .prologue
    const/4 v8, 0x0

    .line 35
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v7

    const-string/jumbo v9, "festivalRedEnvelop"

    const-string/jumbo v10, "red_packet_bomb"

    invoke-virtual {v7, v9, v10}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    .local v5, "jsonString":Ljava/lang/String;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 37
    const-string/jumbo v7, "redpackets"

    const-string/jumbo v9, "getRedBombEntrance"

    const-string/jumbo v10, "getRedBombEntrance null"

    invoke-static {v7, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 57
    :goto_0
    return-object v6

    .line 40
    :cond_0
    const/4 v6, 0x0

    .line 42
    .local v6, "result":Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->b()Lchy;

    move-result-object v7

    invoke-virtual {v7}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v7

    const-class v9, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;

    invoke-static {v7, v5, v9}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    :goto_1
    if-nez v6, :cond_1

    .line 48
    const-string/jumbo v7, "redpackets"

    const-string/jumbo v9, "getRedBombEntrance"

    const-string/jumbo v10, "getRedBombEntrance json from error"

    invoke-static {v7, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 49
    goto :goto_0

    .line 44
    :catch_0
    move-exception v4

    .line 45
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 51
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcms;->u()J

    move-result-wide v2

    .line 52
    .local v2, "currentTime":J
    iget-wide v10, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;->startTime:J

    cmp-long v7, v2, v10

    if-ltz v7, :cond_2

    iget-wide v10, v6, Lcom/aliaba/android/dingtalk/redpackets/base/models/RedBombEntrance;->endTime:J

    cmp-long v7, v2, v10

    if-gez v7, :cond_2

    .line 53
    const-string/jumbo v7, "redpackets"

    const-string/jumbo v8, "getRedBombEntrance"

    const-string/jumbo v9, "getRedBombEntrance success"

    invoke-static {v7, v8, v9}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_2
    const-string/jumbo v7, "redpackets"

    const-string/jumbo v9, "getRedBombEntrance"

    const-string/jumbo v10, "getRedBombEntrance not in time range"

    invoke-static {v7, v9, v10}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v8

    .line 57
    goto :goto_0
.end method
