.class public Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
.super Ljava/lang/Object;
.source "H5UpdateAppParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    }
.end annotation


# instance fields
.field private appMap:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

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

.field private appReq:Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

.field private downLoadAmr:Z

.field private downloadRandom:Z

.field private forceRpc:Z

.field private fromWholeNetwork:Z

.field private resPackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private startTime:J

.field private updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appMap:Ljava/util/Map;

    .line 29
    iput-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .line 34
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->fromWholeNetwork:Z

    .line 38
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downLoadAmr:Z

    .line 42
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->forceRpc:Z

    .line 46
    iput-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downloadRandom:Z

    return-void
.end method

.method static synthetic access$002(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$102(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;)Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    return-object p1
.end method

.method static synthetic access$202(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downLoadAmr:Z

    return p1
.end method

.method static synthetic access$302(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->forceRpc:Z

    return p1
.end method

.method static synthetic access$402(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appReq:Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    return-object p1
.end method

.method static synthetic access$502(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downloadRandom:Z

    return p1
.end method

.method static synthetic access$602(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->resPackageList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->startTime:J

    return-wide p1
.end method

.method static synthetic access$802(Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->fromWholeNetwork:Z

    return p1
.end method

.method public static newBuilder()Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;
    .locals 1

    .prologue
    .line 116
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getAppMap()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appMap:Ljava/util/Map;

    return-object v0
.end method

.method public getAppReq()Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appReq:Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    return-object v0
.end method

.method public getResPackageList()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->resPackageList:Ljava/util/List;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->startTime:J

    return-wide v0
.end method

.method public getUpdateCallback()Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    return-object v0
.end method

.method public isDownLoadAmr()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downLoadAmr:Z

    return v0
.end method

.method public isDownloadRandom()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downloadRandom:Z

    return v0
.end method

.method public isForceRpc()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->forceRpc:Z

    return v0
.end method

.method public isFromWholeNetwork()Z
    .locals 1

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->fromWholeNetwork:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "H5UpdateAppParam{appMap="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appMap:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", updateCallback="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->updateCallback:Lcom/alipay/mobile/nebula/callback/H5UpdateAppCallback;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", fromWholeNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->fromWholeNetwork:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downLoadAmr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downLoadAmr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", forceRpc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->forceRpc:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", downloadRandom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->downloadRandom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->startTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", resPackageList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->resPackageList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appReq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/api/H5UpdateAppParam;->appReq:Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
