.class public Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;
.super Ljava/lang/Object;
.source "CashierDevicePropProvider.java"

# interfaces
.implements Lcom/alipay/birdnest/api/BirdNestEngine$DevicePropProvider;


# instance fields
.field protected mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;


# direct methods
.method public constructor <init>(Lcom/alipay/android/app/render/api/ICashierProvider;)V
    .locals 0
    .param p1, "provider"    # Lcom/alipay/android/app/render/api/ICashierProvider;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    .line 17
    return-void
.end method


# virtual methods
.method public capableOf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 37
    const-string/jumbo v0, "platformVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "clientVersion"

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "clientChannel"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "debug"

    .line 40
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    :cond_0
    const/4 v0, 0x1

    .line 43
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProperty(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v0, "platformVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 32
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string/jumbo v0, "clientVersion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    const-string/jumbo v0, ""

    goto :goto_0

    .line 25
    :cond_1
    const-string/jumbo v0, "clientChannel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 26
    const-string/jumbo v0, ""

    goto :goto_0

    .line 27
    :cond_2
    const-string/jumbo v0, "debug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    const-string/jumbo v0, "false"

    goto :goto_0

    .line 29
    :cond_3
    const-string/jumbo v0, "getClientInfo"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 30
    iget-object v0, p0, Lcom/alipay/android/app/render/birdnest/provider/CashierDevicePropProvider;->mProvider:Lcom/alipay/android/app/render/api/ICashierProvider;

    invoke-static {v0}, Lcom/alipay/android/app/render/birdnest/utils/ClientInfo;->buildClientInfo(Lcom/alipay/android/app/render/api/ICashierProvider;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 32
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
