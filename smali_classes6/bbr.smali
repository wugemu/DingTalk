.class public Lbbr;
.super Ljava/lang/Object;
.source "DingDisappearManager.java"


# static fields
.field private static volatile b:Lbbr;


# instance fields
.field public a:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lbet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbbr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    return-void
.end method

.method public static a()Lbbr;
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lbbr;->b:Lbbr;

    if-nez v0, :cond_1

    .line 29
    const-class v1, Lbbr;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lbbr;->b:Lbbr;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lbbr;

    invoke-direct {v0}, Lbbr;-><init>()V

    sput-object v0, Lbbr;->b:Lbbr;

    .line 33
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    :cond_1
    sget-object v0, Lbbr;->b:Lbbr;

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JJ)Z
    .locals 5
    .param p1, "dingId"    # J
    .param p3, "remindTime"    # J

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-static {p1, p2}, Lbkh;->a(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 62
    :cond_0
    :goto_0
    return v1

    .line 61
    :cond_1
    iget-object v2, p0, Lbbr;->a:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbet;

    .line 62
    .local v0, "disappearObject":Lbet;
    if-eqz v0, :cond_0

    .line 1024
    iget-wide v2, v0, Lbet;->b:J

    .line 62
    cmp-long v2, v2, p3

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z
    .locals 10
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "remindTime"    # J

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 72
    if-nez p1, :cond_0

    .line 108
    :goto_0
    return v2

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    .line 1109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 77
    .local v0, "dingId":J
    invoke-direct {p0, v0, v1, p2, p3}, Lbbr;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 78
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow cache match, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_1
    invoke-static {p1}, Lbkh;->c(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 83
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow not receiver , dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 87
    :cond_2
    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;->Unconfirmed:Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ab()Lcom/alibaba/android/ding/base/objects/ObjectDing$ConfirmationStatus;

    move-result-object v5

    if-eq v4, v5, :cond_3

    .line 88
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow confirmed, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 93
    :cond_3
    invoke-static {p1}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1}, Lbkh;->s(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lbkh;->Q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 94
    :cond_4
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow meeting confirmed dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 98
    :cond_5
    invoke-static {p1}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 99
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow task is cc , dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_6
    invoke-static {p1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 104
    new-array v4, v8, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideNewDingPopupWindow  ding is delete, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    move v2, v3

    .line 108
    goto/16 :goto_0
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/ObjectDing;J)Z
    .locals 8
    .param p1, "ding"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;
    .param p2, "remindTime"    # J

    .prologue
    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 119
    invoke-static {p1}, Lbkh;->k(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 120
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideRemindPopupWindow  ding is delete, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    .line 142
    :goto_0
    return v2

    .line 124
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v4

    .line 2109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 125
    .local v0, "dingId":J
    invoke-direct {p0, v0, v1, p2, p3}, Lbbr;->a(JJ)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 126
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideRemindPopupWindow dismiss cache match, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p1}, Lbkh;->Q(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 132
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideRemindPopupWindow meeting is over or canceled or deleted, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-static {p1}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 138
    new-array v4, v5, [Ljava/lang/String;

    const-string/jumbo v5, "shouldHideRemindPopupWindow task is finish or done, dingId="

    aput-object v5, v4, v3

    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    invoke-static {v4}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move v2, v3

    .line 142
    goto :goto_0
.end method
