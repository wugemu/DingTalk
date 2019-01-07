.class public Lapd;
.super Ljava/lang/Object;
.source "CalendarAlertManager.java"


# static fields
.field private static volatile a:Lapd;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method static synthetic a(Lapd;IJLjava/util/List;)Lapb;
    .locals 16
    .param p0, "x0"    # Lapd;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/util/List;

    .prologue
    .line 19
    .line 1132
    if-eqz p4, :cond_6

    .line 1136
    const/4 v2, -0x1

    move/from16 v0, p1

    if-eq v0, v2, :cond_6

    .line 1140
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_6

    .line 1144
    const-string/jumbo v2, "pref_key_last_alert_time"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 1145
    const-string/jumbo v2, "pref_key_last_alert_type"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;I)I

    move-result v6

    .line 1146
    const-string/jumbo v2, "pref_key_last_alert_id"

    invoke-static {v2}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 1147
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1149
    const/4 v2, -0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    const-wide/16 v2, -0x2

    cmp-long v2, p2, v2

    if-nez v2, :cond_3

    .line 1150
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move v3, v2

    :goto_0
    if-ltz v3, :cond_2

    .line 1151
    move-object/from16 v0, p4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapb;

    .line 1152
    if-eqz v2, :cond_1

    .line 2067
    iget-wide v12, v2, Lapb;->e:J

    .line 1155
    cmp-long v7, v12, v10

    if-gez v7, :cond_1

    .line 3067
    iget-wide v12, v2, Lapb;->e:J

    .line 1156
    const-wide/32 v14, 0x493e0

    sub-long v14, v10, v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_1

    .line 4067
    iget-wide v12, v2, Lapb;->e:J

    .line 1157
    cmp-long v7, v12, v4

    if-lez v7, :cond_1

    .line 5043
    iget v7, v2, Lapb;->a:I

    .line 1158
    if-ne v7, v6, :cond_0

    .line 5047
    iget-wide v12, v2, Lapb;->b:J

    .line 1158
    cmp-long v7, v12, v8

    if-eqz v7, :cond_1

    .line 1175
    :cond_0
    :goto_1
    return-object v2

    .line 1150
    :cond_1
    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_0

    .line 1162
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 1165
    :cond_3
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lapb;

    .line 1166
    if-eqz v2, :cond_4

    .line 5067
    iget-wide v12, v2, Lapb;->e:J

    .line 1169
    cmp-long v7, v12, v10

    if-gez v7, :cond_4

    .line 6067
    iget-wide v12, v2, Lapb;->e:J

    .line 1170
    const-wide/32 v14, 0x493e0

    sub-long v14, v10, v14

    cmp-long v7, v12, v14

    if-lez v7, :cond_4

    .line 7067
    iget-wide v12, v2, Lapb;->e:J

    .line 1171
    cmp-long v7, v12, v4

    if-lez v7, :cond_4

    .line 8043
    iget v7, v2, Lapb;->a:I

    .line 1172
    if-ne v7, v6, :cond_5

    .line 8047
    iget-wide v12, v2, Lapb;->b:J

    .line 1172
    cmp-long v7, v12, v8

    if-eqz v7, :cond_4

    .line 9043
    :cond_5
    iget v7, v2, Lapb;->a:I

    .line 1173
    move/from16 v0, p1

    if-ne v7, v0, :cond_4

    .line 9047
    iget-wide v12, v2, Lapb;->b:J

    .line 1174
    cmp-long v7, v12, p2

    if-nez v7, :cond_4

    goto :goto_1

    .line 1178
    :cond_6
    const/4 v2, 0x0

    .line 19
    goto :goto_1
.end method

.method static synthetic a(Lapd;Ljava/util/List;)Lapb;
    .locals 6
    .param p0, "x0"    # Lapd;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 19
    .line 9184
    if-eqz p1, :cond_1

    .line 9188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 9189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lapb;

    .line 9190
    if-eqz v0, :cond_0

    .line 10067
    iget-wide v4, v0, Lapb;->e:J

    .line 9193
    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 9194
    :goto_0
    return-object v0

    .line 9197
    :cond_1
    const/4 v0, 0x0

    .line 19
    goto :goto_0
.end method

.method public static a()Lapd;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lapd;->a:Lapd;

    if-nez v0, :cond_1

    .line 28
    const-class v1, Lapd;

    monitor-enter v1

    .line 29
    :try_start_0
    sget-object v0, Lapd;->a:Lapd;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lapd;

    invoke-direct {v0}, Lapd;-><init>()V

    sput-object v0, Lapd;->a:Lapd;

    .line 32
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    :cond_1
    sget-object v0, Lapd;->a:Lapd;

    return-object v0

    .line 32
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(IJLcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "alertType"    # I
    .param p2, "bizId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p4, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/Void;>;"
    new-instance v1, Lapd$1;

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lapd$1;-><init>(Lapd;IJLcom/alibaba/wukong/Callback;)V

    invoke-static {v1}, Lape;->a(Lcom/alibaba/wukong/Callback;)V

    .line 127
    return-void
.end method

.method public final b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 39
    const/4 v0, -0x2

    const-wide/16 v2, -0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v3, v1}, Lapd;->a(IJLcom/alibaba/wukong/Callback;)V

    .line 40
    return-void
.end method
