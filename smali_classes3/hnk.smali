.class public final Lhnk;
.super Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;
.source "MiniAppBaseAppProviderImpl.java"


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const-string/jumbo v0, "https://nebula.alipay.com/api/app"

    invoke-direct {p0, v0}, Lhnk;-><init>(Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "reqUrl"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/alipay/mobile/nebula/baseprovider/H5BaseAppProvider;-><init>()V

    .line 22
    iput-object p1, p0, Lhnk;->a:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final setReq(Lcom/alipay/mobile/nebula/appcenter/model/AppReq;)Lcom/alipay/mobile/nebula/appcenter/model/AppReq;
    .locals 1
    .param p1, "appReq"    # Lcom/alipay/mobile/nebula/appcenter/model/AppReq;

    .prologue
    .line 27
    const-string/jumbo v0, "com.alibaba.android.rimet"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->bundleid:Ljava/lang/String;

    .line 28
    const-string/jumbo v0, "offical"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->channel:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "production"

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->env:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lhnk;->a:Ljava/lang/String;

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->httpReqUrl:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/alipay/mobile/nebula/appcenter/model/AppReq;->client:Ljava/lang/String;

    .line 33
    return-object p1
.end method
