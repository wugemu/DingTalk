.class public Lcom/laiwang/protocol/a;
.super Ljava/lang/Object;
.source "Bootstrap.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x8
.end annotation


# static fields
.field public static a:Ljava/lang/String;

.field private static g:Lcom/laiwang/protocol/a;


# instance fields
.field private b:Lcom/laiwang/protocol/android/w;

.field private c:Landroid/content/Context;

.field private d:Landroid/app/Application;

.field private e:Lcom/laiwang/protocol/android/LogExecutor;

.field private volatile f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lcom/laiwang/protocol/android/e;

.field private i:Landroid/app/PendingIntent;

.field private j:Lcom/laiwang/protocol/android/Extension;

.field private k:Lcom/laiwang/protocol/android/bu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string/jumbo v0, "app_keep_alive"

    sput-object v0, Lcom/laiwang/protocol/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/laiwang/protocol/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    return-void
.end method

.method public static declared-synchronized a()Lcom/laiwang/protocol/a;
    .locals 2

    .prologue
    .line 62
    const-class v1, Lcom/laiwang/protocol/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/laiwang/protocol/a;->g:Lcom/laiwang/protocol/a;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/laiwang/protocol/a;

    invoke-direct {v0}, Lcom/laiwang/protocol/a;-><init>()V

    sput-object v0, Lcom/laiwang/protocol/a;->g:Lcom/laiwang/protocol/a;

    .line 65
    :cond_0
    sget-object v0, Lcom/laiwang/protocol/a;->g:Lcom/laiwang/protocol/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Landroid/content/Context;)Lcom/laiwang/protocol/android/Extension;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 148
    :try_start_0
    const-string/jumbo v3, "lwp.extension"

    invoke-direct {p0, v3}, Lcom/laiwang/protocol/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "extensionClassName":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 150
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/Extension;>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/laiwang/protocol/android/Extension;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    .end local v1    # "extensionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/Extension;>;"
    .end local v2    # "extensionClassName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "[Init] get extension error"

    invoke-static {v3, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/laiwang/protocol/a;)Lcom/laiwang/protocol/android/bu;
    .locals 1
    .param p0, "x0"    # Lcom/laiwang/protocol/a;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/laiwang/protocol/a;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/laiwang/protocol/a;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 162
    .local v0, "data":Landroid/os/Bundle;
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    .end local v0    # "data":Landroid/os/Bundle;
    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/app/Application;Landroid/content/Context;Lcom/laiwang/protocol/android/Extension;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "extension"    # Lcom/laiwang/protocol/android/Extension;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;Lcom/laiwang/protocol/android/Extension;)V

    .line 76
    return-void
.end method

.method public a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/LWPService;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p3, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/LWPService;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/laiwang/protocol/a;->a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;Lcom/laiwang/protocol/android/Extension;)V

    .line 72
    return-void
.end method

