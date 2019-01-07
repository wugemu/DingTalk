.class public Lcom/uc/webview/export/internal/setup/bf;
.super Lcom/uc/webview/export/internal/setup/bs;
.source "ProGuard"


# static fields
.field public static a:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:J

.field private static f:J

.field private static g:J

.field private static h:J

.field private static i:J

.field private static j:J


# instance fields
.field b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-class v0, Lcom/uc/webview/export/internal/setup/bf;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    .line 19
    const-string/jumbo v0, "e_delay_dec_sd_core_file"

    sput-object v0, Lcom/uc/webview/export/internal/setup/bf;->a:Ljava/lang/String;

    .line 23
    const-wide/16 v0, 0x1

    .line 24
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->e:J

    const-wide/16 v0, 0x2

    .line 25
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->f:J

    const-wide/16 v0, 0x4

    .line 26
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->g:J

    const-wide/16 v0, 0x8

    .line 27
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->h:J

    const-wide/16 v0, 0x10

    .line 28
    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->i:J

    const-wide/16 v0, 0x20

    sput-wide v0, Lcom/uc/webview/export/internal/setup/bf;->j:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/uc/webview/export/internal/setup/bs;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uc/webview/export/internal/setup/bf;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const v7, -0x3fffff81    # -2.0000303f

    .line 31
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bf;->f:J

    .line 33
    :try_start_0
    const-string/jumbo v0, "csc_ssrc"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 42
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v0, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".run locationDecDir: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {v1}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bf;->g:J

    .line 47
    const-string/jumbo v0, "csc_ssld"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 48
    const-string/jumbo v0, "dexFilePath"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Lcom/uc/webview/export/internal/setup/bf;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "soFilePath"

    const/4 v5, 0x0

    .line 49
    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "resFilePath"

    const/4 v5, 0x0

    .line 50
    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "ucmLibDir"

    const/4 v5, 0x0

    .line 51
    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "ucmCfgFile"

    const/4 v5, 0x0

    .line 52
    invoke-virtual {v0, v4, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v4, "ucmKrlDir"

    .line 53
    invoke-virtual {v0, v4, v1}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    .line 54
    invoke-super {p0}, Lcom/uc/webview/export/internal/setup/bs;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v0, v2

    .line 111
    :goto_0
    sget-object v2, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, ".run stat: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 57
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/uc/webview/export/internal/utility/g;->f()Ljava/lang/String;

    move-result-object v4

    .line 58
    sget-object v0, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".run sdCoreDecFilePath: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v4}, Lcom/uc/webview/export/internal/utility/j;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 63
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bf;->h:J

    .line 64
    const/16 v0, 0x2717

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    sget-object v6, Lcom/uc/webview/export/internal/setup/bf;->a:Ljava/lang/String;

    aput-object v6, v1, v5

    invoke-virtual {p0, v0, v1}, Lcom/uc/webview/export/internal/setup/bf;->invokeO(I[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    .line 65
    sget-object v1, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, ".run delayDecompressCB: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_1

    .line 67
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bf;->j:J

    .line 68
    iput-object v4, p0, Lcom/uc/webview/export/internal/setup/bf;->b:Ljava/lang/String;

    .line 69
    const-string/jumbo v1, "csc_ssdcb"

    invoke-static {v1}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 70
    invoke-interface {v0, p0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbda

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " delay decompress sdcard core file."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, ".run stat: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/uc/webview/export/internal/utility/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/uc/webview/export/internal/setup/bf;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    const-string/jumbo v1, "VERIFY_POLICY"

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 76
    const-string/jumbo v1, "sc_vrfplc"

    invoke-static {v1}, Lcom/uc/webview/export/extension/UCCore;->getParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    const-string/jumbo v5, "sc_vrfaha"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 78
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    .line 83
    :goto_1
    const-string/jumbo v0, "csc_sssd"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 84
    new-instance v0, Lcom/uc/webview/export/internal/setup/m;

    invoke-direct {v0}, Lcom/uc/webview/export/internal/setup/m;-><init>()V

    const/16 v5, 0x2711

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    .line 85
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/m;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const/16 v5, 0x2712

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/uc/webview/export/internal/setup/bf;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    aput-object v8, v6, v7

    .line 86
    invoke-virtual {v0, v5, v6}, Lcom/uc/webview/export/internal/setup/s;->invoke(I[Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCAsyncTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    iget-object v5, p0, Lcom/uc/webview/export/internal/setup/bf;->mOptions:Ljava/util/concurrent/ConcurrentHashMap;

    .line 87
    invoke-virtual {v0, v5}, Lcom/uc/webview/export/internal/setup/s;->setOptions(Ljava/util/concurrent/ConcurrentHashMap;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v5, "VERIFY_POLICY"

    .line 88
    invoke-virtual {v0, v5, v1}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "dexFilePath"

    const/4 v5, 0x0

    .line 89
    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "soFilePath"

    const/4 v5, 0x0

    .line 90
    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "resFilePath"

    const/4 v5, 0x0

    .line 91
    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmCfgFile"

    const/4 v5, 0x0

    .line 92
    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmKrlDir"

    const/4 v5, 0x0

    .line 93
    invoke-virtual {v0, v1, v5}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    const-string/jumbo v1, "ucmZipFile"

    .line 94
    invoke-virtual {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/s;->setup(Ljava/lang/String;Ljava/lang/Object;)Lcom/uc/webview/export/internal/setup/UCSubSetupTask;

    move-result-object v0

    check-cast v0, Lcom/uc/webview/export/internal/setup/s;

    .line 97
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/uc/webview/export/internal/setup/bf;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 99
    invoke-virtual {p0}, Lcom/uc/webview/export/internal/setup/bf;->resetCrashFlag()V

    .line 100
    invoke-virtual {v0}, Lcom/uc/webview/export/internal/setup/s;->start()Lcom/uc/webview/export/internal/setup/UCSetupTask;

    move-wide v0, v2

    .line 101
    goto/16 :goto_0

    .line 79
    :cond_2
    const-string/jumbo v5, "sc_vrfahs"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    .line 104
    :cond_3
    sget-wide v2, Lcom/uc/webview/export/internal/setup/bf;->i:J

    .line 105
    const-string/jumbo v0, "csc_ssse"

    invoke-static {v0}, Lcom/uc/webview/export/internal/interfaces/IWaStat$WaStat;->stat(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/uc/webview/export/internal/setup/UCSetupException;

    const/16 v1, 0xbce

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/uc/webview/export/internal/setup/bf;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " not found uc core"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v1, v4}, Lcom/uc/webview/export/internal/setup/UCSetupException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_4
    move-object v1, v0

    goto/16 :goto_1
.end method
