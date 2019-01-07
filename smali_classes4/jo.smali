.class public final Ljo;
.super Ljt;
.source "AccsSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljo$a;
    }
.end annotation


# instance fields
.field private w:Lhz;

.field private x:Ljava/lang/String;

.field private y:Lix;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lim;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "info"    # Lim;

    .prologue
    .line 53
    invoke-virtual {p2}, Lim;->c()Lanet/channel/entity/ConnType;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Ljt;-><init>(Landroid/content/Context;Lim;Lanet/channel/entity/ConnType;)V

    .line 50
    const/4 v1, 0x0

    iput-object v1, p0, Ljo;->y:Lix;

    .line 54
    invoke-static {}, Lic;->f()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljo;->x:Ljava/lang/String;

    .line 55
    invoke-static {}, Lanet/channel/SessionCenter;->getInstance()Lanet/channel/SessionCenter;

    move-result-object v1

    invoke-virtual {v1}, Lanet/channel/SessionCenter;->getDataChannelCb()Lhz;

    move-result-object v1

    iput-object v1, p0, Ljo;->w:Lhz;

    .line 56
    iget-object v1, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    const-wide/16 v2, 0x1

    iput-wide v2, v1, Lanet/channel/statist/SessionStatistic;->isKL:J

    .line 58
    invoke-static {}, Lib;->a()Z

    move-result v1

    iput-boolean v1, p0, Ljo;->p:Z

    .line 59
    invoke-static {}, Lanet/channel/heartbeat/HeartbeatManager;->a()Liy;

    move-result-object v0

    .line 60
    .local v0, "factory":Liy;
    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p0}, Liy;->a(Lanet/channel/Session;)Lix;

    move-result-object v1

    iput-object v1, p0, Ljo;->y:Lix;

    .line 63
    :cond_0
    return-void
.end method

.method static synthetic a(Ljo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->o:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)V
    .locals 4
    .param p1, "errorCode"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 174
    sget-object v0, Lanet/channel/Session$Status;->AUTH_FAIL:Lanet/channel/Session$Status;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Ljo;->a(Lanet/channel/Session$Status;Lip;)V

    .line 175
    iget-object v0, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    if-eqz v0, :cond_0

    .line 176
    iget-object v0, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    const-string/jumbo v1, "Accs_Auth_Fail"

    iput-object v1, v0, Lanet/channel/statist/SessionStatistic;->closeReason:Ljava/lang/String;

    .line 177
    iget-object v0, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    int-to-long v2, p1

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->errorCode:J

    .line 179
    :cond_0
    invoke-virtual {p0}, Ljo;->b()V

    .line 180
    return-void
.end method

.method private a(IIZLjava/lang/String;)V
    .locals 1
    .param p1, "dataId"    # I
    .param p2, "errorId"    # I
    .param p3, "needRetry"    # Z
    .param p4, "detail"    # Ljava/lang/String;

    .prologue
    .line 246
    iget-object v0, p0, Ljo;->w:Lhz;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Ljo;->w:Lhz;

    invoke-interface {v0, p1, p2, p3, p4}, Lhz;->a(IIZLjava/lang/String;)V

    .line 249
    :cond_0
    return-void
.end method

.method static synthetic a(Ljo;I)V
    .locals 0
    .param p0, "x0"    # Ljo;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Ljo;->a(I)V

    return-void
.end method

.method static synthetic a(Ljo;Lanet/channel/Session$Status;Lip;)V
    .locals 1
    .param p0, "x0"    # Ljo;
    .param p1, "x1"    # Lanet/channel/Session$Status;
    .param p2, "x2"    # Lip;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljo;->a(Lanet/channel/Session$Status;Lip;)V

    return-void
.end method

.method static synthetic a(Ljo;Lanet/channel/entity/EventType;Lip;)V
    .locals 1
    .param p0, "x0"    # Ljo;
    .param p1, "x1"    # Lanet/channel/entity/EventType;
    .param p2, "x2"    # Lip;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljo;->a(Lanet/channel/entity/EventType;Lip;)V

    return-void
.end method

