.class public final Lilv;
.super Ljava/lang/Object;
.source "HybridEncryption.java"


# static fields
.field private static b:Lilv;

.field private static c:Ljava/lang/String;


# instance fields
.field public a:[B

.field private d:Ljava/lang/String;

.field private e:[B

.field private f:Z

.field private g:Z

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lils;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Limf;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lilt;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lima;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Limb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lilv;->c:Ljava/lang/String;

    .line 16
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Lilv;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lilv;->d:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static a()Lilv;
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lilv;->b:Lilv;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "need createInstance befor use"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_0
    sget-object v0, Lilv;->b:Lilv;

    return-object v0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lilv;
    .locals 2

    .prologue
    .line 46
    const-class v1, Lilv;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lilv;->b:Lilv;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Lilv;

    invoke-direct {v0, p0}, Lilv;-><init>(Landroid/content/Context;)V

    sput-object v0, Lilv;->b:Lilv;

    .line 49
    :cond_0
    sget-object v0, Lilv;->b:Lilv;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 57
    .line 59
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_1

    .line 67
    :cond_0
    :goto_1
    return-object v0

    .line 60
    :catch_0
    move-exception v1

    .line 61
    const-string/jumbo v2, "Hybrid"

    const-string/jumbo v3, "obtainPublicKey"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "setting.logging.encryption.pubkey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public final a([BII)[B
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    .line 76
    iget-object v1, p0, Lilv;->e:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lilv;->a:[B

    if-nez v1, :cond_2

    .line 79
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 87
    :goto_0
    if-nez v1, :cond_1

    .line 88
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 90
    :cond_1
    invoke-static {v1}, Lils;->a([B)[B

    move-result-object v1

    iput-object v1, p0, Lilv;->e:[B

    .line 91
    iget-object v1, p0, Lilv;->e:[B

    iget-object v2, p0, Lilv;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Limf;->a([BLjava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lilv;->a:[B
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    :cond_2
    :goto_1
    iget-object v1, p0, Lilv;->e:[B

    if-eqz v1, :cond_3

    iget-object v1, p0, Lilv;->a:[B

    if-nez v1, :cond_5

    .line 112
    :cond_3
    :goto_2
    return-object v0

    .line 80
    :catch_0
    move-exception v1

    .line 81
    iget-boolean v2, p0, Lilv;->f:Z

    if-nez v2, :cond_4

    .line 82
    iput-boolean v4, p0, Lilv;->f:Z

    .line 83
    const-string/jumbo v2, "Hybrid"

    const-string/jumbo v3, "encrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    move-object v1, v0

    goto :goto_0

    .line 93
    :catch_1
    move-exception v1

    .line 94
    iget-boolean v2, p0, Lilv;->g:Z

    if-nez v2, :cond_2

    .line 95
    iput-boolean v4, p0, Lilv;->g:Z

    .line 96
    const-string/jumbo v2, "Hybrid"

    const-string/jumbo v3, "encrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 104
    :cond_5
    :try_start_2
    iget-object v1, p0, Lilv;->e:[B

    const/4 v2, 0x0

    invoke-static {v1, p1, v2, p3}, Lils;->a([B[BII)[B
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    goto :goto_2

    .line 107
    :catch_2
    move-exception v1

    .line 108
    iget-boolean v2, p0, Lilv;->h:Z

    if-nez v2, :cond_3

    .line 109
    iput-boolean v4, p0, Lilv;->h:Z

    .line 110
    const-string/jumbo v2, "Hybrid"

    const-string/jumbo v3, "encrypt"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method
