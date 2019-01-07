.class public Ljja;
.super Ljava/lang/Object;
.source "ACCSClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljja$a;
    }
.end annotation


# static fields
.field private static a:Ljja;


# instance fields
.field private b:Ljava/lang/ClassLoader;

.field private c:Z

.field private d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Ljja;->a:Ljja;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Ljja;->b:Ljava/lang/ClassLoader;

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljja;->c:Z

    .line 93
    return-void
.end method

.method static synthetic a(Ljja;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljja;

    .prologue
    .line 14
    iget-object v0, p0, Ljja;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static declared-synchronized a()Ljja;
    .locals 2

    .prologue
    .line 27
    const-class v1, Ljja;

    monitor-enter v1

    :try_start_0
    sget-object v0, Ljja;->a:Ljja;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Ljja;

    invoke-direct {v0}, Ljja;-><init>()V

    sput-object v0, Ljja;->a:Ljja;

    .line 30
    :cond_0
    sget-object v0, Ljja;->a:Ljja;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "dexFile"    # Ljava/lang/String;
    .param p2, "dexoptFile"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljja;->c:Z

    if-eqz v0, :cond_0

    .line 72
    const-string/jumbo v0, "ACCSClassLoader"

    const-string/jumbo v1, "dexOpting, exit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :goto_0
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Ljja;->c:Z

    .line 76
    new-instance v0, Ljja$1;

    invoke-direct {v0, p0, p1, p2}, Ljja$1;-><init>(Ljja;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljja$1;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(Ljja;Z)Z
    .locals 1
    .param p0, "x0"    # Ljja;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljja;->c:Z

    return v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Ljava/lang/ClassLoader;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0xd5

    .line 34
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 35
    :try_start_0
    iput-object p1, p0, Ljja;->d:Landroid/content/Context;

    .line 37
    :cond_0
    iget-object v4, p0, Ljja;->b:Ljava/lang/ClassLoader;

    if-nez v4, :cond_1

    .line 38
    const-string/jumbo v4, "ACCSClassLoader"

    const-string/jumbo v5, "create new class loader"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    const-string/jumbo v4, "ACCS_SDK"

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 41
    .local v1, "sp":Landroid/content/SharedPreferences;
    const-string/jumbo v4, "update_folder"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "baseUpdateFolder":Ljava/lang/String;
    const-string/jumbo v4, "ACCSClassLoader"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "baseUpdateFolder:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    if-eqz v0, :cond_1

    .line 44
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 45
    .local v2, "updateDir":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 46
    new-instance v3, Ljava/io/File;

    const-string/jumbo v4, "accs.zip"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v3, "updateFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "update_verion"

    const/16 v5, 0xd5

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-le v4, v7, :cond_1

    .line 49
    const-string/jumbo v4, "update_done"

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 50
    const-string/jumbo v4, "ACCSClassLoader"

    const-string/jumbo v5, "dexopt already done"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    new-instance v4, Ljja$a;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "lib"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-class v8, Ljja;

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljja$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v4, p0, Ljja;->b:Ljava/lang/ClassLoader;

    .line 63
    .end local v0    # "baseUpdateFolder":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "updateDir":Ljava/io/File;
    .end local v3    # "updateFile":Ljava/io/File;
    :cond_1
    :goto_0
    iget-object v4, p0, Ljja;->b:Ljava/lang/ClassLoader;

    if-nez v4, :cond_2

    .line 64
    const-string/jumbo v4, "ACCSClassLoader"

    const-string/jumbo v5, "get defalut class loader"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const-class v4, Ljja;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    iput-object v4, p0, Ljja;->b:Ljava/lang/ClassLoader;

    .line 67
    :cond_2
    iget-object v4, p0, Ljja;->b:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v4

    .line 56
    .restart local v0    # "baseUpdateFolder":Ljava/lang/String;
    .restart local v1    # "sp":Landroid/content/SharedPreferences;
    .restart local v2    # "updateDir":Ljava/io/File;
    .restart local v3    # "updateFile":Ljava/io/File;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "ACCSClassLoader"

    const-string/jumbo v5, "try dexopt"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v5, v6}, Lcom/taobao/accs/utl/ALog;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljja;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 34
    .end local v0    # "baseUpdateFolder":Ljava/lang/String;
    .end local v1    # "sp":Landroid/content/SharedPreferences;
    .end local v2    # "updateDir":Ljava/io/File;
    .end local v3    # "updateFile":Ljava/io/File;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method
