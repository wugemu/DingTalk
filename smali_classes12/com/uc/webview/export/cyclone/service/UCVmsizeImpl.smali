.class public Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/uc/webview/export/cyclone/service/UCVmsize;


# annotations
.annotation build Lcom/uc/webview/export/cyclone/Constant;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UCVmsizeImpl"

.field private static mSoIsLoaded:Z

.field private static mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 24
    sput-boolean v4, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    .line 29
    :try_start_0
    const-class v0, Lcom/uc/webview/export/cyclone/service/UCVmsize;

    new-instance v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;

    invoke-direct {v1}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;-><init>()V

    invoke-static {v0, v1}, Lcom/uc/webview/export/cyclone/UCService;->registerImpl(Ljava/lang/Class;Lcom/uc/webview/export/cyclone/service/UCServiceInterface;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :cond_0
    :goto_0
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string/jumbo v1, "w"

    const-string/jumbo v2, "UCVmsizeImpl"

    invoke-static {v1, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/uc/webview/export/cyclone/UCLogger;

    move-result-object v1

    .line 32
    if-eqz v1, :cond_0

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "UCVmsizeImpl register exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v0, v2}, Lcom/uc/webview/export/cyclone/UCLogger;->print(Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static declared-synchronized loadSo(Landroid/content/Context;)V
    .locals 10

    .prologue
    .line 127
    const-class v9, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;

    monitor-enter v9

    :try_start_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 145
    :goto_0
    monitor-exit v9

    return-void

    .line 130
    :cond_0
    :try_start_1
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    if-eqz v0, :cond_1

    .line 131
    sget-object v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    .line 134
    :cond_1
    const/4 v1, 0x0

    :try_start_2
    const-string/jumbo v2, "libvmsize"

    const-string/jumbo v3, ".so"

    const-wide/32 v4, 0x1791913

    const-string/jumbo v6, "e3d7b7107d5f402c1dde1a3930f7d7da"

    .line 137
    invoke-static {}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImplConstant;->genCodes()[[B

    move-result-object v7

    const/4 v0, 0x0

    new-array v8, v0, [Ljava/lang/Object;

    move-object v0, p0

    .line 134
    invoke-static/range {v0 .. v8}, Lcom/uc/webview/export/cyclone/UCCyclone;->genFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;[[B[Ljava/lang/Object;)Ljava/io/File;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/uc/webview/export/cyclone/UCLibrary;->load(Landroid/content/Context;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 144
    const/4 v0, 0x1

    :try_start_3
    sput-boolean v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z

    goto :goto_0

    .line 139
    :catch_0
    move-exception v0

    .line 140
    new-instance v1, Lcom/uc/webview/export/cyclone/UCKnownException;

    invoke-direct {v1, v0}, Lcom/uc/webview/export/cyclone/UCKnownException;-><init>(Ljava/lang/Throwable;)V

    .line 141
    sput-object v1, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoadedException:Lcom/uc/webview/export/cyclone/UCKnownException;

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method private static native nativeSaveChromiumReservedSpace(J)I
.end method


# virtual methods
.method public getServiceVersion()I
    .locals 1

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public saveChromiumReservedSpace(Landroid/content/Context;)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 39
    const-wide/16 v0, 0x0

    .line 43
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_8

    .line 48
    const-string/jumbo v2, "android.webkit.WebViewFactory"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 51
    if-eqz v2, :cond_8

    .line 52
    const-string/jumbo v3, "sAddressSpaceReserved"

    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 56
    if-eqz v3, :cond_8

    .line 57
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 60
    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 62
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v4

    .line 63
    if-eqz v4, :cond_8

    .line 64
    :try_start_0
    const-string/jumbo v0, "sProviderLock"

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    .line 82
    :goto_0
    sget-boolean v0, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->mSoIsLoaded:Z

    if-nez v0, :cond_1

    .line 85
    invoke-static {p1}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->loadSo(Landroid/content/Context;)V

    .line 87
    :cond_1
    monitor-enter p0

    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    const-string/jumbo v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 93
    if-nez v0, :cond_4

    .line 94
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SystemProperties not found."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 118
    :catch_0
    move-exception v0

    .line 116
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_3
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 117
    throw v0

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 73
    :cond_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_3

    .line 74
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 76
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object p0

    goto :goto_0

    .line 96
    :cond_4
    :try_start_5
    const-string/jumbo v1, "getLong"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 97
    if-nez v0, :cond_5

    .line 98
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SystemProperties.getLong not found."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_5
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_6

    .line 101
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 103
    :cond_6
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "persist.sys.webview.vmsize"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-wide/32 v6, 0x6400000

    .line 104
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 106
    if-nez v0, :cond_7

    .line 107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "SystemProperties.getLong invoke return null."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->nativeSaveChromiumReservedSpace(J)I

    move-result v1

    .line 110
    if-nez v1, :cond_9

    .line 111
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v0

    .line 119
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 123
    :cond_8
    return-wide v0

    .line 113
    :cond_9
    :try_start_7
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Error:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " on nativeSaveChromiumReservedSpace"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 79
    :catch_1
    move-exception v0

    goto/16 :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UCVmsizeImpl."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/uc/webview/export/cyclone/service/UCVmsizeImpl;->getServiceVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
