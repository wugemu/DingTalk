.class public Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
.super Ljava/lang/Object;
.source "AlphaPushManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;
    }
.end annotation


# static fields
.field private static volatile c:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblv",
            "<",
            "Lbms;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblv",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcjp;

.field private f:Lcjo$a;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->d:Z

    .line 77
    new-instance v0, Lcjp;

    invoke-direct {v0}, Lcjp;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->e:Lcjp;

    .line 78
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$1;-><init>(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->f:Lcjo$a;

    .line 113
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->e:Lcjp;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->f:Lcjo$a;

    invoke-virtual {v0, v1}, Lcjp;->a(Lcjo$a;)V

    .line 114
    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .locals 2

    .prologue
    .line 66
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->c:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    if-nez v0, :cond_1

    .line 67
    const-class v1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    monitor-enter v1

    .line 68
    :try_start_0
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->c:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;-><init>()V

    sput-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->c:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    .line 71
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_1
    sget-object v0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->c:Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;

    return-object v0

    .line 71
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .line 1214
    instance-of v0, p1, Lbms;

    if-eqz v0, :cond_0

    .line 1217
    check-cast p1, Lbms;

    .line 1218
    .end local p1    # "x1":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return-void

    .line 1221
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    if-nez v0, :cond_2

    .line 1222
    const-string/jumbo v0, "AlphaPushManager"

    const-string/jumbo v1, "meshResultListeners is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1225
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1226
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lblv;

    .line 1228
    if-eqz v0, :cond_3

    .line 1229
    invoke-interface {v0, p1}, Lblv;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .param p1, "psk"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 273
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    if-nez v2, :cond_1

    .line 283
    :cond_0
    return-void

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 277
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lblv<Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lblv;

    .line 279
    .local v1, "listener":Lblv;, "Lblv<Ljava/lang/String;>;"
    if-eqz v1, :cond_2

    .line 280
    invoke-interface {v1, p1}, Lblv;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .line 2129
    instance-of v0, p1, Lbmv;

    if-eqz v0, :cond_0

    .line 2132
    check-cast p1, Lbmv;

    .line 2133
    .end local p1    # "x1":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 2134
    :cond_0
    :goto_0
    return-void

    .line 2136
    :cond_1
    invoke-static {}, Lbnc;->a()Lbnc;

    move-result-object v0

    iget-object v1, p1, Lbmv;->b:Ljava/lang/String;

    new-instance v2, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$2;-><init>(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Lbmv;)V

    invoke-virtual {v0, v1, v2}, Lbnc;->a(Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 29
    .line 2184
    instance-of v0, p1, Lbmx;

    if-eqz v0, :cond_0

    .line 2187
    check-cast p1, Lbmx;

    .line 2188
    .end local p1    # "x1":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 2203
    :cond_0
    :goto_0
    return-void

    .line 2191
    :cond_1
    const-string/jumbo v0, "AlphaPushManager"

    invoke-virtual {p1}, Lbmx;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2192
    iget-object v0, p1, Lbmx;->a:Ljava/lang/Integer;

    if-nez v0, :cond_2

    .line 2193
    const-string/jumbo v0, "AlphaPushManager"

    const-string/jumbo v1, "updateType is null"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2196
    :cond_2
    iget-object v0, p1, Lbmx;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2198
    :pswitch_0
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v3

    iget-object v4, p1, Lbmx;->d:Ljava/lang/String;

    iget-object v5, p1, Lbmx;->c:Ljava/lang/String;

    .line 3198
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3199
    :cond_3
    const-string/jumbo v0, "AlphaStorage"

    new-array v3, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "params invalid when addSsid, corpId = "

    aput-object v6, v3, v1

    aput-object v4, v3, v2

    const-string/jumbo v1, ", ssid = "

    aput-object v1, v3, v8

    aput-object v5, v3, v9

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3202
    :cond_4
    iget-object v0, v3, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3203
    if-nez v0, :cond_5

    .line 3204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3205
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3206
    iget-object v1, v3, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3207
    invoke-virtual {v3}, Lbnh;->d()V

    goto :goto_0

    .line 3208
    :cond_5
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3209
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3210
    invoke-virtual {v3}, Lbnh;->d()V

    goto/16 :goto_0

    .line 2201
    :pswitch_1
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v3

    iget-object v0, p1, Lbmx;->d:Ljava/lang/String;

    iget-object v4, p1, Lbmx;->b:Ljava/lang/String;

    .line 3237
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 3238
    :cond_6
    const-string/jumbo v3, "AlphaStorage"

    new-array v5, v10, [Ljava/lang/Object;

    const-string/jumbo v6, "params invalid when deleteSsid, corpId = "

    aput-object v6, v5, v1

    aput-object v0, v5, v2

    const-string/jumbo v0, ", ssid = "

    aput-object v0, v5, v8

    aput-object v4, v5, v9

    invoke-static {v5}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2202
    :cond_7
    :goto_1
    iget-object v0, p1, Lbmx;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 3241
    :cond_8
    iget-object v1, v3, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3242
    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3243
    :cond_9
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "ssid is null when deleteSsid"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 3246
    :cond_a
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3247
    invoke-virtual {v3}, Lbnh;->d()V

    goto :goto_1

    .line 2205
    :pswitch_2
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v3

    iget-object v0, p1, Lbmx;->d:Ljava/lang/String;

    iget-object v4, p1, Lbmx;->b:Ljava/lang/String;

    iget-object v5, p1, Lbmx;->c:Ljava/lang/String;

    .line 4215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 4216
    :cond_b
    const-string/jumbo v3, "AlphaStorage"

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "params invalid when updateSsid, corpId = "

    aput-object v7, v6, v1

    aput-object v0, v6, v2

    const-string/jumbo v0, ", oldSsid = "

    aput-object v0, v6, v8

    aput-object v4, v6, v9

    const-string/jumbo v0, ", newSsid "

    aput-object v0, v6, v10

    const/4 v0, 0x5

    aput-object v5, v6, v0

    invoke-static {v6}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2206
    :cond_c
    :goto_2
    iget-object v0, p1, Lbmx;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/alpha/common/WifiUtil;->b(Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 4219
    :cond_d
    iget-object v6, v3, Lbnh;->a:Ljava/util/Map;

    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4220
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_f

    .line 4221
    :cond_e
    const-string/jumbo v0, "AlphaStorage"

    const-string/jumbo v1, "ssid is null when updateSsid"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 4225
    :cond_f
    invoke-interface {v0, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    move v1, v2

    .line 4228
    :cond_10
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v1, v2

    .line 4231
    :cond_11
    if-eqz v1, :cond_c

    .line 4232
    invoke-virtual {v3}, Lbnh;->d()V

    goto :goto_2

    .line 2196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;Ljava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 29
    .line 5117
    instance-of v0, p1, Lbmv;

    if-eqz v0, :cond_0

    .line 5120
    check-cast p1, Lbmv;

    .line 5121
    .end local p1    # "x1":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 5122
    :cond_0
    :goto_0
    return-void

    .line 5124
    :cond_1
    invoke-static {}, Lbnh;->a()Lbnh;

    move-result-object v0

    iget-object v1, p1, Lbmv;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnh;->a(Ljava/lang/String;)V

    .line 5125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->a(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;Ljava/lang/Object;ILjava/lang/String;)V
    .locals 2
    .param p1, "pushType"    # Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "param1"    # I
    .param p4, "param2"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v0, Lcjo$b;

    invoke-direct {v0}, Lcjo$b;-><init>()V

    .line 176
    .local v0, "messageEvent":Lcjo$b;
    iget v1, p1, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager$PushType;->value:I

    iput v1, v0, Lcjo$b;->b:I

    .line 177
    iput-object p2, v0, Lcjo$b;->a:Ljava/lang/Object;

    .line 178
    const/4 v1, 0x0

    iput v1, v0, Lcjo$b;->c:I

    .line 179
    const/4 v1, 0x0

    iput-object v1, v0, Lcjo$b;->d:Ljava/lang/String;

    .line 180
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->e:Lcjp;

    invoke-virtual {v1, v0}, Lcjp;->a(Lcjo$b;)V

    goto :goto_0
.end method

.method public final declared-synchronized b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 161
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->d:Z

    if-nez v0, :cond_0

    .line 162
    const-string/jumbo v0, "AlphaPushManager"

    const-string/jumbo v1, "init alpha push handler"

    invoke-static {v0, v1}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v0, Lbne;

    invoke-direct {v0}, Lbne;-><init>()V

    .line 164
    new-instance v0, Lbnf;

    invoke-direct {v0}, Lbnf;-><init>()V

    .line 165
    new-instance v0, Lbng;

    invoke-direct {v0}, Lbng;-><init>()V

    .line 166
    new-instance v0, Lbnd;

    invoke-direct {v0}, Lbnd;-><init>()V

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/alpha/rpc/push/AlphaPushManager;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :cond_0
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
