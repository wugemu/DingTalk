.class public Lcom/alibaba/wukong/auth/AuthExtension;
.super Lcom/laiwang/protocol/android/Extension;
.source "AuthExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;
    }
.end annotation


# static fields
.field public static sMainOrgId:J


# instance fields
.field protected mContext:Landroid/content/Context;

.field private traceToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/alibaba/wukong/auth/AuthExtension;->sMainOrgId:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/laiwang/protocol/android/Extension;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->initData()V

    .line 59
    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/wukong/auth/AuthExtension;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/wukong/auth/AuthExtension;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getSyncVersion()I

    move-result v0

    return v0
.end method

.method private convertTOSyncTopicModel(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/auth/ah;
    .locals 4
    .param p1, "syncinfo"    # Lcom/alibaba/wukong/auth/az;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 265
    if-nez p1, :cond_0

    .line 266
    const/4 v0, 0x0

    .line 276
    :goto_0
    return-object v0

    .line 269
    :cond_0
    new-instance v0, Lcom/alibaba/wukong/auth/ah;

    invoke-direct {v0}, Lcom/alibaba/wukong/auth/ah;-><init>()V

    .line 270
    .local v0, "syncTopicModel":Lcom/alibaba/wukong/auth/ah;
    iget-wide v2, p1, Lcom/alibaba/wukong/auth/az;->bf:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ah;->as:Ljava/lang/Long;

    .line 271
    iget-wide v2, p1, Lcom/alibaba/wukong/auth/az;->bc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ah;->aq:Ljava/lang/Long;

    .line 272
    iget-wide v2, p1, Lcom/alibaba/wukong/auth/az;->bd:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ah;->ar:Ljava/lang/Long;

    .line 273
    iget-object v1, p1, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ah;->tag:Ljava/lang/String;

    .line 274
    iget-wide v2, p1, Lcom/alibaba/wukong/auth/az;->be:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/wukong/auth/ah;->timestamp:Ljava/lang/Long;

    goto :goto_0
.end method

.method private getSyncVersion()I
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 280
    const/4 v3, 0x6

    .line 281
    .local v3, "version":I
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v4

    const-string/jumbo v5, "wk_sync"

    const-string/jumbo v6, "wk_sync_version"

    invoke-virtual {v4, v5, v6}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 283
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 285
    .local v2, "val":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 286
    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v1

    .line 287
    .local v1, "v":I
    const/4 v4, 0x6

    if-gt v1, v4, :cond_0

    .line 288
    move v3, v1

    .line 292
    .end local v1    # "v":I
    .end local v2    # "val":Ljava/lang/String;
    :cond_0
    return v3
.end method

.method private declared-synchronized getVersion()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getWKVersion()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "ver":Ljava/lang/String;
    const-string/jumbo v1, "[TAG] Auth"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "[Auth] cacheHeader wv "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "base"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 97
    monitor-exit p0

    return-object v0

    .line 95
    .end local v0    # "ver":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private initData()V
    .locals 4

    .prologue
    .line 63
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wk.traceToken"

    invoke-static {v2, v3}, Lifz;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/wukong/auth/AuthExtension;->traceToken:Ljava/lang/String;

    .line 64
    const-string/jumbo v2, "sy"

    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getSyncVersion()I

    move-result v3

    invoke-static {v2, v3}, Lcom/alibaba/wukong/WKManager;->setVersion(Ljava/lang/String;I)V

    .line 65
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.alibaba.wukong.auth.LOGIN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v2, "com.alibaba.wukong.auth.KICKOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    const-string/jumbo v2, "com.alibaba.wukong.auth.LOGOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    iget-object v2, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    new-instance v3, Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;

    invoke-direct {v3, p0}, Lcom/alibaba/wukong/auth/AuthExtension$AuthReceiver;-><init>(Lcom/alibaba/wukong/auth/AuthExtension;)V

    invoke-virtual {v2, v3, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public authHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 145
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v0, "authHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/sync/SyncService;->getSyncInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v1

    .line 148
    .local v1, "info":Lcom/alibaba/wukong/auth/az;
    if-eqz v1, :cond_0

    .line 149
    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "syncInfo":Ljava/lang/String;
    const-string/jumbo v3, "[TAG] Auth header"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "[Auth] syncInfo "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "base"

    invoke-static {v3, v4, v5}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string/jumbo v3, "sync"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .end local v2    # "syncInfo":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public authSyncContext()[B
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    .line 159
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->isSupportMultiChannel()Z

    move-result v6

    if-nez v6, :cond_0

    .line 160
    const-string/jumbo v6, "[TAG] Auth header"

    const-string/jumbo v7, "[Auth] multiChannel off"

    const-string/jumbo v8, "base"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const/4 v1, 0x0

    .line 208
    :goto_0
    return-object v1

    .line 164
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/sync/SyncService;->getSyncInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v5

    .line 165
    .local v5, "syncinfo":Lcom/alibaba/wukong/auth/az;
    if-nez v5, :cond_1

    .line 166
    new-instance v5, Lcom/alibaba/wukong/auth/az;

    .end local v5    # "syncinfo":Lcom/alibaba/wukong/auth/az;
    invoke-direct {v5}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 167
    .restart local v5    # "syncinfo":Lcom/alibaba/wukong/auth/az;
    iput-wide v10, v5, Lcom/alibaba/wukong/auth/az;->bf:J

    .line 168
    iput-wide v10, v5, Lcom/alibaba/wukong/auth/az;->bd:J

    .line 169
    iput-wide v10, v5, Lcom/alibaba/wukong/auth/az;->bc:J

    .line 170
    iput-wide v10, v5, Lcom/alibaba/wukong/auth/az;->be:J

    .line 171
    const-string/jumbo v6, ""

    iput-object v6, v5, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    .line 172
    const-string/jumbo v6, "sync"

    iput-object v6, v5, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    .line 174
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 175
    .local v2, "stringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v6, "[Auth] syncInfo "

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 176
    const-string/jumbo v6, "[TAG] Auth header"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "base"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v3, Lcom/alibaba/wukong/auth/aa;

    invoke-direct {v3}, Lcom/alibaba/wukong/auth/aa;-><init>()V

    .line 179
    .local v3, "syncContextModel":Lcom/alibaba/wukong/auth/aa;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v3, Lcom/alibaba/wukong/auth/aa;->an:Ljava/util/Map;

    .line 181
    iget-object v6, v3, Lcom/alibaba/wukong/auth/aa;->an:Ljava/util/Map;

    const-string/jumbo v7, "sync"

    invoke-direct {p0, v5}, Lcom/alibaba/wukong/auth/AuthExtension;->convertTOSyncTopicModel(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/auth/ah;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {}, Lcom/alibaba/wukong/sync/SyncService;->getInstance()Lcom/alibaba/wukong/sync/SyncService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/sync/SyncService;->getSyncAInfo()Lcom/alibaba/wukong/auth/az;

    move-result-object v4

    .line 184
    .local v4, "syncainfo":Lcom/alibaba/wukong/auth/az;
    if-nez v4, :cond_2

    .line 185
    new-instance v4, Lcom/alibaba/wukong/auth/az;

    .end local v4    # "syncainfo":Lcom/alibaba/wukong/auth/az;
    invoke-direct {v4}, Lcom/alibaba/wukong/auth/az;-><init>()V

    .line 186
    .restart local v4    # "syncainfo":Lcom/alibaba/wukong/auth/az;
    iput-wide v10, v4, Lcom/alibaba/wukong/auth/az;->bf:J

    .line 187
    iput-wide v10, v4, Lcom/alibaba/wukong/auth/az;->bd:J

    .line 188
    iput-wide v10, v4, Lcom/alibaba/wukong/auth/az;->bc:J

    .line 189
    iput-wide v10, v4, Lcom/alibaba/wukong/auth/az;->be:J

    .line 190
    const-string/jumbo v6, ""

    iput-object v6, v4, Lcom/alibaba/wukong/auth/az;->bg:Ljava/lang/String;

    .line 191
    const-string/jumbo v6, "synca"

    iput-object v6, v4, Lcom/alibaba/wukong/auth/az;->bh:Ljava/lang/String;

    .line 194
    :cond_2
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 195
    const-string/jumbo v6, " [Auth] syncaInfo "

    invoke-virtual {v2, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/az;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 196
    const-string/jumbo v6, "[TAG] Auth header"

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "base"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v6, v3, Lcom/alibaba/wukong/auth/aa;->an:Ljava/util/Map;

    const-string/jumbo v7, "synca"

    invoke-direct {p0, v4}, Lcom/alibaba/wukong/auth/AuthExtension;->convertTOSyncTopicModel(Lcom/alibaba/wukong/auth/az;)Lcom/alibaba/wukong/auth/ah;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const/4 v1, 0x0

    .line 203
    .local v1, "result":[B
    :try_start_0
    const-string/jumbo v6, "p"

    invoke-static {v6}, Ljad;->a(Ljava/lang/String;)Ljac;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v3, v7}, Ljac;->a(Ljava/lang/Object;Z)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto/16 :goto_0

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "[TAG] Auth"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "[Auth] authSyncContext cast error "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "base"

    invoke-static {v6, v7, v8}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cacheHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "cacheHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "token"

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v2, "ua"

    iget-object v3, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/alibaba/wukong/WKManager;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string/jumbo v2, "did"

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/wukong/auth/AuthService;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string/jumbo v2, "app-key"

    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getAppKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string/jumbo v2, "trace"

    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getTraceToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ligb;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string/jumbo v2, "wv"

    invoke-direct {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getVersion()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string/jumbo v2, "set-ver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v4

    .line 1184
    iget-object v4, v4, Lifo;->a:Lcom/alibaba/wukong/auth/aq;

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/aq;->getVersion()J

    move-result-wide v4

    .line 136
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lcom/alibaba/wukong/auth/j;->e()Lcom/alibaba/wukong/auth/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "CS_IDX_VER"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/wukong/auth/j;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "csVer":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v1, "0"

    .line 139
    :cond_0
    const-string/jumbo v2, "cs-idx-ver"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    return-object v0
.end method

.method public configSwitch(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public final deviceAuthResult(Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;)V
    .locals 0
    .param p1, "result"    # Lcom/laiwang/protocol/android/DeviceListener$DeviceAuthResult;

    .prologue
    .line 236
    return-void
.end method

.method protected getAppKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alibaba/wukong/WKManager;->getAppKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTraceToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alibaba/wukong/auth/AuthExtension;->traceToken:Ljava/lang/String;

    return-object v0
.end method

.method public lwsSwitch()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 256
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v2

    const-string/jumbo v3, "wk_lwp"

    const-string/jumbo v4, "lws_ctl"

    invoke-virtual {v2, v3, v4}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 258
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 259
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ligb;->f(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 261
    :cond_0
    :goto_0
    return v1

    .line 259
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public mainOrgId()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 314
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final noAuthUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "/r/OAuthI/refreshToken"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "/r/OAuthI/login"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "/r/OAuthI/sendLoginSms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "/r/OAuthI/alogin"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onHeartBeat()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 239
    invoke-static {}, Lcom/alibaba/wukong/auth/b;->a()Lcom/alibaba/wukong/auth/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/wukong/auth/b;->b()V

    .line 241
    iget-object v2, p0, Lcom/alibaba/wukong/auth/AuthExtension;->mContext:Landroid/content/Context;

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    .line 242
    .local v1, "mgr":Ldq;
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.dingtalk.HEARTBEAT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 244
    return-void
.end method

.method public thirdPartHeartbeat()Z
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 247
    invoke-static {}, Lifo;->a()Lifo;

    move-result-object v2

    const-string/jumbo v3, "wk_lwp"

    const-string/jumbo v4, "hw_hb"

    invoke-virtual {v2, v3, v4}, Lifo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/wukong/settings/CloudSetting;

    move-result-object v0

    .line 249
    .local v0, "setting":Lcom/alibaba/wukong/settings/CloudSetting;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 250
    invoke-interface {v0}, Lcom/alibaba/wukong/settings/CloudSetting;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ligb;->a(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v1

    .line 250
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final tokenAuthResult(Lcom/laiwang/protocol/android/TokenListener$AuthResult;)V
    .locals 0
    .param p1, "result"    # Lcom/laiwang/protocol/android/TokenListener$AuthResult;

    .prologue
    .line 232
    return-void
.end method

.method public final tokenInvalid()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 225
    const-string/jumbo v0, "[TAG] Auth login"

    const-string/jumbo v1, "[Auth] token invalid"

    const-string/jumbo v2, "auth"

    invoke-static {v0, v1, v2}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/wukong/auth/AuthService;->refreshToken()V

    .line 227
    return-void
.end method

.method public final tokenRequired()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 218
    const-string/jumbo v1, "[TAG] Auth login"

    const-string/jumbo v2, "[Auth] token require"

    const-string/jumbo v3, "auth"

    invoke-static {v1, v2, v3}, Lhzt;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/wukong/auth/AuthService;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "token":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/wukong/auth/AuthService;->subscribe(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public vhost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    const-string/jumbo v0, "WK"

    return-object v0
.end method

.method protected vipParams()Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 102
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 103
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "appkey"

    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->getAppKey()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getEnvironment()Lcom/alibaba/wukong/WKConstants$Environment;

    move-result-object v0

    .line 105
    .local v0, "env":Lcom/alibaba/wukong/WKConstants$Environment;
    sget-object v6, Lcom/alibaba/wukong/WKConstants$Environment;->ONLINE:Lcom/alibaba/wukong/WKConstants$Environment;

    if-eq v0, v6, :cond_0

    .line 106
    const-string/jumbo v6, "env"

    invoke-virtual {v0}, Lcom/alibaba/wukong/WKConstants$Environment;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alibaba/wukong/auth/AuthService;->getOpenId()J

    move-result-wide v2

    .line 109
    .local v2, "openId":J
    cmp-long v6, v2, v8

    if-eqz v6, :cond_1

    .line 110
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "@"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/alibaba/wukong/auth/AuthService;->getInstance()Lcom/alibaba/wukong/auth/AuthService;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alibaba/wukong/auth/AuthService;->getDomain()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/laiwang/protocol/Config;->_UID:Ljava/lang/String;

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/wukong/auth/AuthExtension;->mainOrgId()J

    move-result-wide v4

    .line 113
    .local v4, "orgId":J
    cmp-long v6, v4, v8

    if-eqz v6, :cond_2

    .line 114
    sput-wide v4, Lcom/alibaba/wukong/auth/AuthExtension;->sMainOrgId:J

    .line 115
    const-string/jumbo v6, "orgId"

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :cond_2
    return-object v1
.end method