.method static synthetic b(Ljo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljo;)Lix;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->y:Lix;

    return-object v0
.end method

.method static synthetic d(Ljo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Ljo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Ljo;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljo;

    .prologue
    .line 45
    iget-object v0, p0, Ljo;->o:Ljava/lang/String;

    return-object v0
.end method

.method private n()Ljava/lang/String;
    .locals 13

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v7, 0x2

    const/16 v12, -0x68

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 89
    iget-object v4, p0, Ljo;->a:Landroid/content/Context;

    invoke-static {v4}, Llb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "deviceId":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 95
    :goto_0
    iget-object v4, p0, Ljo;->a:Landroid/content/Context;

    iget-object v8, p0, Ljo;->x:Ljava/lang/String;

    iget-object v9, p0, Ljo;->a:Landroid/content/Context;

    invoke-static {v9}, Llb;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lic;->b:Ljava/lang/String;

    const-string/jumbo v10, "1"

    invoke-static {v4, v8, v9}, Llb;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "appSign":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 99
    .local v2, "url":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "https://"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ljo;->e:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ":"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, p0, Ljo;->f:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "/accs/"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    const-string/jumbo v4, "auth?1="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&2="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&3="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ljo;->x:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    sget-object v4, Lic;->b:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 107
    const-string/jumbo v4, "&4="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lic;->b:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    :cond_0
    const-string/jumbo v4, "&5=1"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&6="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lanet/channel/status/NetworkStatusHelper;->b()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&7="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ljo;->a:Landroid/content/Context;

    invoke-static {v8}, Llb;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&8=1.1.2"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&9="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&10=1"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&11="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&12="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ljo;->a:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&13="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, p0, Ljo;->a:Landroid/content/Context;

    invoke-static {v8}, Llb;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&14="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lic;->g()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&15="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&16="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "&17="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Llb;->a()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    iget-boolean v4, p0, Ljo;->n:Z

    if-eqz v4, :cond_1

    .line 123
    const-string/jumbo v4, "&18=ign-loc"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    :cond_1
    const-string/jumbo v4, "&19="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v4, Lanet/channel/SessionCenter;->SECURITYGUARD_OFF:Z

    if-eqz v4, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "urlString":Ljava/lang/String;
    const-string/jumbo v4, "awcn.AccsSession"

    const-string/jumbo v8, "auth"

    iget-object v9, p0, Ljo;->o:Ljava/lang/String;

    new-array v10, v7, [Ljava/lang/Object;

    const-string/jumbo v11, "auth url"

    aput-object v11, v10, v5

    aput-object v3, v10, v6

    invoke-static {v4, v8, v9, v10}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    iget-object v4, p0, Ljo;->x:Ljava/lang/String;

    .line 1184
    invoke-static {}, Lic;->d()Lanet/channel/entity/ENV;

    move-result-object v8

    sget-object v9, Lanet/channel/entity/ENV;->TEST:Lanet/channel/entity/ENV;

    if-ne v8, v9, :cond_5

    .line 131
    :cond_2
    :goto_2
    if-nez v6, :cond_3

    .line 132
    const-string/jumbo v4, "awcn.AccsSession"

    const-string/jumbo v6, "connect param error!"

    iget-object v7, p0, Ljo;->o:Ljava/lang/String;

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v6, v7, v5}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 133
    invoke-direct {p0, v12}, Ljo;->a(I)V

    .line 134
    const/4 v3, 0x0

    .line 136
    .end local v3    # "urlString":Ljava/lang/String;
    :cond_3
    return-object v3

    :cond_4
    move v4, v6

    .line 126
    goto :goto_1

    .line 1188
    .restart local v3    # "urlString":Ljava/lang/String;
    :cond_5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1194
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1202
    :cond_7
    :goto_3
    new-instance v4, Lanet/channel/statist/ExceptionStatistic;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "1.1.2 errorCode="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Lks;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "rt"

    invoke-direct {v4, v12, v6, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 1205
    invoke-static {}, Lih;->a()Lij;

    move-result-object v6

    invoke-interface {v6, v4}, Lij;->a(Lanet/channel/statist/StatObject;)V

    move v6, v5

    goto :goto_2

    .line 1196
    :cond_8
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    move v6, v7

    .line 1197
    goto :goto_3

    .line 1198
    :cond_9
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1199
    const/4 v6, 0x3

    goto :goto_3

    .end local v0    # "appSign":Ljava/lang/String;
    .end local v2    # "url":Ljava/lang/StringBuilder;
    .end local v3    # "urlString":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_0
.end method


# virtual methods
.method public final a(Lanet/channel/request/Request;Lie;)Lji;
    .locals 6
    .param p1, "request"    # Lanet/channel/request/Request;
    .param p2, "cb"    # Lie;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 81
    iget-object v0, p0, Ljo;->y:Lix;

    if-eqz v0, :cond_0

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljo;->u:J

    .line 83
    iget-object v0, p0, Ljo;->y:Lix;

    iget-wide v2, p0, Ljo;->u:J

    iget-object v1, p0, Ljo;->y:Lix;

    invoke-interface {v1}, Lix;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lix;->a(J)V

    .line 85
    :cond_0
    invoke-super {p0, p1, p2}, Ljt;->a(Lanet/channel/request/Request;Lie;)Lji;

    move-result-object v0

    return-object v0
.end method

.method public final a(I[BI)V
    .locals 12
    .param p1, "dataId"    # I
    .param p2, "data"    # [B
    .param p3, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const-wide/16 v10, 0x1

    const/4 v9, 0x1

    const/4 v7, 0x0

    .line 218
    :try_start_0
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "sendCustomFrame"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "type"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const/16 v5, 0xc8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Ljo;->i:Lanet/channel/Session$Status;

    sget-object v1, Lanet/channel/Session$Status;->AUTH_SUCC:Lanet/channel/Session$Status;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Ljo;->s:Lorg/android/spdy/SpdySession;

    if-eqz v0, :cond_3

    .line 220
    if-eqz p2, :cond_1

    array-length v0, p2

    const/16 v1, 0x4000

    if-le v0, v1, :cond_1

    .line 221
    const/16 v0, -0x12f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Ljo;->a(IIZLjava/lang/String;)V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    iget-object v0, p0, Ljo;->s:Lorg/android/spdy/SpdySession;

    const/16 v2, 0xc8

    const/4 v3, 0x0

    if-nez p2, :cond_2

    move v4, v7

    :goto_1
    move v1, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lorg/android/spdy/SpdySession;->sendCustomControlFrame(IIII[B)I

    .line 225
    iget-object v0, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->requestCount:J

    .line 226
    iget-object v0, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    add-long/2addr v2, v10

    iput-wide v2, v0, Lanet/channel/statist/SessionStatistic;->cfRCount:J

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Ljo;->u:J

    .line 228
    iget-object v0, p0, Ljo;->y:Lix;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Ljo;->y:Lix;

    iget-wide v2, p0, Ljo;->u:J

    iget-object v1, p0, Ljo;->y:Lix;

    invoke-interface {v1}, Lix;->c()J

    move-result-wide v4

    add-long/2addr v2, v4

    invoke-interface {v0, v2, v3}, Lix;->a(J)V
    :try_end_0
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 236
    :catch_0
    move-exception v6

    .line 237
    .local v6, "e":Lorg/android/spdy/SpdyErrorException;
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "sendCustomFrame error"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 238
    const/16 v0, -0x12c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "SpdyErrorException: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Lorg/android/spdy/SpdyErrorException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v9, v1}, Ljo;->a(IIZLjava/lang/String;)V

    goto :goto_0

    .line 223
    .end local v6    # "e":Lorg/android/spdy/SpdyErrorException;
    :cond_2
    :try_start_1
    array-length v4, p2

    goto :goto_1

    .line 233
    :cond_3
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "sendCustomFrame"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "sendCustomFrame con invalid mStatus:"

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Ljo;->i:Lanet/channel/Session$Status;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 234
    const/16 v0, -0x12d

    const/4 v1, 0x1

    const-string/jumbo v2, "session invalid"

    invoke-direct {p0, p1, v0, v1, v2}, Ljo;->a(IIZLjava/lang/String;)V
    :try_end_1
    .catch Lorg/android/spdy/SpdyErrorException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 239
    :catch_1
    move-exception v6

    .line 240
    .local v6, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "sendCustomFrame error"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v6, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 241
    const/16 v0, -0x65

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v9, v1}, Ljo;->a(IIZLjava/lang/String;)V

    goto/16 :goto_0
.end method

.method public final a(Lhz;)V
    .locals 6
    .param p1, "mFrameCb"    # Lhz;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "setFrameCb"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "AccsFrameCb"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 67
    iput-object p1, p0, Ljo;->w:Lhz;

    .line 68
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Ljo;->y:Lix;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Ljo;->y:Lix;

    invoke-interface {v0}, Lix;->b()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Ljo;->y:Lix;

    .line 76
    :cond_0
    invoke-super {p0}, Ljt;->b()V

    .line 77
    return-void
.end method

.method protected final c()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljo$1;

    invoke-direct {v0, p0}, Ljo$1;-><init>(Ljo;)V

    return-object v0
.end method

.method protected final m()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v2, p0, Ljo;->s:Lorg/android/spdy/SpdySession;

    if-nez v2, :cond_1

    .line 141
    sget-object v2, Lanet/channel/Session$Status;->CONNETFAIL:Lanet/channel/Session$Status;

    invoke-virtual {p0, v2, v3}, Ljo;->a(Lanet/channel/Session$Status;Lip;)V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    invoke-direct {p0}, Ljo;->n()Ljava/lang/String;

    move-result-object v8

    .line 146
    .local v8, "url":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 153
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v8}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "u":Ljava/net/URL;
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 155
    new-instance v0, Lorg/android/spdy/SpdyRequest;

    const-string/jumbo v2, "GET"

    sget-object v3, Lorg/android/spdy/RequestPriority;->DEFAULT_PRIORITY:Lorg/android/spdy/RequestPriority;

    iget v4, p0, Ljo;->m:I

    iget v5, p0, Ljo;->l:I

    invoke-direct/range {v0 .. v5}, Lorg/android/spdy/SpdyRequest;-><init>(Ljava/net/URL;Ljava/lang/String;Lorg/android/spdy/RequestPriority;II)V

    .line 164
    .local v0, "req":Lorg/android/spdy/SpdyRequest;
    iget-object v2, p0, Ljo;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/android/spdy/SpdyRequest;->setDomain(Ljava/lang/String;)V

    .line 165
    new-instance v6, Lorg/android/spdy/SpdyDataProvider;

    const/4 v2, 0x0

    invoke-direct {v6, v2}, Lorg/android/spdy/SpdyDataProvider;-><init>([B)V

    .line 166
    .local v6, "provider":Lorg/android/spdy/SpdyDataProvider;
    iget-object v2, p0, Ljo;->s:Lorg/android/spdy/SpdySession;

    iget-object v3, p0, Ljo;->c:Ljava/lang/String;

    new-instance v4, Ljo$a;

    invoke-direct {v4, p0}, Ljo$a;-><init>(Ljo;)V

    invoke-virtual {v2, v0, v6, v3, v4}, Lorg/android/spdy/SpdySession;->submitRequest(Lorg/android/spdy/SpdyRequest;Lorg/android/spdy/SpdyDataProvider;Ljava/lang/Object;Lorg/android/spdy/Spdycb;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    .end local v0    # "req":Lorg/android/spdy/SpdyRequest;
    .end local v1    # "u":Ljava/net/URL;
    .end local v6    # "provider":Lorg/android/spdy/SpdyDataProvider;
    :catch_0
    move-exception v7

    .line 168
    .local v7, "t":Ljava/lang/Throwable;
    const-string/jumbo v2, "awcn.AccsSession"

    const-string/jumbo v3, "auth exception "

    iget-object v4, p0, Ljo;->o:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4, v7, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 169
    const/16 v2, -0x12e

    invoke-direct {p0, v2}, Ljo;->a(I)V

    goto :goto_0
.end method

.method public final spdyCustomControlFrameFailCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;II)V
    .locals 7
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "error"    # I

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 308
    const-string/jumbo v0, "awcn.AccsSession"

    const-string/jumbo v1, "spdyCustomControlFrameFailCallback"

    iget-object v2, p0, Ljo;->o:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "dataId"

    aput-object v5, v3, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v1, v2, v3}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 309
    const-string/jumbo v0, "tnet error"

    invoke-direct {p0, p3, p4, v6, v0}, Ljo;->a(IIZLjava/lang/String;)V

    .line 310
    return-void
.end method

.method public final spdyCustomControlFrameRecvCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;IIII[B)V
    .locals 11
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "sessionUserData"    # Ljava/lang/Object;
    .param p3, "dataId"    # I
    .param p4, "type"    # I
    .param p5, "flags"    # I
    .param p6, "length"    # I
    .param p7, "data"    # [B

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 284
    const-string/jumbo v5, "awcn.AccsSession"

    const-string/jumbo v6, "[spdyCustomControlFrameRecvCallback]"

    iget-object v7, p0, Ljo;->o:Ljava/lang/String;

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "len"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const-string/jumbo v10, "frameCb"

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p0, Ljo;->w:Lhz;

    aput-object v10, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const/4 v5, 0x1

    invoke-static {v5}, Lanet/channel/util/ALog;->a(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 286
    const-string/jumbo v4, ""

    .line 287
    .local v4, "str":Ljava/lang/String;
    const/16 v5, 0x200

    move/from16 v0, p6

    if-ge v0, v5, :cond_1

    .line 288
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p7

    array-length v5, v0

    if-ge v3, v5, :cond_0

    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, p7, v3

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 288
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 291
    :cond_0
    const-string/jumbo v5, "awcn.AccsSession"

    const/4 v6, 0x0

    iget-object v7, p0, Ljo;->o:Ljava/lang/String;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string/jumbo v10, "str"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 295
    .end local v3    # "i":I
    .end local v4    # "str":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Ljo;->w:Lhz;

    if-eqz v5, :cond_2

    .line 296
    iget-object v5, p0, Ljo;->w:Lhz;

    move-object/from16 v0, p7

    invoke-interface {v5, p0, v0, p4}, Lhz;->a(Ljo;[BI)V

    .line 302
    :goto_1
    iget-object v5, p0, Ljo;->k:Lanet/channel/statist/SessionStatistic;

    iget-wide v6, v5, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Lanet/channel/statist/SessionStatistic;->inceptCount:J

    .line 303
    return-void

    .line 298
    :cond_2
    const-string/jumbo v5, "awcn.AccsSession"

    const-string/jumbo v6, "AccsFrameCb is null"

    iget-object v7, p0, Ljo;->o:Ljava/lang/String;

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v5, v6, v7, v8}, Lanet/channel/util/ALog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    new-instance v2, Lanet/channel/statist/ExceptionStatistic;

    const/16 v5, -0x69

    const/4 v6, 0x0

    const-string/jumbo v7, "rt"

    invoke-direct {v2, v5, v6, v7}, Lanet/channel/statist/ExceptionStatistic;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 300
    .local v2, "es":Lanet/channel/statist/ExceptionStatistic;
    invoke-static {}, Lih;->a()Lij;

    move-result-object v5

    invoke-interface {v5, v2}, Lij;->a(Lanet/channel/statist/StatObject;)V

    goto :goto_1
.end method

.method public final spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V
    .locals 1
    .param p1, "session"    # Lorg/android/spdy/SpdySession;
    .param p2, "userData"    # Ljava/lang/Object;
    .param p3, "connInfo"    # Lorg/android/spdy/SuperviseConnectInfo;
    .param p4, "error"    # I

    .prologue
    .line 275
    iget-object v0, p0, Ljo;->y:Lix;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Ljo;->y:Lix;

    invoke-interface {v0}, Lix;->b()V

    .line 278
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ljt;->spdySessionCloseCallback(Lorg/android/spdy/SpdySession;Ljava/lang/Object;Lorg/android/spdy/SuperviseConnectInfo;I)V

    .line 279
    return-void
.end method
