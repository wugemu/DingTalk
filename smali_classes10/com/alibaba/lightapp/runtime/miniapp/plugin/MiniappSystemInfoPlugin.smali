.class public Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;
.super Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;
.source "MiniappSystemInfoPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;-><init>()V

    return-void
.end method

.method private a()I
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 162
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v3, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 165
    :try_start_0
    new-instance v0, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin$1;-><init>(Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;)V

    .line 172
    .local v0, "broadcastReceiver":Landroid/content/BroadcastReceiver;
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 173
    .local v2, "intent":Landroid/content/Intent;
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 175
    const-string/jumbo v7, "level"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 177
    .local v4, "level":I
    const-string/jumbo v7, "scale"

    const/16 v8, 0x64

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 179
    .local v5, "scale":I
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    mul-int/lit8 v7, v4, 0x64

    div-int v6, v7, v5

    .line 188
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v4    # "level":I
    .end local v5    # "scale":I
    :goto_0
    return v6

    .line 184
    .restart local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 186
    .end local v0    # "broadcastReceiver":Landroid/content/BroadcastReceiver;
    .end local v2    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 187
    .local v1, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "getCurrentBatteryPercentage...e="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x12

    if-ge v9, v10, :cond_0

    .line 141
    const-string/jumbo v9, ""

    .line 153
    :goto_0
    return-object v9

    .line 144
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v5

    .line 145
    .local v5, "file":Ljava/io/File;
    new-instance v8, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 146
    .local v8, "statFs":Landroid/os/StatFs;
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 147
    .local v2, "blockSizeLong":J
    invoke-virtual {v8}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    .line 148
    .local v0, "blockCountLong":J
    mul-long v6, v0, v2

    .line 149
    .local v6, "size":J
    invoke-static {p0, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_0

    .line 150
    .end local v0    # "blockCountLong":J
    .end local v2    # "blockSizeLong":J
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "size":J
    .end local v8    # "statFs":Landroid/os/StatFs;
    :catch_0
    move-exception v4

    .line 151
    .local v4, "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "MiniappSystemInfoPlugin"

    const-string/jumbo v10, "getInternalMemorySize..."

    invoke-static {v9, v10, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 153
    const-string/jumbo v9, ""

    goto :goto_0
.end method


# virtual methods
.method public getHeight(Liop;FLandroid/util/DisplayMetrics;)I
    .locals 5
    .param p1, "h5Page"    # Liop;
    .param p2, "density"    # F
    .param p3, "displayMetrics"    # Landroid/util/DisplayMetrics;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "height":I
    const/4 v0, 0x1

    .line 111
    .local v0, "getHeightFromWebView":Z
    const-class v4, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;

    .line 113
    .local v3, "provider":Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;
    if-nez v3, :cond_0

    .line 114
    const/4 v4, 0x0

    .line 130
    :goto_0
    return v4

    .line 116
    :cond_0
    const-string/jumbo v4, "h5_getWebViewHeight"

    invoke-interface {v3, v4}, Lcom/alipay/mobile/nebula/provider/H5ConfigProvider;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, "getHeightWebview":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 118
    const-string/jumbo v4, "no"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 119
    const/4 v0, 0x0

    .line 122
    :cond_1
    if-eqz v0, :cond_3

    .line 123
    invoke-interface {p1}, Liop;->getWebView()Lcom/alipay/mobile/nebula/webview/APWebView;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APWebView;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    :cond_2
    :goto_1
    move v4, v2

    .line 130
    goto :goto_0

    .line 125
    :cond_3
    if-eqz p3, :cond_2

    .line 126
    iget v4, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v4, v4

    div-float/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    goto :goto_1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 17
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 40
    .line 1065
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 41
    .local v1, "action":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1081
    .local v6, "h5Page":Liop;
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 42
    instance-of v14, v14, Liop;

    if-eqz v14, :cond_0

    .line 2081
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/alipay/mobile/h5container/api/H5Event;->b:Liob;

    .line 43
    .end local v6    # "h5Page":Liop;
    check-cast v6, Liop;

    .line 45
    .restart local v6    # "h5Page":Liop;
    :cond_0
    const-string/jumbo v14, "getSystemInfo"

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 46
    const/4 v3, 0x0

    .line 47
    .local v3, "density":F
    const/4 v13, 0x0

    .line 48
    .local v13, "windowWidth":I
    const/4 v12, 0x0

    .line 49
    .local v12, "windowHeight":I
    const/4 v9, 0x0

    .line 50
    .local v9, "screenWidth":I
    const/4 v8, 0x0

    .line 51
    .local v8, "screenHeight":I
    invoke-virtual/range {p1 .. p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 52
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_1

    .line 54
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 56
    .local v4, "displayMetrics":Landroid/util/DisplayMetrics;
    if-eqz v4, :cond_1

    .line 57
    :try_start_0
    iget v3, v4, Landroid/util/DisplayMetrics;->density:F

    .line 58
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v3, v4}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;->getHeight(Liop;FLandroid/util/DisplayMetrics;)I

    move-result v12

    .line 59
    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    div-float/2addr v14, v3

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 60
    iget v14, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v14, v14

    invoke-static {v2, v14}, Lieh;->a(Landroid/content/Context;F)I

    move-result v9

    .line 61
    iget v14, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v14, v14

    invoke-static {v2, v14}, Lieh;->a(Landroid/content/Context;F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 69
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_1
    :goto_0
    const/4 v14, 0x0

    invoke-static {v14}, Lcms;->i(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 71
    .local v11, "versionName":Ljava/lang/String;
    new-instance v7, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v7}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 72
    .local v7, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v14, "model"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string/jumbo v14, "pixelRatio"

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string/jumbo v14, "windowWidth"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const-string/jumbo v14, "windowHeight"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string/jumbo v14, "language"

    invoke-static {}, Lino;->a()Lino;

    invoke-static {}, Lino;->b()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const-string/jumbo v14, "version"

    invoke-virtual {v7, v14, v11}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const-string/jumbo v14, "screenWidth"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string/jumbo v14, "screenHeight"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string/jumbo v14, "system"

    sget-object v15, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string/jumbo v14, "platform"

    const-string/jumbo v15, "Android"

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string/jumbo v14, "storage"

    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string/jumbo v14, "currentBattery"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;->a()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "%"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const-string/jumbo v14, "brand"

    sget-object v15, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    if-nez v6, :cond_2

    .line 93
    const-string/jumbo v14, "transparentTitle"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_1
    move-object/from16 v0, p2

    invoke-interface {v0, v7}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 103
    const/4 v14, 0x1

    .line 105
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "density":F
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "screenHeight":I
    .end local v9    # "screenWidth":I
    .end local v11    # "versionName":Ljava/lang/String;
    .end local v12    # "windowHeight":I
    .end local v13    # "windowWidth":I
    :goto_2
    return v14

    .line 63
    .restart local v2    # "activity":Landroid/app/Activity;
    .restart local v3    # "density":F
    .restart local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v8    # "screenHeight":I
    .restart local v9    # "screenWidth":I
    .restart local v12    # "windowHeight":I
    .restart local v13    # "windowWidth":I
    :catch_0
    move-exception v5

    .line 64
    .local v5, "e":Ljava/lang/Exception;
    const-string/jumbo v14, "MiniappSystemInfoPlugin"

    const-string/jumbo v15, "exception detail"

    invoke-static {v14, v15, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 95
    .end local v4    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .restart local v11    # "versionName":Ljava/lang/String;
    :cond_2
    invoke-interface {v6}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v14

    const-string/jumbo v15, "transparentTitle"

    invoke-static {v14, v15}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 96
    .local v10, "trans":Ljava/lang/String;
    const-string/jumbo v14, "auto"

    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "always"

    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_3

    const-string/jumbo v14, "custom"

    invoke-static {v10, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 97
    :cond_3
    const-string/jumbo v14, "transparentTitle"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 99
    :cond_4
    const-string/jumbo v14, "transparentTitle"

    const/4 v15, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 105
    .end local v2    # "activity":Landroid/app/Activity;
    .end local v3    # "density":F
    .end local v7    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v8    # "screenHeight":I
    .end local v9    # "screenWidth":I
    .end local v10    # "trans":Ljava/lang/String;
    .end local v11    # "versionName":Ljava/lang/String;
    .end local v12    # "windowHeight":I
    .end local v13    # "windowWidth":I
    :cond_5
    invoke-super/range {p0 .. p2}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v14

    goto :goto_2
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 1
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/lightapp/runtime/miniapp/plugin/MiniappSystemInfoPlugin;->handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 195
    invoke-super {p0, p1}, Lcom/alipay/mobile/tinyappcommon/h5plugin/H5SystemInfoPlugin;->onPrepare(Liof;)V

    .line 196
    const-string/jumbo v0, "getSystemInfo"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 197
    return-void
.end method
