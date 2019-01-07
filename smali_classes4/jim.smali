.class public Ljim;
.super Ljava/lang/Object;
.source "GlobalClientInfo.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static i:Ljava/lang/String;

.field public static j:I

.field public static k:Z

.field private static volatile n:Ljim;


# instance fields
.field public b:Ljava/lang/String;

.field public c:Ljic;

.field public d:Ljia;

.field public e:Landroid/app/ActivityManager;

.field public f:Landroid/net/ConnectivityManager;

.field public g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:Ljir$a;

.field public l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljig;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/content/pm/PackageInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, -0x1

    sput v0, Ljim;->j:I

    .line 45
    const/4 v0, 0x1

    sput-boolean v0, Ljim;->k:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/taobao/accs/client/GlobalClientInfo$1;

    invoke-direct {v0, p0}, Lcom/taobao/accs/client/GlobalClientInfo$1;-><init>(Ljim;)V

    iput-object v0, p0, Ljim;->l:Ljava/util/Map;

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljim;->m:Ljava/util/Map;

    .line 73
    if-nez p1, :cond_0

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    sget-object v0, Ljim;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljim;->a:Landroid/content/Context;

    .line 79
    :cond_1
    new-instance v0, Ljim$1;

    invoke-direct {v0, p0}, Ljim$1;-><init>(Ljim;)V

    invoke-static {v0}, Ljin;->a(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Ljim;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljim;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    sget-object v0, Ljim;->n:Ljim;

    if-nez v0, :cond_1

    .line 58
    const-class v1, Ljim;

    monitor-enter v1

    .line 59
    :try_start_0
    sget-object v0, Ljim;->n:Ljim;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Ljim;

    invoke-direct {v0, p0}, Ljim;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljim;->n:Ljim;

    .line 62
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    sget-object v0, Ljim;->n:Ljim;

    return-object v0

    .line 62
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic e()Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Ljim;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2
    .param p1, "appSecret"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iput-object p1, p0, Ljim;->b:Ljava/lang/String;

    .line 95
    sget-object v0, Ljim;->a:Landroid/content/Context;

    invoke-static {v0}, Ljik;->a(Landroid/content/Context;)Ljik;

    move-result-object v0

    .line 1065
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    iput-object p1, v0, Ljik;->b:Ljava/lang/String;

    .line 97
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljig;)V
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;
    .param p2, "listener"    # Ljig;

    .prologue
    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Ljim;->m:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Ljia;)V
    .locals 1
    .param p1, "callback"    # Ljia;

    .prologue
    .line 154
    if-eqz p1, :cond_0

    .line 155
    iput-object p1, p0, Ljim;->d:Ljia;

    .line 156
    sget-object v0, Ljim;->a:Landroid/content/Context;

    invoke-static {v0}, Ljik;->a(Landroid/content/Context;)Ljik;

    move-result-object v0

    .line 1075
    if-eqz p1, :cond_0

    .line 1076
    iput-object p1, v0, Ljik;->c:Ljia;

    .line 158
    :cond_0
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Ljim;->c:Ljic;

    if-nez v0, :cond_0

    .line 134
    const/4 v0, 0x0

    .line 136
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljim;->c:Ljic;

    invoke-interface {v0}, Ljic;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-object v0, p0, Ljim;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Ljim;->c:Ljic;

    if-nez v0, :cond_0

    .line 141
    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljim;->c:Ljic;

    invoke-interface {v0}, Ljic;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Ljig;
    .locals 1
    .param p1, "serviceId"    # Ljava/lang/String;

    .prologue
    .line 195
    iget-object v0, p0, Ljim;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljig;

    return-object v0
.end method

.method public final d()Landroid/content/pm/PackageInfo;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 220
    :try_start_0
    iget-object v1, p0, Ljim;->o:Landroid/content/pm/PackageInfo;

    if-nez v1, :cond_0

    .line 221
    sget-object v1, Ljim;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    sget-object v2, Ljim;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Ljim;->o:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :cond_0
    :goto_0
    iget-object v1, p0, Ljim;->o:Landroid/content/pm/PackageInfo;

    return-object v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, "t":Ljava/lang/Throwable;
    const-string/jumbo v1, "GlobalClientInfo"

    const-string/jumbo v2, "getPackageInfo"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v1, v2, v0, v3}, Lcom/taobao/accs/utl/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    goto :goto_0
.end method
