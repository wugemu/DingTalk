.class public Lcom/alibaba/laiwang/alive/AliveManager;
.super Ljava/lang/Object;
.source "AliveManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/laiwang/alive/AliveManager$XpnType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XPN_AliveManager"

.field private static sInstance:Lcom/alibaba/laiwang/alive/AliveManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsInit:Z

.field private mTTid:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alibaba/laiwang/alive/AliveManager;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/alibaba/laiwang/alive/AliveManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alibaba/laiwang/alive/AliveManager;->sInstance:Lcom/alibaba/laiwang/alive/AliveManager;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lcom/alibaba/laiwang/alive/AliveManager;

    invoke-direct {v0}, Lcom/alibaba/laiwang/alive/AliveManager;-><init>()V

    sput-object v0, Lcom/alibaba/laiwang/alive/AliveManager;->sInstance:Lcom/alibaba/laiwang/alive/AliveManager;

    .line 33
    :cond_0
    sget-object v0, Lcom/alibaba/laiwang/alive/AliveManager;->sInstance:Lcom/alibaba/laiwang/alive/AliveManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setDebuggable(Z)V
    .locals 0
    .param p0, "enabled"    # Z

    .prologue
    .line 156
    invoke-static {p0}, Lcom/alibaba/laiwang/xpn/XpnUtils;->setDebug(Z)V

    .line 157
    return-void
.end method


# virtual methods
.method public disableXpn(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 142
    invoke-static {}, Lcom/alibaba/laiwang/alive/a;->a()Lcom/alibaba/laiwang/alive/a;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/a;->a(Landroid/content/Context;)V

    .line 144
    :cond_0
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 145
    invoke-static {}, Lcom/alibaba/laiwang/alive/c;->b()Lcom/alibaba/laiwang/alive/c;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/c;->a(Landroid/content/Context;)V

    .line 147
    :cond_1
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 148
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/j;->a(Landroid/content/Context;)V

    .line 150
    :cond_2
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 151
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/alive/d;->a(Landroid/content/Context;)V

    .line 153
    :cond_3
    return-void
.end method

.method public declared-synchronized getTTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mTTid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized init(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mIsInit:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 52
    :goto_0
    monitor-exit p0

    return-void

    .line 45
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mContext:Landroid/content/Context;

    .line 47
    invoke-static {}, Lcom/alibaba/laiwang/alive/j;->d()Lcom/alibaba/laiwang/alive/j;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/alive/j;->init(Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/alibaba/laiwang/alive/d;->c()Lcom/alibaba/laiwang/alive/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/alive/d;->init(Landroid/content/Context;)V

    .line 49
    invoke-static {}, Lcom/alibaba/laiwang/alive/a;->a()Lcom/alibaba/laiwang/alive/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/alive/a;->init(Landroid/content/Context;)V

    .line 50
    invoke-static {}, Lcom/alibaba/laiwang/alive/c;->b()Lcom/alibaba/laiwang/alive/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/laiwang/alive/c;->init(Landroid/content/Context;)V

    .line 51
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mIsInit:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 42
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public varargs registerXpn(ILcom/alibaba/laiwang/xpn/XpnMessageReceiver;[Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # I
    .param p2, "receiver"    # Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;
    .param p3, "extras"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 74
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start reg xpn, type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/alive/AliveManager$1;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/alibaba/laiwang/alive/AliveManager$1;-><init>(Lcom/alibaba/laiwang/alive/AliveManager;I[Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 100
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 101
    if-eqz p3, :cond_1

    array-length v0, p3

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 102
    invoke-static {}, Lcom/alibaba/laiwang/alive/a;->a()Lcom/alibaba/laiwang/alive/a;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p3, v1

    const/4 v2, 0x1

    aget-object v2, p3, v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/alibaba/laiwang/alive/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/laiwang/xpn/XpnMessageReceiver;)V

    .line 105
    :cond_1
    return-void
.end method

.method public registerXpnUser(ILjava/lang/String;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "uid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {}, Lcom/alibaba/laiwang/alive/a;->a()Lcom/alibaba/laiwang/alive/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/alibaba/laiwang/alive/a;->a(Ljava/lang/String;)V

    .line 111
    :cond_0
    return-void
.end method

.method public setAccsAppReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 63
    invoke-static {p1}, Ljim;->a(Landroid/content/Context;)Ljim;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/alive/b;

    invoke-direct {v1}, Lcom/alibaba/laiwang/alive/b;-><init>()V

    invoke-virtual {v0, v1}, Ljim;->a(Ljia;)V

    .line 64
    return-void
.end method

.method public declared-synchronized setTTid(Ljava/lang/String;)V
    .locals 1
    .param p1, "ttid"    # Ljava/lang/String;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alibaba/laiwang/alive/AliveManager;->mTTid:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public unregisterXpn(I)V
    .locals 2
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-static {}, Lcom/alibaba/laiwang/xpn/XpnUtils;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start unreg xpn, type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    :cond_0
    invoke-static {}, Lcom/alibaba/wukong/WKManager;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/alibaba/laiwang/alive/AliveManager$2;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/laiwang/alive/AliveManager$2;-><init>(Lcom/alibaba/laiwang/alive/AliveManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
