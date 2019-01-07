.class public abstract Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;
.super Lipd;
.source "H5NumInputKeyboard.java"

# interfaces
.implements Lcom/uc/webview/export/extension/UCExtension$OnSoftKeyboardListener;


# static fields
.field private static final GET_IF_RANDOM_JS:Ljava/lang/String; = "document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-randomnumber\")"

.field private static final GET_INPUT_TYPE_JS:Ljava/lang/String; = "document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-keyboard\")"

.field private static sConfigured:Z

.field private static sEnableCustomKeyboard:Z

.field private static sEnableCustomKeyboardInH5:Z

.field static sNeedClearType:Z


# instance fields
.field mFallbackClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;",
            ">;"
        }
    .end annotation
.end field

.field mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    .line 20
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    .line 21
    sput-boolean v1, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 25
    sput-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sNeedClearType:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private static getConfig()V
    .locals 5

    .prologue
    .line 81
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    if-nez v4, :cond_2

    .line 82
    const/4 v4, 0x1

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sConfigured:Z

    .line 84
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 85
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-eqz v3, :cond_2

    .line 86
    const-string/jumbo v4, "h5_useCustomKeyboardInH5"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "enableCustomKeyboardInH5":Ljava/lang/String;
    const-string/jumbo v4, "NO"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 88
    const/4 v4, 0x0

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    .line 91
    :cond_0
    const-string/jumbo v4, "h5_useCustomKeyboard"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "enableCustomKeyboard":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 96
    :cond_1
    const-string/jumbo v4, "h5_customKeyboardClearType"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "customKeyboardClearType":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sNeedClearType:Z

    .line 102
    .end local v0    # "customKeyboardClearType":Ljava/lang/String;
    .end local v1    # "enableCustomKeyboard":Ljava/lang/String;
    .end local v2    # "enableCustomKeyboardInH5":Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public getInjectJS()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->isCustomKeyboardEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 39
    const-string/jumbo v1, ""

    .line 45
    :goto_0
    return-object v1

    .line 41
    :cond_0
    const-string/jumbo v0, "AlipayJSBridge.call(\"setKeyboardType\", {\n  type: document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-keyboard\")  ,randomnumber: document.activeElement && document.activeElement.getAttribute && document.activeElement.getAttribute(\"data-randomnumber\")})"

    .line 45
    .local v0, "a":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "document.addEventListener(\'click\', function(event){if(event.target&&event.target.tagName.toLowerCase()==\'input\'){"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";}}, true);document.addEventListener(\'focus\', function(event){"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";}, true);"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method isCustomKeyboardEnabled()Z
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 59
    const/4 v0, 0x1

    .line 60
    .local v0, "enabled":Z
    const/4 v3, 0x0

    .line 62
    .local v3, "isTinyApp":Z
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5ServiceUtils;->getH5Service()Lcom/alipay/mobile/h5container/service/H5Service;

    move-result-object v2

    .line 63
    .local v2, "h5Service":Lcom/alipay/mobile/h5container/service/H5Service;
    if-eqz v2, :cond_0

    .line 64
    invoke-virtual {v2}, Lcom/alipay/mobile/h5container/service/H5Service;->getTopH5Page()Liop;

    move-result-object v1

    .line 65
    .local v1, "h5Page":Liop;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "isTinyApp"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v3

    .line 70
    .end local v1    # "h5Page":Liop;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->getConfig()V

    .line 73
    sget-boolean v4, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboardInH5:Z

    if-nez v4, :cond_1

    if-eqz v3, :cond_2

    .line 74
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->sEnableCustomKeyboard:Z

    .line 77
    :cond_2
    return v0
.end method

.method public setFallback(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;>;"
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mFallbackClass:Ljava/lang/Class;

    .line 35
    return-void
.end method

.method public setH5NativeOnSoftKeyboardListener(Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;)V
    .locals 0
    .param p1, "h5NativeOnSoftKeyboardListener"    # Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboard;->mH5NativeOnSoftKeyboardListener:Lcom/alipay/mobile/nebulauc/nativeinput/H5NativeOnSoftKeyboardListener;

    .line 55
    return-void
.end method
