.class public abstract Lcom/alipay/mobile/security/bio/service/BioServiceManager;
.super Ljava/lang/Object;
.source "BioServiceManager.java"


# static fields
.field protected static b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;


# instance fields
.field protected final a:Landroid/content/Context;

.field private final c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zimId"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-nez p1, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;

    invoke-direct {v0}, Lcom/alipay/mobile/security/bio/exception/BioIllegalArgumentException;-><init>()V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->c:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "BioServiceManager.createInstance()"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 60
    new-instance v0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit v1

    return-void

    .line 62
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "BioServiceManager.createInstance(Context) : null != sInstance"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "zimId"    # Ljava/lang/String;

    .prologue
    .line 73
    const-class v1, Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v0, "BioServiceManager.createInstance()"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/security/bio/service/impl/BioServiceManagerImpl;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :goto_0
    monitor-exit v1

    return-void

    .line 77
    :cond_0
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    iget-object v0, v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->c:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Reuse the BioServiceManager.sInstance for zimId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 80
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "BioServiceManager.createInstance(Context, zimId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ") : null != sInstance"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public static destroyInstance()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 104
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "BioServiceManager.destroyInstance() : null == sInstance"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/Throwable;)V

    .line 109
    :goto_0
    const-string/jumbo v0, "BioServiceManager.destroyInstance()"

    invoke-static {v0}, Lcom/alipay/mobile/security/bio/utils/BioLog;->w(Ljava/lang/String;)V

    .line 110
    return-void

    .line 106
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-virtual {v0}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->destroy()V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    goto :goto_0
.end method

.method public static getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Should call BioServiceManager.createInstance(Context) before call BioServiceManager.getInstance(Context)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    sget-object v0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->b:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    return-object v0
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public getBioApplicationContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->a:Landroid/content/Context;

    return-object v0
.end method

.method public abstract getBioService(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract preLoad()I
.end method

.method public abstract startBioActivity(Lcom/alipay/mobile/security/bio/service/BioAppDescription;)Ljava/lang/String;
.end method

.method public abstract startBioActivity(Lcom/alipay/mobile/security/bio/service/BioAppDescription;Lcom/alipay/mobile/security/bio/module/MicroModule;)Ljava/lang/String;
.end method
