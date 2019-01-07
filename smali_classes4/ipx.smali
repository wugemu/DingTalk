.class public final Lipx;
.super Lcom/alipay/mobile/security/zim/api/ZIMFacade;
.source "ZimPlatform.java"


# static fields
.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private c:Lipy;

.field private d:Lcom/alipay/mobile/security/zim/api/ZIMCallback;

.field private e:Lcom/alipay/mobile/security/bio/api/BioDetector;

.field private f:Ljava/lang/String;

.field private g:Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

.field private h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lipx;->b:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "zimId"    # Ljava/lang/String;

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/alipay/mobile/security/zim/api/ZIMFacade;-><init>()V

    .line 61
    const-string/jumbo v2, ""

    iput-object v2, p0, Lipx;->f:Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lipx;->a:Landroid/content/Context;

    .line 67
    new-instance v2, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    invoke-direct {v2, p1}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lipx;->g:Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    .line 68
    new-instance v2, Lcom/alipay/mobile/security/bio/module/MicroModule;

    invoke-direct {v2, p2}, Lcom/alipay/mobile/security/bio/module/MicroModule;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v2}, Lcom/alipay/mobile/security/bio/api/BioDetectorBuilder;->create(Landroid/content/Context;Lcom/alipay/mobile/security/bio/module/MicroModule;)Lcom/alipay/mobile/security/bio/api/BioDetector;

    move-result-object v2

    iput-object v2, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 69
    iget-object v2, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    if-nez v2, :cond_0

    .line 70
    const-string/jumbo v2, "BIO"

    const-string/jumbo v3, "mBioDetector null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v2

    iput-object v2, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    .line 76
    iget-object v2, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v3, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;

    .line 77
    .local v0, "apSecurityService":Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;
    if-nez v0, :cond_1

    .line 78
    const-string/jumbo v2, "BioTransfer.buildBioParameter(): null == ApSecurityService"

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 83
    :goto_0
    new-instance v1, Lipx$1;

    invoke-direct {v1, p0}, Lipx$1;-><init>(Lipx;)V

    .line 235
    .local v1, "gwListener":Lipz;
    new-instance v2, Liqa;

    iget-object v3, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-direct {v2, v3, v1}, Liqa;-><init>(Lcom/alipay/mobile/security/bio/service/BioServiceManager;Lipz;)V

    iput-object v2, p0, Lipx;->c:Lipy;

    .line 250
    return-void

    .line 80
    .end local v1    # "gwListener":Lipz;
    :cond_1
    const-string/jumbo v2, "BioTransfer.buildBioParameter(): ApSecurityService.init()"

    invoke-static {v2}, Lcom/alipay/mobile/security/bio/utils/BioLog;->i(Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lipx;->a:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/security/bio/service/local/apsecurity/ApSecurityService;->init(Landroid/content/Context;)V

    goto :goto_0
.end method

.method static synthetic a(Lipx;)Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->g:Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    return-object v0
.end method

.method static synthetic a(Lipx;Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;)V
    .locals 3
    .param p0, "x0"    # Lipx;
    .param p1, "x1"    # Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;

    .prologue
    .line 45
    .line 2353
    new-instance v0, Lipv;

    iget-object v1, p0, Lipx;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lipv;-><init>(Ljava/lang/String;)V

    .line 2354
    if-eqz p1, :cond_0

    .line 2355
    const/4 v1, 0x0

    iput-boolean v1, v0, Lipv;->b:Z

    .line 2356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lipv;->c:Ljava/lang/String;

    .line 2357
    iget v1, p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimValidateGwResponse;->validationRetCode:I

    sparse-switch v1, :sswitch_data_0

    .line 2366
    :cond_0
    :goto_0
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {v1}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v1

    sget-object v2, Lipw;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lipw;->a(Ljava/lang/String;Lipv;)V

    .line 45
    return-void

    .line 2360
    :sswitch_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lipv;->b:Z

    goto :goto_0

    .line 2357
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lipx;Lcom/alipay/mobile/security/bio/api/BioParameter;)V
    .locals 2
    .param p0, "x0"    # Lipx;
    .param p1, "x1"    # Lcom/alipay/mobile/security/bio/api/BioParameter;

    .prologue
    .line 45
    .line 1253
    iget-object v0, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    new-instance v1, Lipx$2;

    invoke-direct {v1, p0}, Lipx$2;-><init>(Lipx;)V

    invoke-interface {v0, p1, v1}, Lcom/alipay/mobile/security/bio/api/BioDetector;->auth(Lcom/alipay/mobile/security/bio/api/BioParameter;Lcom/alipay/mobile/security/bio/api/BioCallback;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lipx;Lcom/alipay/mobile/security/zim/api/ZIMResponse;)V
    .locals 3
    .param p0, "x0"    # Lipx;
    .param p1, "x1"    # Lcom/alipay/mobile/security/zim/api/ZIMResponse;

    .prologue
    .line 45
    .line 1371
    new-instance v0, Lipv;

    iget-object v1, p0, Lipx;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Lipv;-><init>(Ljava/lang/String;)V

    .line 1372
    if-eqz p1, :cond_0

    .line 1373
    const/4 v1, 0x0

    iput-boolean v1, v0, Lipv;->b:Z

    .line 1374
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lipv;->c:Ljava/lang/String;

    .line 1375
    iget v1, p1, Lcom/alipay/mobile/security/zim/api/ZIMResponse;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 1384
    :cond_0
    :goto_0
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {v1}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v1

    sget-object v2, Lipw;->j:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lipw;->a(Ljava/lang/String;Lipv;)V

    .line 45
    return-void

    .line 1378
    :sswitch_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lipv;->b:Z

    goto :goto_0

    .line 1375
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic b(Lipx;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lipx;)Lcom/alipay/mobile/security/bio/service/BioServiceManager;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    return-object v0
.end method

