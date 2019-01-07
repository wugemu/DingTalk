.class public Lbbv;
.super Ljava/lang/Object;
.source "DingWindowCenter.java"


# static fields
.field private static volatile a:Lbbv;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static a()Lbbv;
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lbbv;->a:Lbbv;

    if-nez v0, :cond_1

    .line 25
    const-class v1, Lbbv;

    monitor-enter v1

    .line 26
    :try_start_0
    sget-object v0, Lbbv;->a:Lbbv;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lbbv;

    invoke-direct {v0}, Lbbv;-><init>()V

    sput-object v0, Lbbv;->a:Lbbv;

    .line 29
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 31
    :cond_1
    sget-object v0, Lbbv;->a:Lbbv;

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

.method public static a(Lbcu;)V
    .locals 4
    .param p0, "dingRemindLaterModel"    # Lbcu;

    .prologue
    .line 51
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 3172
    if-eqz p0, :cond_0

    .line 3175
    iget-object v1, p0, Lbcu;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3178
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbcu;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbbt$6;

    invoke-direct {v3, v0, p0}, Lbbt$6;-><init>(Lbbt;Lbcu;)V

    invoke-virtual {v1, v2, v3}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 54
    :cond_1
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 3199
    if-eqz p0, :cond_0

    .line 3202
    iget-object v1, p0, Lbcu;->a:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Lbkh;->a(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3206
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbcu;->a:Ljava/lang/Long;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lbbu$8;

    invoke-direct {v3, v0, p0}, Lbbu$8;-><init>(Lbbu;Lbcu;)V

    invoke-virtual {v1, v2, v3}, Lbbp;->c(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method public static a(Lbfd;)V
    .locals 4
    .param p0, "taskUpdatedPushObject"    # Lbfd;

    .prologue
    .line 91
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 12398
    if-eqz p0, :cond_0

    .line 13058
    iget-object v1, p0, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 12403
    if-eqz v1, :cond_0

    .line 12407
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12411
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbt$2;

    invoke-direct {v3, v0, v1, p0}, Lbbt$2;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfd;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 13486
    if-eqz p0, :cond_0

    .line 14058
    iget-object v1, p0, Lbfd;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 13491
    if-eqz v1, :cond_0

    .line 13495
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 13499
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbu$3;

    invoke-direct {v3, v0, v1, p0}, Lbbu$3;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfd;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Lbfq;)V
    .locals 4
    .param p0, "invitationUpdatedPushObject"    # Lbfq;

    .prologue
    .line 75
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 8311
    if-eqz p0, :cond_0

    .line 9056
    iget-object v1, p0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 8316
    if-eqz v1, :cond_0

    .line 8320
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 8324
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbt$9;

    invoke-direct {v3, v0, v1, p0}, Lbbt$9;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfq;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 9367
    if-eqz p0, :cond_0

    .line 10056
    iget-object v1, p0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 9372
    if-eqz v1, :cond_0

    .line 9376
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9380
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbu$11;

    invoke-direct {v3, v0, v1, p0}, Lbbu$11;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbfq;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 4
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 43
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 3070
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lbbt;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 3074
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v2

    invoke-virtual {v0, p0, v2, v3}, Lbbu;->a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V
    .locals 3
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p1, "dingAlertModel"    # Lbcf;

    .prologue
    .line 67
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 6261
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 7302
    :cond_0
    :goto_0
    return-void

    .line 6265
    :cond_1
    invoke-static {p0}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6269
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbt$8;

    invoke-direct {v2, v0, p0, p1}, Lbbt$8;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 70
    :cond_2
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 7301
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 7305
    invoke-static {p0}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7309
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbu$10;

    invoke-direct {v2, v0, p0, p1}, Lbbu$10;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lbcf;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;I)V
    .locals 10
    .param p0, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p1, "showType"    # Lcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;
    .param p2, "type"    # I

    .prologue
    const-wide/32 v8, 0xea60

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 59
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v2

    .line 4197
    if-eqz p0, :cond_0

    .line 4201
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v4

    mul-long/2addr v4, v8

    sub-long v4, v0, v4

    .line 4202
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4203
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DingFloatWindowCenter before cache match. dingId="

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 5232
    :cond_0
    :goto_0
    return-void

    .line 4207
    :cond_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbbt$7;

    move-object v3, p0

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lbbt$7;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;JI)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 62
    :cond_2
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v2

    .line 5225
    if-eqz p0, :cond_0

    .line 5229
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->Y()J

    move-result-wide v4

    mul-long/2addr v4, v8

    sub-long v4, v0, v4

    .line 5230
    invoke-static {}, Lbbr;->a()Lbbr;

    move-result-object v0

    invoke-virtual {v0, p0, v4, v5}, Lbbr;->b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5231
    new-array v0, v7, [Ljava/lang/String;

    const-string/jumbo v1, "DingPopWindowCenter before cache match. dingId="

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 5235
    :cond_3
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbbu$9;

    move-object v3, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lbbu$9;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;JLcom/alibaba/android/dingtalkbase/tools/DDPopupWindowShowObject$SHOW_TYPE;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Ljava/lang/Iterable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "dings":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 1051
    if-eqz p0, :cond_0

    .line 1055
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbt$1;

    invoke-direct {v2, v0, p0}, Lbbt$1;-><init>(Lbbt;Ljava/lang/Iterable;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 2055
    if-eqz p0, :cond_0

    .line 2059
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lbbu$1;

    invoke-direct {v2, v0, p0}, Lbbu$1;-><init>(Lbbu;Ljava/lang/Iterable;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static b(Lbfq;)V
    .locals 4
    .param p0, "invitationUpdatedPushObject"    # Lbfq;

    .prologue
    .line 83
    invoke-static {}, Lbbv;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    invoke-static {}, Lbbt;->a()Lbbt;

    move-result-object v0

    .line 10354
    if-eqz p0, :cond_0

    .line 11056
    iget-object v1, p0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 10360
    if-eqz v1, :cond_0

    .line 10364
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 10368
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbt$10;

    invoke-direct {v3, v0, v1}, Lbbt$10;-><init>(Lbbt;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    .line 11426
    if-eqz p0, :cond_0

    .line 12056
    iget-object v1, p0, Lbfq;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 11432
    if-eqz v1, :cond_0

    .line 11436
    invoke-static {v1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 11440
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lbbu$2;

    invoke-direct {v3, v0, v1}, Lbbu$2;-><init>(Lbbu;Lcom/alibaba/android/ding/base/objects/ObjectDing;)V

    invoke-virtual {v2, v3}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private static b()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 99
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v2, "config_switch_ding_show_float_window"

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    invoke-static {}, Lcjq;->a()Lcjq;

    invoke-static {}, Lcjq;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
