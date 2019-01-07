.class public Liwb;
.super Ljava/lang/Object;
.source "Encrypt.java"


# static fields
.field public static volatile e:Liwb;


# instance fields
.field public a:Lcom/dbappsecurity/utl/LogUts;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public f:Liwa;

.field public g:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

.field public h:Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

.field public i:Lcom/alibaba/android/dtencrypt/DTLogProxy;

.field public j:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Liwb;->e:Liwb;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Liwb;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/LogUts;->getInstance(Ljava/lang/String;)Lcom/dbappsecurity/utl/LogUts;

    move-result-object v0

    iput-object v0, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    .line 40
    iput-object v2, p0, Liwb;->b:Landroid/content/Context;

    .line 41
    const-string/jumbo v0, "||"

    iput-object v0, p0, Liwb;->c:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, ""

    iput-object v0, p0, Liwb;->d:Ljava/lang/String;

    .line 45
    iput-object v2, p0, Liwb;->f:Liwa;

    .line 951
    iput-object v2, p0, Liwb;->g:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

    .line 957
    iput-object v2, p0, Liwb;->h:Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    .line 958
    iput-object v2, p0, Liwb;->i:Lcom/alibaba/android/dtencrypt/DTLogProxy;

    .line 971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Liwb;->k:Ljava/util/List;

    .line 1140
    iput-object v2, p0, Liwb;->j:Lcom/alibaba/android/dtencrypt/DTHttpRequestProxy;

    .line 61
    new-instance v0, Liwa;

    invoke-direct {v0}, Liwa;-><init>()V

    iput-object v0, p0, Liwb;->f:Liwa;

    .line 62
    return-void
.end method

.method public static a()Liwb;
    .locals 2

    .prologue
    .line 49
    sget-object v0, Liwb;->e:Liwb;

    if-nez v0, :cond_1

    .line 50
    const-class v1, Liwb;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Liwb;->e:Liwb;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Liwb;

    invoke-direct {v0}, Liwb;-><init>()V

    sput-object v0, Liwb;->e:Liwb;

    .line 54
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Liwb;->e:Liwb;

    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static b()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-static {}, Lcom/dbappsecurity/et/DIJniToJar;->stringFromJNI()V

    .line 176
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sourcefilePath"    # Ljava/lang/String;
    .param p2, "destfilePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Liwb;->f:Liwa;

    iget-object v2, v2, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 477
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 478
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 942
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 943
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 945
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 947
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private e(Ljava/lang/String;)V
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 826
    iget-object v2, p0, Liwb;->h:Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    if-eqz v2, :cond_0

    .line 827
    iget-object v2, p0, Liwb;->h:Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    invoke-interface {v2, p1}, Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;->sendBroadcast(Ljava/lang/String;)V

    .line 830
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Liwb;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 831
    iget-object v2, p0, Liwb;->k:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;

    .line 832
    .local v1, "tmpProxy":Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;
    if-eqz v1, :cond_1

    .line 833
    invoke-interface {v1, p1}, Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;->sendBroadcast(Ljava/lang/String;)V

    .line 830
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 835
    .end local v1    # "tmpProxy":Lcom/alibaba/android/dtencrypt/DTSendBroadcastProxy;
    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dbappsecurity/entity/Versns;
    .locals 3
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1227
    const/4 v1, 0x0

    .line 1229
    .local v1, "versns":Lcom/dbappsecurity/entity/Versns;
    iget-object v2, p0, Liwb;->f:Liwa;

    iget-object v2, v2, Liwa;->g:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1231
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1232
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1233
    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1235
    invoke-direct {p0, p1, p2, p3}, Liwb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1237
    .local v0, "randomKey":Ljava/lang/String;
    iget-object v2, p0, Liwb;->f:Liwa;

    iget-object v2, v2, Liwa;->g:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "versns":Lcom/dbappsecurity/entity/Versns;
    check-cast v1, Lcom/dbappsecurity/entity/Versns;

    .line 1241
    .end local v0    # "randomKey":Ljava/lang/String;
    .restart local v1    # "versns":Lcom/dbappsecurity/entity/Versns;
    :cond_0
    return-object v1
.end method

