.class public Lcom/xiaomi/push/service/a;
.super Ljava/lang/Object;


# static fields
.field private static q:Lcom/xiaomi/push/service/module/PushChannelRegion;

.field private static volatile r:Lcom/xiaomi/push/service/a;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Landroid/content/Context;

.field public c:Z

.field public d:Z

.field public e:Z

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->f:Ljava/lang/Object;

    const-string/jumbo v0, "mipush_region"

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->g:Ljava/lang/String;

    const-string/jumbo v0, "mipush_region.lock"

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->h:Ljava/lang/String;

    const-string/jumbo v0, "success."

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->i:Ljava/lang/String;

    const-string/jumbo v0, "fail."

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->j:Ljava/lang/String;

    const-string/jumbo v0, "."

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->k:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->l:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->a:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->m:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/push/service/a;->o:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/xiaomi/push/service/a;->c:Z

    iput-boolean v1, p0, Lcom/xiaomi/push/service/a;->d:Z

    iput-boolean v1, p0, Lcom/xiaomi/push/service/a;->p:Z

    iput-boolean v1, p0, Lcom/xiaomi/push/service/a;->e:Z

    iput-object p1, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    return-void
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/xiaomi/push/service/a;
    .locals 2

    sget-object v0, Lcom/xiaomi/push/service/a;->r:Lcom/xiaomi/push/service/a;

    if-nez v0, :cond_1

    const-class v1, Lcom/xiaomi/push/service/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xiaomi/push/service/a;->r:Lcom/xiaomi/push/service/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xiaomi/push/service/a;

    invoke-direct {v0, p0}, Lcom/xiaomi/push/service/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaomi/push/service/a;->r:Lcom/xiaomi/push/service/a;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/xiaomi/push/service/a;->r:Lcom/xiaomi/push/service/a;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/a;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/xiaomi/push/service/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/push/service/a;->o:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/a;Landroid/content/Context;Lcom/xiaomi/push/service/module/PushChannelRegion;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 0
    .line 4000
    iget-object v4, p0, Lcom/xiaomi/push/service/a;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "mipush_region.lock"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Ljur;->a(Ljava/io/File;)Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v3, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v2

    .line 5000
    :try_start_2
    const-string/jumbo v0, "mipush_region"

    const v5, 0x8000

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v1}, Ljur;->a(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 4000
    :goto_0
    if-eqz v2, :cond_0

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_0
    :goto_1
    :try_start_6
    invoke-static {v3}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    :goto_2
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    .line 5000
    :catch_0
    move-exception v0

    :try_start_7
    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    invoke-static {v1}, Ljur;->a(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_0

    .line 4000
    :catch_1
    move-exception v0

    move-object v1, v2

    move-object v2, v3

    :goto_3
    :try_start_9
    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-eqz v1, :cond_1

    :try_start_a
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :try_start_b
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :cond_1
    :goto_4
    :try_start_c
    invoke-static {v2}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    throw v0

    .line 5000
    :catchall_1
    move-exception v0

    :try_start_d
    invoke-static {v1}, Ljur;->a(Ljava/io/OutputStream;)V

    throw v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 4000
    :catchall_2
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_2

    :try_start_e
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result v2

    if-eqz v2, :cond_2

    :try_start_f
    invoke-virtual {v1}, Ljava/nio/channels/FileLock;->release()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_2
    :goto_6
    :try_start_10
    invoke-static {v3}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    throw v0

    :catch_2
    move-exception v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :catch_4
    move-exception v0

    invoke-static {v0}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catchall_4
    move-exception v0

    goto :goto_5

    :catchall_5
    move-exception v0

    move-object v3, v2

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_6
    move-exception v0

    move-object v2, v3

    goto :goto_3
.end method

.method public static synthetic a(Lcom/xiaomi/push/service/a;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/a;->p:Z

    return v0
.end method

.method public static synthetic b(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->m:Ljava/lang/Object;

    return-object v0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "mipush_region"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "Region no ready file to get data."

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v4, p0, Lcom/xiaomi/push/service/a;->f:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "mipush_region.lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Ljur;->a(Ljava/io/File;)Z

    new-instance v3, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v3, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->lock()Ljava/nio/channels/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v2

    :try_start_2
    invoke-static {p1}, Lcom/xiaomi/push/service/a;->c(Landroid/content/Context;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-result-object v0

    if-eqz v2, :cond_1

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_1
    :goto_1
    :try_start_5
    invoke-static {v3}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    monitor-exit v4

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    :goto_2
    :try_start_6
    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    :try_start_8
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :cond_2
    :goto_3
    :try_start_9
    invoke-static {v3}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->isValid()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result v1

    if-eqz v1, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/nio/channels/FileLock;->release()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :cond_3
    :goto_5
    :try_start_b
    invoke-static {v3}, Ljur;->a(Ljava/io/RandomAccessFile;)V

    throw v0

    :catch_1
    move-exception v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_2
    move-exception v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :catch_3
    move-exception v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_1

    :catchall_2
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v1

    move-object v2, v0

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_2
.end method

.method public static synthetic b(Lcom/xiaomi/push/service/a;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/a;->e:Z

    return v0
.end method

.method public static synthetic c(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->l:Ljava/lang/Object;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v1, 0x0

    const-string/jumbo v4, ""

    :try_start_0
    const-string/jumbo v0, "mipush_region"

    invoke-virtual {p0, v0}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v4

    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    :try_start_3
    invoke-static {v1}, Ljuw;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v3}, Ljur;->a(Ljava/io/InputStream;)V

    :goto_2
    invoke-static {v2}, Ljur;->a(Ljava/io/Reader;)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    :goto_3
    invoke-static {v3}, Ljur;->a(Ljava/io/InputStream;)V

    invoke-static {v2}, Ljur;->a(Ljava/io/Reader;)V

    throw v0

    :cond_0
    invoke-static {v3}, Ljur;->a(Ljava/io/InputStream;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic d(Lcom/xiaomi/push/service/a;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->a:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/xiaomi/push/service/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1000
    sget-object v1, Lcom/xiaomi/push/service/a;->q:Lcom/xiaomi/push/service/module/PushChannelRegion;

    .line 0
    if-eqz v1, :cond_0

    .line 2000
    sget-object v0, Lcom/xiaomi/push/service/a;->q:Lcom/xiaomi/push/service/module/PushChannelRegion;

    .line 0
    invoke-virtual {v0}, Lcom/xiaomi/push/service/module/PushChannelRegion;->name()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final a(Z)Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    iget-boolean v0, p0, Lcom/xiaomi/push/service/a;->c:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkbc;

    invoke-direct {v1, p0}, Lkbc;-><init>(Lcom/xiaomi/push/service/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->l:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/xiaomi/push/service/a;->l:Ljava/lang/Object;

    iget-object v4, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v4

    sget-object v5, Lcom/xiaomi/xmpush/thrift/g;->am:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v5}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v5

    const/16 v6, 0x64

    invoke-virtual {v4, v5, v6}, Lkaq;->a(II)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long v0, v2, v0

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/xiaomi/push/service/a;->c:Z

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->m:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-boolean v3, p0, Lcom/xiaomi/push/service/a;->p:Z

    iget-object v4, p0, Lcom/xiaomi/push/service/a;->o:Ljava/lang/String;

    iput-object v4, p0, Lcom/xiaomi/push/service/a;->n:Ljava/lang/String;

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v1

    const-string/jumbo v2, "mipush_extra"

    const-string/jumbo v4, "mipush_registed"

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lkbf;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " get region success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "category_region_write"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "success."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->n:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " get region fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "category_region_write"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v3

    goto/16 :goto_0
.end method

.method public final a(Lcom/xiaomi/push/service/module/PushChannelRegion;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 0
    .line 3000
    sput-object p1, Lcom/xiaomi/push/service/a;->q:Lcom/xiaomi/push/service/module/PushChannelRegion;

    .line 0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->am:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Lkaq;->a(II)I

    move-result v6

    iget-boolean v0, p0, Lcom/xiaomi/push/service/a;->d:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v7}, Lcom/xiaomi/push/service/a;->a(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lkbz;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lkbz;-><init>(Lcom/xiaomi/push/service/a;Lcom/xiaomi/push/service/module/PushChannelRegion;JI)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/push/service/a;->a:Ljava/lang/Object;

    int-to-long v2, v6

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lkbf;->a(Landroid/content/Context;)Lkbf;

    move-result-object v1

    const-string/jumbo v2, "mipush_extra"

    const-string/jumbo v3, "mipush_registed"

    invoke-virtual {v1, v2, v3, v7}, Lkbf;->a(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/xiaomi/push/service/a;->e:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set region success."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->c(Ljava/lang/String;)V

    const-string/jumbo v1, "category_region_read"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "success."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaomi/push/service/a;->d:Z

    iput-boolean v7, p0, Lcom/xiaomi/push/service/a;->c:Z

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " set region fail."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljuw;->a(Ljava/lang/String;)V

    const-string/jumbo v1, "category_region_read"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "fail."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/xiaomi/push/service/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    iget-object v0, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lkaq;->a(Landroid/content/Context;)Lkaq;

    move-result-object v0

    sget-object v1, Lcom/xiaomi/xmpush/thrift/g;->al:Lcom/xiaomi/xmpush/thrift/g;

    invoke-virtual {v1}, Lcom/xiaomi/xmpush/thrift/g;->a()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lkaq;->a(IZ)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/xiaomi/push/service/a;->b:Landroid/content/Context;

    const-string/jumbo v3, "region_io"

    const-wide/16 v4, 0x1

    move-object v2, p1

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lkbi;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_0
.end method
