.class public Lcom/taobao/weex/bridge/WXParams;
.super Ljava/lang/Object;
.source "WXParams.java"


# instance fields
.field private appName:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private cacheDir:Ljava/lang/String;

.field private deviceHeight:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private deviceWidth:Ljava/lang/String;

.field private libJssPath:Ljava/lang/String;

.field private logLevel:Ljava/lang/String;

.field private needInitV8:Ljava/lang/String;

.field private options:Ljava/util/Map;
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

.field private osVersion:Ljava/lang/String;

.field private platform:Ljava/lang/String;

.field private shouldInfoCollect:Ljava/lang/String;

.field private useSingleProcess:Ljava/lang/String;

.field private weexVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->cacheDir:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceHeight()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->deviceHeight:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceWidth()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->deviceWidth:Ljava/lang/String;

    return-object v0
.end method

.method public getLibJssPath()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getLibJssPath is running "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXParams;->libJssPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->libJssPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->logLevel:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v0, ""

    .line 143
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->logLevel:Ljava/lang/String;

    goto :goto_0
.end method

.method public getNeedInitV8()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->needInitV8:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 161
    const-string/jumbo v0, ""

    .line 163
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->needInitV8:Ljava/lang/String;

    goto :goto_0
.end method

.method public getOptions()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->options:Ljava/util/Map;

    return-object v0
.end method

.method public getOsVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getPlatform()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getShouldInfoCollect()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->shouldInfoCollect:Ljava/lang/String;

    return-object v0
.end method

.method public getUseSingleProcess()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "getUseSingleProcess is running "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/taobao/weex/bridge/WXParams;->useSingleProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->useSingleProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getWeexVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->weexVersion:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0
    .param p1, "appName"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->appName:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public setAppVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "appVersion"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->appVersion:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setCacheDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "cache"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->cacheDir:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setDeviceHeight(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceHeight"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->deviceHeight:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setDeviceModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceModel"    # Ljava/lang/String;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->deviceModel:Ljava/lang/String;

    .line 106
    return-void
.end method

.method public setDeviceWidth(Ljava/lang/String;)V
    .locals 0
    .param p1, "deviceWidth"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->deviceWidth:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setLibJssPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "libJssPath"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->libJssPath:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setLogLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "logLevel"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->logLevel:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setNeedInitV8(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string/jumbo v0, "1"

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->needInitV8:Ljava/lang/String;

    .line 172
    :goto_0
    return-void

    .line 170
    :cond_0
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/taobao/weex/bridge/WXParams;->needInitV8:Ljava/lang/String;

    goto :goto_0
.end method

.method public setOptions(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->options:Ljava/util/Map;

    .line 50
    return-void
.end method

.method public setOsVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "osVersion"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->osVersion:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setPlatform(Ljava/lang/String;)V
    .locals 0
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->platform:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setShouldInfoCollect(Ljava/lang/String;)V
    .locals 0
    .param p1, "shouldInfoCollect"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->shouldInfoCollect:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setUseSingleProcess(Ljava/lang/String;)V
    .locals 0
    .param p1, "useSingleProcess"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->useSingleProcess:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setWeexVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "weexVersion"    # Ljava/lang/String;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/taobao/weex/bridge/WXParams;->weexVersion:Ljava/lang/String;

    .line 98
    return-void
.end method
