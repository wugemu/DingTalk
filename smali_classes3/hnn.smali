.class public final Lhnn;
.super Ljava/lang/Object;
.source "MiniAppConfigProviderImpl.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clearProcessCache()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public final getConfig(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p1}, Lhly;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getConfigJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigWithNotifyChange(Ljava/lang/String;Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "onConfigChangeListener"    # Lcom/alipay/mobile/nebula/provider/H5ConfigProvider$OnConfigChangeListener;

    .prologue
    .line 30
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lhnn;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final isAliDomains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public final isAlipayDomains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public final isPartnerDomains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method public final isRpcDomains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public final isSeriousAliDomains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public final permitLocation(Ljava/lang/String;)Z
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    return v0
.end method