.method static synthetic d(Lipx;)Lcom/alipay/mobile/security/zim/api/ZIMCallback;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->d:Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    return-object v0
.end method

.method static synthetic e(Lipx;)Lcom/alipay/mobile/security/bio/api/BioDetector;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    return-object v0
.end method

.method static synthetic f(Lipx;)Lipy;
    .locals 1
    .param p0, "x0"    # Lipx;

    .prologue
    .line 45
    iget-object v0, p0, Lipx;->c:Lipy;

    return-object v0
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 339
    iget-object v0, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/api/BioDetector;->destroy()V

    .line 341
    iput-object v1, p0, Lipx;->e:Lcom/alipay/mobile/security/bio/api/BioDetector;

    .line 344
    :cond_0
    iget-object v0, p0, Lipx;->c:Lipy;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lipx;->c:Lipy;

    invoke-virtual {v0}, Lipy;->a()V

    .line 346
    iput-object v1, p0, Lipx;->c:Lipy;

    .line 349
    :cond_1
    iput-object v1, p0, Lipx;->a:Landroid/content/Context;

    .line 350
    return-void
.end method

.method public final verify(Ljava/lang/String;Ljava/util/Map;Lcom/alipay/mobile/security/zim/api/ZIMCallback;)V
    .locals 5
    .param p1, "zimId"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/alipay/mobile/security/zim/api/ZIMCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alipay/mobile/security/zim/api/ZIMCallback;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 310
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lipx;->f:Ljava/lang/String;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "verify(zimId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->map2String(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", callback="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/security/bio/utils/BioLog;->d(Ljava/lang/String;)V

    .line 314
    if-eqz p2, :cond_0

    .line 315
    const-string/jumbo v1, "gwUrl"

    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    const-class v2, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    const-string/jumbo v2, "gwUrl"

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->setRemoteUrl(Ljava/lang/String;)V

    .line 320
    :cond_0
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {v1}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v1

    .line 1070
    invoke-static {p1}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1071
    iget-object v1, v1, Lipw;->a:Lcom/alipay/mobile/security/bio/service/BioRecordService;

    invoke-virtual {v1, p1}, Lcom/alipay/mobile/security/bio/service/BioRecordService;->setUniqueID(Ljava/lang/String;)V

    .line 321
    :cond_1
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {v1}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v1

    sget-object v2, Lipw;->c:Ljava/lang/String;

    new-instance v3, Lipu;

    iget-object v4, p0, Lipx;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Lipu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lipw;->a(Ljava/lang/String;Lipu;)V

    .line 324
    iput-object p3, p0, Lipx;->d:Lcom/alipay/mobile/security/zim/api/ZIMCallback;

    .line 325
    iget-object v1, p0, Lipx;->g:Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    invoke-virtual {v1}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 326
    iget-object v1, p0, Lipx;->g:Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;

    invoke-virtual {v1}, Lcom/alipay/biometrics/ui/widget/LoadingProgressDialog;->show()V

    .line 328
    :cond_2
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;-><init>()V

    .line 329
    .local v0, "request":Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;
    iput-object p1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;->zimId:Ljava/lang/String;

    .line 330
    iget-object v1, p0, Lipx;->a:Landroid/content/Context;

    invoke-static {v1}, Lipx;->getMetaInfos(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;->metaInfo:Ljava/lang/String;

    .line 332
    iget-object v1, p0, Lipx;->h:Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    invoke-static {v1}, Lipw;->a(Lcom/alipay/mobile/security/bio/service/BioServiceManager;)Lipw;

    move-result-object v1

    sget-object v2, Lipw;->d:Ljava/lang/String;

    new-instance v3, Lipu;

    iget-object v4, p0, Lipx;->f:Ljava/lang/String;

    invoke-direct {v3, v4}, Lipu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lipw;->a(Ljava/lang/String;Lipu;)V

    .line 333
    iget-object v1, p0, Lipx;->c:Lipy;

    invoke-virtual {v1, v0}, Lipy;->a(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V

    .line 334
    return-void
.end method
