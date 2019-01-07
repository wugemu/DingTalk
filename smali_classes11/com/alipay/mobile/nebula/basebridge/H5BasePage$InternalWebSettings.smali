.class Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;
.super Ljava/lang/Object;
.source "H5BasePage.java"

# interfaces
.implements Lcom/alipay/mobile/nebula/webview/APWebSettings;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InternalWebSettings"
.end annotation


# instance fields
.field private mUaString:Ljava/lang/String;

.field final synthetic this$0:Lcom/alipay/mobile/nebula/basebridge/H5BasePage;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;)V
    .locals 0

    .prologue
    .line 730
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->this$0:Lcom/alipay/mobile/nebula/basebridge/H5BasePage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alipay/mobile/nebula/basebridge/H5BasePage;
    .param p2, "x1"    # Lcom/alipay/mobile/nebula/basebridge/H5BasePage$1;

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;-><init>(Lcom/alipay/mobile/nebula/basebridge/H5BasePage;)V

    return-void
.end method


# virtual methods
.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 786
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowFileAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1071
    const/4 v0, 0x0

    return v0
.end method

.method public getAllowUniversalAccessFromFileURLs()Z
    .locals 1

    .prologue
    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 991
    const/4 v0, 0x0

    return v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 756
    const/4 v0, 0x0

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1131
    const/4 v0, 0x0

    return v0
.end method

.method public getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultFontSize()I
    .locals 1

    .prologue
    .line 961
    const/4 v0, 0x0

    return v0
.end method

.method public getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1121
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultZoom()Lcom/alipay/mobile/nebula/webview/APWebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 846
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayZoomControls()Z
    .locals 1

    .prologue
    .line 766
    const/4 v0, 0x0

    return v0
.end method

.method public getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1036
    const/4 v0, 0x0

    return v0
.end method

.method public getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 931
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 891
    const/4 v0, 0x0

    return-object v0
.end method

.method public getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutAlgorithm()Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 871
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public getMediaPlaybackRequiresUserGesture()Z
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumFontSize()I
    .locals 1

    .prologue
    .line 941
    const/4 v0, 0x0

    return v0
.end method

.method public getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 951
    const/4 v0, 0x0

    return v0
.end method

.method public getPluginState()Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;
    .locals 1

    .prologue
    .line 1081
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 806
    const/4 v0, 0x0

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 816
    const/4 v0, 0x0

    return v0
.end method

.method public getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 911
    const/4 v0, 0x0

    return-object v0
.end method

.method public getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 881
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextSize()Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextZoom()I
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    return v0
.end method

.method public getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 851
    const/4 v0, 0x0

    return v0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1111
    iget-object v0, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->mUaString:Ljava/lang/String;

    return-object v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 792
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 782
    return-void
.end method

.method public setAllowFileAccessFromFileURLs(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1077
    return-void
.end method

.method public setAllowUniversalAccessFromFileURLs(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1067
    return-void
.end method

.method public setAppCacheEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1017
    return-void
.end method

.method public setAppCachePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1022
    return-void
.end method

.method public setBlockNetworkImage(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 997
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 762
    return-void
.end method

.method public setCacheMode(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1137
    return-void
.end method

.method public setCursiveFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 927
    return-void
.end method

.method public setDatabaseEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1032
    return-void
.end method

.method public setDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1052
    return-void
.end method

.method public setDefaultFixedFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 977
    return-void
.end method

.method public setDefaultFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 967
    return-void
.end method

.method public setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1107
    return-void
.end method

.method public setDisplayZoomControls(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 772
    return-void
.end method

.method public setDomStorageEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1042
    return-void
.end method

.method public setEnableFastScroller(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1142
    return-void
.end method

.method public setFantasyFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 937
    return-void
.end method

.method public setFixedFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 897
    return-void
.end method

.method public setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1012
    return-void
.end method

.method public setGeolocationEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1057
    return-void
.end method

.method public setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1097
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1007
    return-void
.end method

.method public setLayoutAlgorithm(Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;)V
    .locals 0
    .param p1, "layoutAlgorithm"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$LayoutAlgorithm;

    .prologue
    .line 877
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 802
    return-void
.end method

.method public setLoadsImagesAutomatically(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 987
    return-void
.end method

.method public setMediaPlaybackRequiresUserGesture(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 752
    return-void
.end method

.method public setMinimumFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 947
    return-void
.end method

.method public setMinimumLogicalFontSize(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 957
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1127
    return-void
.end method

.method public setPageCacheCapacity(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 1147
    return-void
.end method

.method public setPluginState(Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;)V
    .locals 0
    .param p1, "pluginState"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$PluginState;

    .prologue
    .line 1087
    return-void
.end method

.method public setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 907
    return-void
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 812
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 822
    return-void
.end method

.method public setSerifFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 917
    return-void
.end method

.method public setStandardFontFamily(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 887
    return-void
.end method

.method public setSupportMultipleWindows(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 862
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 737
    return-void
.end method

.method public setTextSize(Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;)V
    .locals 0
    .param p1, "textSize"    # Lcom/alipay/mobile/nebula/webview/APWebSettings$TextSize;

    .prologue
    .line 842
    return-void
.end method

.method public setTextZoom(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 832
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 857
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/alipay/mobile/nebula/basebridge/H5BasePage$InternalWebSettings;->mUaString:Ljava/lang/String;

    .line 1117
    return-void
.end method

.method public supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 866
    const/4 v0, 0x0

    return v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 741
    const/4 v0, 0x0

    return v0
.end method
