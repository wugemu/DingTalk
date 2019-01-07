.class public final Lhnm;
.super Ljava/lang/Object;
.source "MiniAppCenterPresetProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5AppCenterPresetProvider;


# static fields
.field private static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

.field private static e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lhnm;->a:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "miniapp"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lhnm;->b:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "2018030202303012"

    sput-object v0, Lhnm;->c:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;-><init>()V

    sput-object v0, Lhnm;->d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    sput-object v0, Lhnm;->e:Ljava/util/Set;

    .line 36
    sget-object v0, Lhnm;->a:Ljava/util/Map;

    sget-object v1, Lhnm;->c:Ljava/lang/String;

    sget-object v2, Lhnm;->d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lhnm;->d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    sget-object v1, Lhnm;->c:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->appId:Ljava/lang/String;

    .line 38
    sget-object v0, Lhnm;->d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    const-string/jumbo v1, "1.7.33"

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->version:Ljava/lang/String;

    .line 39
    sget-object v0, Lhnm;->d:Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;

    const-string/jumbo v1, "https://package.dingtalk.com/2018030202303012/1540987583311.amr"

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetInfo;->downloadUrl:Ljava/lang/String;

    .line 41
    sget-object v0, Lhnm;->e:Ljava/util/Set;

    sget-object v1, Lhnm;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCommonResourceAppList()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    sget-object v0, Lhnm;->e:Ljava/util/Set;

    return-object v0
.end method

.method public final getEnableDegradeApp()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getH5PresetPkg()Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 51
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;-><init>()V

    .line 52
    .local v0, "h5PresetPkg":Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;
    sget-object v1, Lhnm;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->setPreSetInfo(Ljava/util/Map;)V

    .line 53
    sget-object v1, Lhnm;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/appcenter/H5PresetPkg;->setPresetPath(Ljava/lang/String;)V

    .line 54
    return-object v0
.end method

.method public final getPresetAppInfo()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getPresetAppInfoObject()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getTinyCommonApp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lhnm;->c:Ljava/lang/String;

    return-object v0
.end method