.method public a(Landroid/app/Application;Landroid/content/Context;Ljava/lang/Class;Lcom/laiwang/protocol/android/Extension;)V
    .locals 8
    .param p1, "app"    # Landroid/app/Application;
    .param p2, "context"    # Landroid/content/Context;
    .param p4, "extension"    # Lcom/laiwang/protocol/android/Extension;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/laiwang/protocol/android/LWPService;",
            ">;",
            "Lcom/laiwang/protocol/android/Extension;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p3, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/laiwang/protocol/android/LWPService;>;"
    const/4 v2, 0x0

    .line 79
    invoke-static {p2}, Lcom/laiwang/protocol/android/cg;->a(Landroid/content/Context;)V

    .line 80
    new-instance v0, Lcom/laiwang/protocol/android/bt;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/bt;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    .line 81
    new-instance v6, Lcom/laiwang/protocol/a$1;

    invoke-direct {v6, p0}, Lcom/laiwang/protocol/a$1;-><init>(Lcom/laiwang/protocol/a;)V

    .line 92
    .local v6, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lcom/laiwang/protocol/android/LwpLogUploader;

    const-wide/16 v4, 0x1400

    invoke-direct {v0, v4, v5}, Lcom/laiwang/protocol/android/LwpLogUploader;-><init>(J)V

    invoke-static {p2, v6, v0}, Lcom/laiwang/protocol/android/log/PerfLogger;->init(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/laiwang/protocol/android/log/PerfLogger$b;)V

    .line 93
    sget-object v0, Lcom/laiwang/protocol/Config;->FILE_LOG_LEVEL:Lcom/laiwang/protocol/android/log/TraceLogger$Level;

    invoke-static {p2, v6, v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->init(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/laiwang/protocol/android/log/TraceLogger$Level;)V

    .line 94
    iget-object v0, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    invoke-static {v0}, Lcom/laiwang/protocol/android/i;->a(Lcom/laiwang/protocol/android/bu;)V

    .line 96
    iget-object v0, p0, Lcom/laiwang/protocol/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const-string/jumbo v0, "[Init] LWP has initialized"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->e(Ljava/lang/String;)V

    .line 139
    :goto_0
    return-void

    .line 100
    :cond_0
    iput-object p4, p0, Lcom/laiwang/protocol/a;->j:Lcom/laiwang/protocol/android/Extension;

    .line 101
    iput-object p2, p0, Lcom/laiwang/protocol/a;->c:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcom/laiwang/protocol/a;->d:Landroid/app/Application;

    .line 104
    if-nez p4, :cond_1

    .line 105
    invoke-direct {p0, p2}, Lcom/laiwang/protocol/a;->a(Landroid/content/Context;)Lcom/laiwang/protocol/android/Extension;

    move-result-object p4

    .line 107
    :cond_1
    if-eqz p4, :cond_2

    .line 108
    invoke-virtual {p4}, Lcom/laiwang/protocol/android/Extension;->vhost()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/laiwang/protocol/Config;->f:Ljava/lang/String;

    .line 111
    :cond_2
    new-instance v3, Lcom/laiwang/protocol/android/bn;

    iget-object v0, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    invoke-direct {v3, v0, p4}, Lcom/laiwang/protocol/android/bn;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;)V

    .line 113
    .local v3, "scheduleEngine":Lcom/laiwang/protocol/android/bn;
    iget-object v0, p0, Lcom/laiwang/protocol/a;->d:Landroid/app/Application;

    if-eqz v0, :cond_3

    .line 114
    invoke-static {p1}, Lcom/laiwang/protocol/android/Foreground;->init(Landroid/app/Application;)V

    .line 117
    :cond_3
    if-eqz p3, :cond_4

    .line 118
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    .local v7, "serviceIntent":Landroid/content/Intent;
    sget-object v0, Lcom/laiwang/protocol/a;->a:Ljava/lang/String;

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-static {p2, v2, v7, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/laiwang/protocol/a;->i:Landroid/app/PendingIntent;

    .line 123
    .end local v7    # "serviceIntent":Landroid/content/Intent;
    :cond_4
    new-instance v0, Lcom/laiwang/protocol/android/w;

    iget-object v1, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    iget-object v5, p0, Lcom/laiwang/protocol/a;->i:Landroid/app/PendingIntent;

    move-object v2, p4

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/laiwang/protocol/android/w;-><init>(Lcom/laiwang/protocol/android/bu;Lcom/laiwang/protocol/android/Extension;Lcom/laiwang/protocol/android/bn;Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/laiwang/protocol/a;->b:Lcom/laiwang/protocol/android/w;

    .line 124
    new-instance v0, Lcom/laiwang/protocol/android/LogExecutor;

    invoke-direct {v0}, Lcom/laiwang/protocol/android/LogExecutor;-><init>()V

    iput-object v0, p0, Lcom/laiwang/protocol/a;->e:Lcom/laiwang/protocol/android/LogExecutor;

    .line 126
    const-string/jumbo v0, "/push/lwp"

    new-instance v1, Lcom/laiwang/protocol/push/CommandHandler;

    iget-object v2, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/push/CommandHandler;-><init>(Lcom/laiwang/protocol/android/bu;)V

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 127
    const-string/jumbo v0, "log"

    iget-object v1, p0, Lcom/laiwang/protocol/a;->e:Lcom/laiwang/protocol/android/LogExecutor;

    invoke-static {v0, v1}, Lcom/laiwang/protocol/push/CommandHandler;->register(Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;)V

    .line 128
    const-string/jumbo v0, "aladdin"

    invoke-static {v0, v3}, Lcom/laiwang/protocol/push/CommandHandler;->register(Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;)V

    .line 129
    const-string/jumbo v0, "conf"

    new-instance v1, Lcom/laiwang/protocol/android/aq;

    iget-object v2, p0, Lcom/laiwang/protocol/a;->k:Lcom/laiwang/protocol/android/bu;

    invoke-direct {v1, v2}, Lcom/laiwang/protocol/android/aq;-><init>(Lcom/laiwang/protocol/android/bu;)V

    invoke-static {v0, v1}, Lcom/laiwang/protocol/push/CommandHandler;->register(Ljava/lang/String;Lcom/laiwang/protocol/push/CommandHandler$Command;)V

    .line 130
    const-string/jumbo v0, "/!"

    new-instance v1, Lcom/laiwang/protocol/a$2;

    invoke-direct {v1, p0}, Lcom/laiwang/protocol/a$2;-><init>(Lcom/laiwang/protocol/a;)V

    invoke-static {v0, v1}, Lcom/laiwang/protocol/android/LWP;->subscribe(Ljava/lang/String;Lcom/laiwang/protocol/android/Receive;)V

    .line 138
    const-string/jumbo v0, "[Init] LWP initialized done"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 142
    new-instance v0, Lcom/laiwang/protocol/android/e;

    iget-object v1, p0, Lcom/laiwang/protocol/a;->b:Lcom/laiwang/protocol/android/w;

    iget-object v2, p0, Lcom/laiwang/protocol/a;->c:Landroid/content/Context;

    iget-object v3, p0, Lcom/laiwang/protocol/a;->i:Landroid/app/PendingIntent;

    invoke-direct {v0, v1, v2, v3}, Lcom/laiwang/protocol/android/e;-><init>(Lcom/laiwang/protocol/android/w;Landroid/content/Context;Landroid/app/PendingIntent;)V

    iput-object v0, p0, Lcom/laiwang/protocol/a;->h:Lcom/laiwang/protocol/android/e;

    .line 143
    iget-object v0, p0, Lcom/laiwang/protocol/a;->h:Lcom/laiwang/protocol/android/e;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/e;->a()V

    .line 144
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/laiwang/protocol/a;->b:Lcom/laiwang/protocol/android/w;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/laiwang/protocol/a;->b:Lcom/laiwang/protocol/android/w;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/w;->c()V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/laiwang/protocol/a;->h:Lcom/laiwang/protocol/android/e;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/laiwang/protocol/a;->h:Lcom/laiwang/protocol/android/e;

    invoke-virtual {v0}, Lcom/laiwang/protocol/android/e;->b()V

    .line 176
    :cond_1
    const/4 v0, 0x0

    sput-object v0, Lcom/laiwang/protocol/a;->g:Lcom/laiwang/protocol/a;

    .line 177
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/laiwang/protocol/a;->e:Lcom/laiwang/protocol/android/LogExecutor;

    if-eqz v0, :cond_0

    .line 184
    const-string/jumbo v0, "[logs] delete all logs"

    invoke-static {v0}, Lcom/laiwang/protocol/android/log/TraceLogger;->i(Ljava/lang/String;)V

    .line 186
    :cond_0
    return-void
.end method

.method public e()Lcom/laiwang/protocol/android/w;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/laiwang/protocol/a;->b:Lcom/laiwang/protocol/android/w;

    return-object v0
.end method
