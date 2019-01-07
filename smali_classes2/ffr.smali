.class public Lffr;
.super Ljava/lang/Object;
.source "OpenIdExManager.java"


# static fields
.field private static volatile a:Lffr;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static a()Lffr;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lffr;->a:Lffr;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lffr;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lffr;->a:Lffr;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lffr;

    invoke-direct {v0}, Lffr;-><init>()V

    sput-object v0, Lffr;->a:Lffr;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lffr;->a:Lffr;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lffr;Ljava/util/List;)V
    .locals 12
    .param p0, "x0"    # Lffr;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 32
    .line 1081
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1082
    :cond_0
    return-void

    .line 1084
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    .line 1085
    new-instance v7, Lfp;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v7, v0}, Lfp;-><init>(I)V

    .line 1086
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/OpenIdExObject;

    .line 1087
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/alibaba/wukong/im/OpenIdExObject;->getExtTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1091
    :try_start_0
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/OpenIdExObject;->getExtTag()Ljava/lang/String;

    move-result-object v1

    const-class v4, Lffs;

    invoke-static {v2, v1, v4}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lffs;

    .line 1092
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    invoke-virtual {v0}, Lcom/alibaba/wukong/im/OpenIdExObject;->getOpenId()J

    move-result-wide v4

    .line 1094
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1095
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1096
    invoke-static {v8, v9, v4, v5}, Lfbm;->b(JJ)Lfrw;

    move-result-object v6

    .line 1097
    if-eqz v6, :cond_2

    iget-wide v10, v6, Lfrw;->h:J

    cmp-long v0, v10, v0

    if-gez v0, :cond_2

    .line 2096
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v0}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1098
    check-cast v0, Ljava/util/List;

    .line 1099
    if-nez v0, :cond_3

    .line 1100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1101
    invoke-virtual {v7, v8, v9, v0}, Lfp;->b(JLjava/lang/Object;)V

    .line 1103
    :cond_3
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1106
    :catch_0
    move-exception v0

    .line 1107
    const/4 v1, 0x0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "OpenIdExTagObject fromJson failed, error="

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1108
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 1107
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1112
    :cond_4
    invoke-virtual {v7}, Lfp;->a()I

    move-result v8

    .line 1113
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    if-ge v6, v8, :cond_0

    .line 1114
    add-int/lit8 v0, v8, -0x1

    if-ne v6, v0, :cond_6

    const/4 v0, 0x1

    .line 1115
    :goto_2
    invoke-virtual {v7, v6}, Lfp;->a(I)J

    move-result-wide v2

    .line 1116
    invoke-virtual {v7, v6}, Lfp;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2122
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1113
    :cond_5
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    .line 1114
    :cond_6
    const/4 v0, 0x0

    goto :goto_2

    .line 2125
    :cond_7
    new-instance v5, Lffr$2;

    invoke-direct {v5, p0, v0}, Lffr$2;-><init>(Lffr;Z)V

    .line 2167
    invoke-static {}, Lfak;->a()Lezt;

    move-result-object v0

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lezt;->b(Ljava/util/List;JZLcma;)V

    goto :goto_3
.end method
