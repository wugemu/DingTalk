.class public Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;
.super Ljava/lang/Object;
.source "VerifyActivityCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->c:Ljava/util/Map;

    .line 27
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    invoke-direct {v0}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;-><init>()V

    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    .line 38
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized destroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    if-eqz v0, :cond_2

    .line 46
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 49
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;

    .line 50
    invoke-virtual {v0}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 51
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 55
    :cond_1
    :try_start_1
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->b:Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;

    iget-object v0, v0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized recordActivity(Landroid/app/Activity;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 67
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 68
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    sget-object v1, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "recordActivity(key="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;->c:Ljava/util/Map;

    new-instance v2, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;

    invoke-direct {v2, p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections$ActivityRef;-><init>(Lcom/alipay/mobile/verifyidentity/ui/VerifyActivityCollections;Landroid/app/Activity;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_0
    monitor-exit p0

    return-void

    .line 67
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