.method public final a(Ljava/lang/String;)V
    .locals 4
    .param p1, "save_path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 99
    iget-object v0, p0, Liwb;->f:Liwa;

    .line 2050
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Liwa;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Liwa;->i:Ljava/lang/String;

    .line 2051
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Liwa;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Liwa;->k:Ljava/lang/String;

    .line 2053
    iget-object v0, v0, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v1, "setSave_path()_save_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isHttp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1275
    new-instance v0, Lcom/dbappsecurity/entity/DomainCasheEntity;

    invoke-direct {v0}, Lcom/dbappsecurity/entity/DomainCasheEntity;-><init>()V

    .line 1277
    .local v0, "domainEntity":Lcom/dbappsecurity/entity/DomainCasheEntity;
    invoke-virtual {v0, p2}, Lcom/dbappsecurity/entity/DomainCasheEntity;->setUrl(Ljava/lang/String;)V

    .line 1278
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/dbappsecurity/entity/DomainCasheEntity;->setLoading(Z)V

    .line 1280
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1282
    .end local v0    # "domainEntity":Lcom/dbappsecurity/entity/DomainCasheEntity;
    :cond_0
    monitor-exit p0

    return-void

    .line 1273
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;
    .param p4, "refreshKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 881
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 883
    :cond_0
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SD_PathInvalid:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "onKeyDo"

    .line 884
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 888
    :cond_1
    :try_start_1
    iget-object v0, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v1, "onKeyDo()_params"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "corpId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  appkeyVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  mathematicalVersion:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  refreshKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {p0, p1, p2, p3}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/dbappsecurity/entity/Versns;

    move-result-object v9

    .line 899
    .local v9, "versns":Lcom/dbappsecurity/entity/Versns;
    if-eqz v9, :cond_2

    .line 900
    invoke-virtual {v9}, Lcom/dbappsecurity/entity/Versns;->getTime()Ljava/lang/String;

    .line 906
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->KeyLoading:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "onKeyDo"

    .line 907
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 913
    :cond_2
    invoke-virtual {p0, p1}, Liwb;->c(Ljava/lang/String;)Lcom/dbappsecurity/entity/DomainCasheEntity;

    move-result-object v7

    .line 915
    .local v7, "domainEntity":Lcom/dbappsecurity/entity/DomainCasheEntity;
    if-eqz v7, :cond_4

    .line 916
    iget-object v0, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v1, "onKeyDo()_params"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Domain_url:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 917
    invoke-virtual {v7}, Lcom/dbappsecurity/entity/DomainCasheEntity;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--isLoading:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 916
    invoke-virtual {v0, v1, v2}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-virtual {v7}, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 920
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainNameSwitching:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 921
    invoke-virtual {v2}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v4, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 924
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/dbappsecurity/entity/DomainCasheEntity;->setLoading(Z)V

    .line 928
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Liwb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 929
    .local v8, "randomKey":Ljava/lang/String;
    iget-object v0, p0, Liwb;->f:Liwa;

    iget-object v10, v0, Liwa;->g:Ljava/util/Map;

    new-instance v0, Lcom/dbappsecurity/entity/Versns;

    const-string/jumbo v4, ""

    .line 931
    invoke-static {}, Lcom/dbappsecurity/utl/Util;->getCurrentdate()Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/dbappsecurity/entity/Versns;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 929
    invoke-interface {v10, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const/4 v0, 0x0

    invoke-static {v0}, Liwc;->a(Ljava/lang/String;)Liwc;

    .line 3025
    const-string/jumbo v0, "http://server.Safeding.com:8080"

    .line 3999
    iget-object v1, p0, Liwb;->g:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

    if-eqz v1, :cond_5

    .line 4001
    iget-object v1, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v2, "onDTGetCodeProxy()_params"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "corpId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  appkeyVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  mathematicalVersion:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 4011
    iget-object v1, p0, Liwb;->g:Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;

    new-instance v2, Liwb$3;

    invoke-direct {v2, p0, p1, p2, p3}, Liwb$3;-><init>(Liwb;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, p1, v0, v2}, Lcom/alibaba/android/dtencrypt/DTGetCodeProxy;->getCode(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTGetCodeProxy$DTGetCodeCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 4039
    :cond_5
    :try_start_2
    invoke-virtual {p0, p1, p2, p3}, Liwb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "response"    # Ljava/lang/String;
    .param p3, "str_key"    # Ljava/lang/String;
    .param p4, "refreshKey"    # Ljava/lang/String;
    .param p5, "appkeyVersion"    # Ljava/lang/String;
    .param p6, "mathematicalVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    .prologue
    .line 629
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "onLocRefreshKey()_params"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "corpId:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " response:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " str_key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " refreshKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " appkeyVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p5

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mathematicalVersion:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    new-instance v17, Lcom/google/gson/Gson;

    invoke-direct/range {v17 .. v17}, Lcom/google/gson/Gson;-><init>()V

    .line 647
    .local v17, "gson":Lcom/google/gson/Gson;
    :try_start_0
    new-instance v4, Liwb$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Liwb$2;-><init>(Liwb;)V

    .line 648
    invoke-virtual {v4}, Liwb$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 647
    move-object/from16 v0, v17

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/dbappsecurity/entity/ResultEntity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 667
    .local v19, "resultEntity":Lcom/dbappsecurity/entity/ResultEntity;
    if-eqz v19, :cond_9

    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getErrcode()I

    move-result v4

    if-nez v4, :cond_9

    .line 669
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getMsgtype()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 670
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getDomainName()Ljava/lang/String;

    move-result-object v4

    .line 669
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 676
    :try_start_1
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getDomainName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "(onLocRefreshKey)DIJniToJar.domainName"

    invoke-static {v4, v5}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "onLocRefreshKey"

    invoke-static {v4, v5}, Lcom/dbappsecurity/et/DIJniToJar;->domainName([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 679
    .local v22, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "onLocRefreshKey()_DIJniToJar.domainName"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "url:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_1 .. :try_end_1} :catch_1

    .line 704
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Liwb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static/range {v22 .. v22}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {v22 .. v22}, Lcom/dbappsecurity/utl/JZVerifyType;->isHttp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 708
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const-string/jumbo v4, "-1"

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v4, v5, v6}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    .end local v22    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 649
    .end local v19    # "resultEntity":Lcom/dbappsecurity/entity/ResultEntity;
    :catch_0
    move-exception v15

    .line 650
    .local v15, "e":Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 652
    new-instance v4, Lcom/dbappsecurity/entity/ErrEntity;

    invoke-direct {v4}, Lcom/dbappsecurity/entity/ErrEntity;-><init>()V

    const-string/jumbo v5, "\uff08onLocRefreshKey\uff09response Parse error "

    .line 653
    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrMethod(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 654
    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrCode(I)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 657
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/dbappsecurity/entity/ErrEntity;->Response(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 661
    invoke-virtual {v4}, Lcom/dbappsecurity/entity/ErrEntity;->toString()Ljava/lang/String;

    move-result-object v16

    .line 663
    .local v16, "errmsg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 680
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "errmsg":Ljava/lang/String;
    .restart local v19    # "resultEntity":Lcom/dbappsecurity/entity/ResultEntity;
    :catch_1
    move-exception v15

    .line 681
    .local v15, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual {v15}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->printStackTrace()V

    .line 683
    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    const/4 v14, 0x0

    .line 686
    .local v14, "code":I
    invoke-virtual {v15}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v14

    .line 689
    new-instance v4, Lcom/dbappsecurity/entity/ErrEntity;

    invoke-direct {v4}, Lcom/dbappsecurity/entity/ErrEntity;-><init>()V

    const-string/jumbo v5, "\uff08onLocRefreshKey\uff09DIJniToJar.domainName"

    .line 690
    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrMethod(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 691
    invoke-virtual {v4, v14}, Lcom/dbappsecurity/entity/ErrEntity;->ErrCode(I)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 694
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/dbappsecurity/entity/ErrEntity;->Response(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 698
    invoke-virtual {v4}, Lcom/dbappsecurity/entity/ErrEntity;->toString()Ljava/lang/String;

    move-result-object v16

    .line 700
    .restart local v16    # "errmsg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->DomainUrlDecryptErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 711
    .end local v14    # "code":I
    .end local v15    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    .end local v16    # "errmsg":Ljava/lang/String;
    :cond_1
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getMsgtype()I

    move-result v4

    if-nez v4, :cond_8

    .line 712
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getRets()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 713
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getRetslen()I

    move-result v4

    if-lez v4, :cond_8

    .line 717
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "onLocRefreshKey()_encryptKey()"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "Ret:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getRet()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " str_key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " Msglen:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 722
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getMsglen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 717
    invoke-virtual {v4, v5, v6}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    :try_start_2
    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getRets()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "DIJniToJar.encryptKeys"

    invoke-static {v4, v5}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    const-string/jumbo v5, "DIJniToJar.encryptKeys"

    .line 728
    move-object/from16 v0, p3

    invoke-static {v0, v5}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    const-string/jumbo v6, "DIJniToJar.encryptKeys"

    .line 729
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/dbappsecurity/entity/ResultEntity;->getRetslen()I

    move-result v7

    .line 726
    invoke-static {v4, v5, v6, v7}, Lcom/dbappsecurity/et/DIJniToJar;->encryptKeys([B[BLjava/lang/String;I)Ljava/lang/String;
    :try_end_2
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v20

    .line 754
    .local v20, "results":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "onLocRefreshKey()_encryptKey()_results"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    const-string/jumbo v4, ";"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 760
    .local v21, "strs":[Ljava/lang/String;
    if-eqz v21, :cond_7

    move-object/from16 v0, v21

    array-length v4, v0

    if-lez v4, :cond_7

    .line 761
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_1
    move-object/from16 v0, v21

    array-length v4, v0

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 764
    aget-object v4, v21, v18

    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 766
    :try_start_3
    aget-object v4, v21, v18

    .line 2844
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 2848
    const-string/jumbo v5, "\\|\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2850
    array-length v4, v5

    const/4 v6, 0x2

    if-le v4, v6, :cond_4

    .line 2852
    invoke-virtual/range {p0 .. p1}, Liwb;->c(Ljava/lang/String;)Lcom/dbappsecurity/entity/DomainCasheEntity;

    move-result-object v9

    .line 2854
    if-eqz v9, :cond_3

    invoke-virtual {v9}, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2855
    invoke-virtual {v9}, Lcom/dbappsecurity/entity/DomainCasheEntity;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 2854
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isHttp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2857
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->f:Liwa;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/4 v7, 0x2

    aget-object v7, v5, v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    .line 2858
    invoke-virtual {v9}, Lcom/dbappsecurity/entity/DomainCasheEntity;->getUrl()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    .line 2857
    invoke-virtual/range {v4 .. v12}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_3
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_3 .. :try_end_3} :catch_3

    .line 761
    :cond_2
    :goto_2
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 730
    .end local v18    # "i":I
    .end local v20    # "results":Ljava/lang/String;
    .end local v21    # "strs":[Ljava/lang/String;
    :catch_2
    move-exception v23

    .line 731
    .local v23, "var2":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->printStackTrace()V

    .line 733
    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    const/4 v14, 0x0

    .line 736
    .restart local v14    # "code":I
    invoke-virtual/range {v23 .. v23}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v14

    .line 739
    new-instance v4, Lcom/dbappsecurity/entity/ErrEntity;

    invoke-direct {v4}, Lcom/dbappsecurity/entity/ErrEntity;-><init>()V

    const-string/jumbo v5, "\uff08onLocRefreshKey\uff09DIJniToJar.encryptKeys"

    .line 740
    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrMethod(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 741
    invoke-virtual {v4, v14}, Lcom/dbappsecurity/entity/ErrEntity;->ErrCode(I)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 744
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/dbappsecurity/entity/ErrEntity;->Response(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 748
    invoke-virtual {v4}, Lcom/dbappsecurity/entity/ErrEntity;->toString()Ljava/lang/String;

    move-result-object v16

    .line 750
    .restart local v16    # "errmsg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 2861
    .end local v14    # "code":I
    .end local v16    # "errmsg":Ljava/lang/String;
    .end local v23    # "var2":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    .restart local v18    # "i":I
    .restart local v20    # "results":Ljava/lang/String;
    .restart local v21    # "strs":[Ljava/lang/String;
    :cond_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Liwb;->f:Liwa;

    const/4 v6, 0x1

    aget-object v6, v5, v6

    const/4 v7, 0x2

    aget-object v7, v5, v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v5, p1

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v12}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    :try_end_4
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 767
    :catch_3
    move-exception v15

    .line 768
    .restart local v15    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-virtual {v15}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->printStackTrace()V

    .line 770
    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    const/4 v13, 0x0

    .line 773
    .local v13, "ErrorCode":I
    invoke-virtual {v15}, Lcom/alibaba/android/dtencrypt/DTEncryptException;->getErrorCode()I

    move-result v13

    .line 776
    new-instance v4, Lcom/dbappsecurity/entity/ErrEntity;

    invoke-direct {v4}, Lcom/dbappsecurity/entity/ErrEntity;-><init>()V

    const-string/jumbo v5, "\uff08onLocRefreshKey\uff09singlekeySave"

    .line 777
    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrMethod(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 778
    invoke-virtual {v4, v13}, Lcom/dbappsecurity/entity/ErrEntity;->ErrCode(I)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 781
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/dbappsecurity/entity/ErrEntity;->Response(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 785
    invoke-virtual {v4}, Lcom/dbappsecurity/entity/ErrEntity;->toString()Ljava/lang/String;

    move-result-object v16

    .line 787
    .restart local v16    # "errmsg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 2864
    .end local v13    # "ErrorCode":I
    .end local v15    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    .end local v16    # "errmsg":Ljava/lang/String;
    :cond_4
    :try_start_5
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 2865
    invoke-virtual {v6}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 2869
    :cond_5
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SaveSingleParseKeyParameterErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 2870
    invoke-virtual {v6}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4
    :try_end_5
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_5 .. :try_end_5} :catch_3

    .line 794
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Liwb;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-direct/range {p0 .. p1}, Liwb;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 799
    .end local v18    # "i":I
    :cond_7
    new-instance v4, Lcom/dbappsecurity/entity/ErrEntity;

    invoke-direct {v4}, Lcom/dbappsecurity/entity/ErrEntity;-><init>()V

    const-string/jumbo v5, "\uff08onLocRefreshKey\uff09(DIJniToJar.encryptKeys) results.split"

    .line 800
    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrMethod(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 801
    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/dbappsecurity/entity/ErrEntity;->ErrCode(I)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 804
    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Lcom/dbappsecurity/entity/ErrEntity;->Response(Ljava/lang/String;)Lcom/dbappsecurity/entity/ErrEntity;

    move-result-object v4

    .line 808
    invoke-virtual {v4}, Lcom/dbappsecurity/entity/ErrEntity;->toString()Ljava/lang/String;

    move-result-object v16

    .line 810
    .restart local v16    # "errmsg":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretKeyEncryption:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    move-object/from16 v0, v16

    invoke-direct {v4, v5, v0, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 814
    .end local v16    # "errmsg":Ljava/lang/String;
    .end local v20    # "results":Ljava/lang/String;
    .end local v21    # "strs":[Ljava/lang/String;
    :cond_8
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 815
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4

    .line 819
    :cond_9
    new-instance v4, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v5}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v5

    sget-object v6, Lcom/dbappsecurity/utl/ErrorMsg$Err;->onLocRefreshKeyHtpParamsEmpty:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 820
    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v8, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v4
.end method

.method public final a(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 11
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "msgbytes"    # [B
    .param p3, "sourcefilePath"    # Ljava/lang/String;
    .param p4, "destfilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 379
    iget-object v0, p0, Liwb;->f:Liwa;

    invoke-virtual {v0, p1}, Liwa;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 381
    iget-object v0, p0, Liwb;->f:Liwa;

    iget-object v0, v0, Liwa;->e:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 382
    .local v7, "companyEntity":Lcom/dbappsecurity/entity/CompanyEntity;
    invoke-virtual {v7}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/dbappsecurity/entity/Versns;

    .line 384
    .local v10, "versns":Lcom/dbappsecurity/entity/Versns;
    if-eqz v10, :cond_6

    invoke-virtual {v7}, Lcom/dbappsecurity/entity/CompanyEntity;->getRefreshKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 387
    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptDataHelper"

    .line 390
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 394
    :cond_0
    iget-object v0, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v1, "encryptKey()_encryptMsg()"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  Key:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getAppkeyVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "encryptDataHelper"

    invoke-static {v0, v1}, Lcom/dbappsecurity/utl/Util;->ParseNumeric(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 399
    .local v4, "AppkeyVers":I
    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getMathematicalVersion()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "encryptDataHelper"

    invoke-static {v0, v1}, Lcom/dbappsecurity/utl/Util;->ParseNumeric(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 401
    .local v5, "MathematicalVers":I
    if-eqz v4, :cond_1

    if-nez v5, :cond_2

    .line 402
    :cond_1
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->AppkeyVersOrMathematicalVersErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptDataHelper"

    .line 403
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 407
    :cond_2
    if-nez p2, :cond_4

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2461
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2462
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2463
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->encryptDataHelper_isloadgong:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->encryptDataHelper_isloadgong:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "repeatControlCashe"

    .line 2464
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 2471
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2472
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->d:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :try_start_0
    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DIJniToJar.encryptFileHelper"

    invoke-static {v0, v1}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "DIJniToJar.encryptFileHelper"

    .line 418
    invoke-virtual {p0, v1}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Liwb;->i:Lcom/alibaba/android/dtencrypt/DTLogProxy;

    move-object v1, p3

    move-object v2, p4

    .line 414
    invoke-static/range {v0 .. v6}, Lcom/dbappsecurity/et/DIJniToJar;->encryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/alibaba/android/dtencrypt/DTLogProxy;)[B
    :try_end_0
    .catch Lcom/alibaba/android/dtencrypt/DTEncryptException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 426
    .local v9, "result":[B
    invoke-direct {p0, p3, p4}, Liwb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-object v9

    .line 421
    .end local v9    # "result":[B
    :catch_0
    move-exception v8

    .line 422
    .local v8, "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    invoke-direct {p0, p3, p4}, Liwb;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    throw v8

    .line 429
    .end local v8    # "e":Lcom/alibaba/android/dtencrypt/DTEncryptException;
    :cond_4
    if-eqz p2, :cond_5

    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    invoke-virtual {v10}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DIJniToJar.encryptBufferHelper"

    invoke-static {v0, v1}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    const-string/jumbo v1, "DIJniToJar.encryptBufferHelper"

    .line 434
    invoke-virtual {p0, v1}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-static {p2, v0, v1, v4, v5}, Lcom/dbappsecurity/et/DIJniToJar;->encryptBufferHelper([B[BLjava/lang/String;II)[B

    move-result-object v9

    .restart local v9    # "result":[B
    goto :goto_0

    .line 438
    .end local v9    # "result":[B
    :cond_5
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptDataHelper"

    .line 439
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 443
    .end local v4    # "AppkeyVers":I
    .end local v5    # "MathematicalVers":I
    :cond_6
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    invoke-virtual {v7}, Lcom/dbappsecurity/entity/CompanyEntity;->getRefreshKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyUpdata:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptDataHelper"

    .line 445
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0

    .line 449
    .end local v7    # "companyEntity":Lcom/dbappsecurity/entity/CompanyEntity;
    .end local v10    # "versns":Lcom/dbappsecurity/entity/Versns;
    :cond_7
    const-string/jumbo v0, "-1"

    const-string/jumbo v1, "-1"

    const-string/jumbo v2, ""

    invoke-virtual {p0, p1, v0, v1, v2}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    new-instance v0, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v1, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v1

    sget-object v2, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v3, "encryptDataHelper"

    .line 451
    invoke-virtual {v2, v3}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v0, v1, v2, v3, v6}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/16 v7, 0x10

    .line 133
    iget-object v3, p0, Liwb;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Liwb;->b:Landroid/content/Context;

    if-eqz v3, :cond_3

    .line 134
    iget-object v3, p0, Liwb;->b:Landroid/content/Context;

    invoke-static {v3}, Lcom/dbappsecurity/utl/JZDeviceInfo;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "strIMEI":Ljava/lang/String;
    invoke-static {v2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    const-string/jumbo v2, ""

    .line 140
    :cond_0
    iget-object v3, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v4, "setContext()_IMEI_Yuan:"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " strIMEI.size():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 141
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 140
    invoke-virtual {v3, v4, v5}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    rsub-int/lit8 v1, v3, 0x10

    .line 144
    .local v1, "numEnd":I
    if-lez v1, :cond_1

    .line 145
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 145
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "i":I
    :cond_1
    if-gez v1, :cond_2

    .line 149
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 152
    :cond_2
    iput-object v2, p0, Liwb;->d:Ljava/lang/String;

    .line 155
    .end local v1    # "numEnd":I
    .end local v2    # "strIMEI":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Liwb;->d:Ljava/lang/String;

    invoke-static {v3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Liwb;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v7, :cond_5

    .line 156
    :cond_4
    const-string/jumbo v3, ""

    iput-object v3, p0, Liwb;->d:Ljava/lang/String;

    .line 158
    new-instance v3, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v4, Lcom/dbappsecurity/utl/ErrorMsg$Err;->IMEI_Err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v4}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v4

    sget-object v5, Lcom/dbappsecurity/utl/ErrorMsg$Err;->IMEI_Err:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    .line 159
    invoke-virtual {v5, p1}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v7, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v3

    .line 162
    :cond_5
    iget-object v3, p0, Liwb;->f:Liwa;

    iget-object v4, p0, Liwb;->d:Ljava/lang/String;

    .line 2431
    invoke-static {v4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2432
    const-string/jumbo v4, "kfdafd&&^%%))&4885ey"

    iput-object v4, v3, Liwa;->o:Ljava/lang/String;

    .line 2438
    :goto_1
    iget-object v4, v3, Liwa;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v5, "masterPassword:"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Liwa;->o:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "--"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v4, "getDeviceID()_IMEI: "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Liwb;->d:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " IMEI.size():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Liwb;->d:Ljava/lang/String;

    .line 166
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-virtual {v3, v4, v5}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Liwb;->d:Ljava/lang/String;

    return-object v3

    .line 2434
    :cond_6
    iput-object v4, v3, Liwa;->o:Ljava/lang/String;

    goto :goto_1
.end method

.method public final declared-synchronized b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "appkeyVersion"    # Ljava/lang/String;
    .param p3, "mathematicalVersion"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1247
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Liwb;->d(Ljava/lang/String;)V

    .line 1249
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->g:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1251
    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1252
    invoke-static {p2}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1253
    invoke-static {p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1254
    invoke-direct {p0, p1, p2, p3}, Liwb;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1256
    .local v0, "randomKey":Ljava/lang/String;
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->g:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1259
    .end local v0    # "randomKey":Ljava/lang/String;
    :cond_0
    monitor-exit p0

    return-void

    .line 1247
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final b(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)[B
    .locals 14
    .param p1, "corpId"    # Ljava/lang/String;
    .param p2, "msgbytes"    # [B
    .param p3, "sourcefilePath"    # Ljava/lang/String;
    .param p4, "destfilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 493
    const/4 v6, 0x0

    .line 495
    .local v6, "result":[B
    new-instance v2, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v2, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 496
    .local v2, "appkeyVersion":Ljava/lang/Integer;
    new-instance v5, Ljava/lang/Integer;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Ljava/lang/Integer;-><init>(I)V

    .line 498
    .local v5, "mathematicalVersion":Ljava/lang/Integer;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-static {v0, v1, v2, v5}, Lcom/dbappsecurity/et/DIJniToJar;->getEncryptionAttributeHelper([BLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 503
    iget-object v9, p0, Liwb;->f:Liwa;

    invoke-virtual {v9, p1}, Liwa;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 505
    iget-object v9, p0, Liwb;->f:Liwa;

    iget-object v9, v9, Liwa;->e:Ljava/util/Map;

    invoke-interface {v9, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/dbappsecurity/entity/CompanyEntity;

    .line 507
    .local v3, "companyEntity":Lcom/dbappsecurity/entity/CompanyEntity;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 509
    .local v8, "verKey":Ljava/lang/String;
    iget-object v9, p0, Liwb;->a:Lcom/dbappsecurity/utl/LogUts;

    const-string/jumbo v10, "decryptKey()_verKey \uff1a"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "verKey:"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "--"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/dbappsecurity/utl/LogUts;->logutE(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    invoke-virtual {v3}, Lcom/dbappsecurity/entity/CompanyEntity;->getMapVers()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/dbappsecurity/entity/Versns;

    .line 513
    .local v7, "ver":Lcom/dbappsecurity/entity/Versns;
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 515
    if-nez p2, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static/range {p4 .. p4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 519
    invoke-virtual {v7}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "DIJniToJar.decryptFileHelper"

    invoke-static {v9, v10}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    const-string/jumbo v10, "DIJniToJar.decryptFileHelper"

    .line 522
    invoke-virtual {p0, v10}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Liwb;->i:Lcom/alibaba/android/dtencrypt/DTLogProxy;

    .line 518
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-static {v9, v0, v1, v10, v11}, Lcom/dbappsecurity/et/DIJniToJar;->decryptFileHelper([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dtencrypt/DTLogProxy;)[B

    .line 554
    :goto_0
    return-object v6

    .line 523
    :cond_0
    if-eqz p2, :cond_1

    invoke-static/range {p3 .. p3}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-static/range {p4 .. p4}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 528
    invoke-virtual {v7}, Lcom/dbappsecurity/entity/Versns;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "DIJniToJar.decryptBufferHelper"

    invoke-static {v9, v10}, Lcom/dbappsecurity/utl/Util;->strToByte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    const-string/jumbo v10, "DIJniToJar.decryptBufferHelper"

    .line 529
    invoke-virtual {p0, v10}, Liwb;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 526
    move-object/from16 v0, p2

    invoke-static {v0, v9, v10}, Lcom/dbappsecurity/et/DIJniToJar;->decryptBufferHelper([B[BLjava/lang/String;)[B

    move-result-object v6

    goto :goto_0

    .line 531
    :cond_1
    new-instance v9, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v10, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v10}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v10

    sget-object v11, Lcom/dbappsecurity/utl/ErrorMsg$Err;->MethodParamsErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v12, "decryptDataHelperCondition"

    .line 532
    invoke-virtual {v11, v12}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v13, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v9

    .line 536
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {p0, p1, v9, v10, v11}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " , appkeyVersion||mathematicalVersion\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    .local v4, "err_msg":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v10, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v10}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyErr:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v13, "decryptDataHelper"

    .line 541
    invoke-virtual {v12, v13}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v13, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v9

    .line 545
    .end local v3    # "companyEntity":Lcom/dbappsecurity/entity/CompanyEntity;
    .end local v4    # "err_msg":Ljava/lang/String;
    .end local v7    # "ver":Lcom/dbappsecurity/entity/Versns;
    .end local v8    # "verKey":Ljava/lang/String;
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, ""

    invoke-virtual {p0, p1, v9, v10, v11}, Liwb;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, " , appkeyVersion||mathematicalVersion\uff1a"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Liwb;->c:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 549
    .restart local v4    # "err_msg":Ljava/lang/String;
    new-instance v9, Lcom/alibaba/android/dtencrypt/DTEncryptException;

    sget-object v10, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    invoke-virtual {v10}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getCode()I

    move-result v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Lcom/dbappsecurity/utl/ErrorMsg$Err;->SecretkeyNotExist:Lcom/dbappsecurity/utl/ErrorMsg$Err;

    const-string/jumbo v13, "decryptDataHelper"

    .line 550
    invoke-virtual {v12, v13}, Lcom/dbappsecurity/utl/ErrorMsg$Err;->getErrMsg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;->DOMAIN_ANHEN:Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;

    sget-object v13, Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;->CAN_RETRY:Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;

    invoke-direct {v9, v10, v11, v12, v13}, Lcom/alibaba/android/dtencrypt/DTEncryptException;-><init>(ILjava/lang/String;Lcom/alibaba/android/dtencrypt/DTEncryptException$Domain;Lcom/alibaba/android/dtencrypt/DTEncryptException$ErrorCategory;)V

    throw v9
.end method

.method declared-synchronized c(Ljava/lang/String;)Lcom/dbappsecurity/entity/DomainCasheEntity;
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1262
    monitor-enter p0

    const/4 v0, 0x0

    .line 1264
    .local v0, "dommainName_Cashe":Lcom/dbappsecurity/entity/DomainCasheEntity;
    :try_start_0
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1265
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dommainName_Cashe":Lcom/dbappsecurity/entity/DomainCasheEntity;
    check-cast v0, Lcom/dbappsecurity/entity/DomainCasheEntity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1268
    .restart local v0    # "dommainName_Cashe":Lcom/dbappsecurity/entity/DomainCasheEntity;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 1262
    .end local v0    # "dommainName_Cashe":Lcom/dbappsecurity/entity/DomainCasheEntity;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final c()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/android/dtencrypt/DTEncryptException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 182
    iget-object v0, p0, Liwb;->f:Liwa;

    const/4 v7, 0x0

    const/4 v8, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    invoke-virtual/range {v0 .. v8}, Liwa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 183
    return-void
.end method

.method declared-synchronized d(Ljava/lang/String;)V
    .locals 2
    .param p1, "corpId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 1286
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/dbappsecurity/utl/JZVerifyType;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1288
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/dbappsecurity/entity/DomainCasheEntity;

    .line 1290
    .local v0, "domainEntity":Lcom/dbappsecurity/entity/DomainCasheEntity;
    if-eqz v0, :cond_0

    .line 1291
    invoke-virtual {v0}, Lcom/dbappsecurity/entity/DomainCasheEntity;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Liwb;->f:Liwa;

    iget-object v1, v1, Liwa;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1296
    .end local v0    # "domainEntity":Lcom/dbappsecurity/entity/DomainCasheEntity;
    :cond_0
    monitor-exit p0

    return-void

    .line 1286
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
