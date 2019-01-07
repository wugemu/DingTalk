.class public Ljik;
.super Ljava/lang/Object;
.source "AdapterGlobalClientInfo.java"


# static fields
.field public static a:Landroid/content/Context;

.field public static e:I

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljid;

.field public static k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static volatile l:Ljik;


# instance fields
.field b:Ljava/lang/String;

.field c:Ljia;

.field public d:Landroid/app/ActivityManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const/4 v0, 0x0

    sput v0, Ljik;->e:I

    .line 32
    const/4 v0, 0x0

    sput-object v0, Ljik;->f:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Context is null!!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_0
    sget-object v0, Ljik;->a:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Ljik;->a:Landroid/content/Context;

    .line 62
    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 103
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".TaobaoIntentService"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, "result":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "AdapterGlobalClientInfo"

    const-string/jumbo v2, "getAgooCustomServiceName"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    return-object v0

    .line 106
    .end local v0    # "result":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljik;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    sget-object v0, Ljik;->l:Ljik;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Ljik;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Ljik;->l:Ljik;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljik;

    invoke-direct {v0, p0}, Ljik;-><init>(Landroid/content/Context;)V

    sput-object v0, Ljik;->l:Ljik;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Ljik;->l:Ljik;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a()Z
    .locals 1

    .prologue
    .line 113
    sget-object v0, Ljik;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
