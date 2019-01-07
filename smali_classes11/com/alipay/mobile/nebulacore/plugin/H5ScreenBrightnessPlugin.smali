.class public Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;
.super Lipd;
.source "H5ScreenBrightnessPlugin.java"


# static fields
.field private static final BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final GET_SCREEN_BRIGHTNESS:Ljava/lang/String; = "getScreenBrightness"

.field private static final SET_SCREEN_BRIGHTNESS:Ljava/lang/String; = "setScreenBrightness"

.field public static final TAG:Ljava/lang/String; = "H5ScreenBrightnessPlugin"


# instance fields
.field private activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getScreenBrightness()F
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "currentScreenBrightness":F
    :try_start_0
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->activity:Landroid/app/Activity;

    .line 100
    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "screen_brightness"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-float v0, v2

    .line 101
    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v0, v2

    .line 105
    :goto_0
    return v0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "H5ScreenBrightnessPlugin"

    const-string/jumbo v3, "exception"

    invoke-static {v2, v3, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setScreenBrightness(F)V
    .locals 8
    .param p1, "value"    # F

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v7, 0x437f0000    # 255.0f

    .line 81
    :try_start_0
    const-string/jumbo v4, "H5ScreenBrightnessPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "value before"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " value after"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    mul-float v6, p1, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    mul-float/2addr p1, v7

    .line 83
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 84
    .local v3, "mWindow":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 86
    .local v2, "mParams":Landroid/view/WindowManager$LayoutParams;
    div-float v1, p1, v7

    .line 87
    .local v1, "f":F
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 88
    invoke-virtual {v3, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 89
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_brightness"

    float-to-int v6, p1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v1    # "f":F
    .end local v2    # "mParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "mWindow":Landroid/view/Window;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "H5ScreenBrightnessPlugin"

    const-string/jumbo v5, "exception"

    invoke-static {v4, v5, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 10
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 43
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 44
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v6

    iput-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->activity:Landroid/app/Activity;

    .line 46
    const-string/jumbo v6, "getScreenBrightness"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 47
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 48
    .local v4, "result":Lcom/alibaba/fastjson/JSONObject;
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->getScreenBrightness()F

    move-result v1

    .line 49
    .local v1, "currentBrightness":F
    const-string/jumbo v6, "H5ScreenBrightnessPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "currentBrightness: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string/jumbo v6, "brightness"

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    const-string/jumbo v6, "success"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-interface {p2, v4}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 76
    .end local v1    # "currentBrightness":F
    .end local v4    # "result":Lcom/alibaba/fastjson/JSONObject;
    :cond_0
    :goto_0
    return v9

    .line 53
    :cond_1
    const-string/jumbo v6, "setScreenBrightness"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1121
    iget-object v3, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 55
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "brightness"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 56
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v6}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    const-string/jumbo v6, "brightness"

    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/JSONObject;->getFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 61
    .local v5, "setBrightness":F
    const-string/jumbo v6, "H5ScreenBrightnessPlugin"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "setBrightness: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-ltz v6, :cond_3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_4

    .line 69
    :cond_3
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v6}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    .line 62
    .end local v5    # "setBrightness":F
    :catch_0
    move-exception v2

    .line 63
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5ScreenBrightnessPlugin"

    const-string/jumbo v7, "exception"

    invoke-static {v6, v7, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 64
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v6}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto :goto_0

    .line 72
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v5    # "setBrightness":F
    :cond_4
    invoke-direct {p0, v5}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->setScreenBrightness(F)V

    .line 73
    const-string/jumbo v6, "success"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 32
    const-string/jumbo v0, "setScreenBrightness"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 33
    const-string/jumbo v0, "getScreenBrightness"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public onRelease()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenBrightnessPlugin;->activity:Landroid/app/Activity;

    .line 39
    return-void
.end method
