.class public Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;
.super Lipd;
.source "H5ScreenPlugin.java"


# static fields
.field private static final ALLOW_SYSTEM_SNAPSHOT:Ljava/lang/String; = "allowSystemSnapshot"

.field private static final GET_TITLE_AND_STATUS_BAR_HEIGHT:Ljava/lang/String; = "getTitleAndStatusBarHeight"

.field private static final SET_LANDSCAPE:Ljava/lang/String; = "setLandscape"

.field private static final SET_PORTRAIT:Ljava/lang/String; = "setPortrait"

.field private static final SET_SCREEN_AUTOLOCK:Ljava/lang/String; = "setScreenAutolock"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lipd;-><init>()V

    return-void
.end method

.method private getTitleAndStatusBarHeight(Liny;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 8
    .param p1, "context"    # Liny;
    .param p2, "h5Event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lcom/alipay/mobile/nebula/util/H5DimensionUtil;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 94
    .local v0, "density":I
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 95
    .local v2, "json":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v5, "titleBarHeight"

    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/alipay/mobile/nebula/R$dimen;->h5_title_height:I

    .line 96
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    int-to-float v7, v0

    div-float/2addr v6, v7

    .line 95
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string/jumbo v5, "density"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 100
    .local v1, "frame":Landroid/graphics/Rect;
    invoke-virtual {p2}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v4

    .line 101
    .local v4, "topActivity":Landroid/app/Activity;
    if-eqz v4, :cond_0

    if-lez v0, :cond_0

    .line 102
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 103
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 104
    .local v3, "statusBarHeight":I
    const-string/jumbo v5, "statusBarHeight"

    div-int v6, v3, v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    .end local v3    # "statusBarHeight":I
    :cond_0
    invoke-interface {p1, v2}, Liny;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    .line 108
    const/4 v5, 0x1

    return v5
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 43
    .line 1065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 44
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->a()Landroid/app/Activity;

    move-result-object v2

    .line 45
    .local v2, "activity":Landroid/app/Activity;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v6

    if-nez v6, :cond_0

    .line 47
    :try_start_0
    const-string/jumbo v6, "setLandscape"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    if-eqz v6, :cond_0

    .line 51
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_0
    :goto_0
    invoke-interface {p2}, Liny;->sendSuccess()V

    .line 89
    :goto_1
    return v5

    .line 53
    :cond_1
    :try_start_1
    const-string/jumbo v6, "setPortrait"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 56
    invoke-virtual {v2}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v6

    if-eq v6, v5, :cond_0

    .line 57
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, ""

    invoke-static {v6, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 59
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_2
    const-string/jumbo v6, "allowSystemSnapshot"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1121
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 60
    const-string/jumbo v7, "allow"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v3

    .line 61
    .local v3, "allow":Z
    if-nez v3, :cond_3

    .line 62
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    const/16 v8, 0x2000

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 67
    .end local v3    # "allow":Z
    :cond_4
    const-string/jumbo v6, "setScreenAutolock"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2121
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 68
    const-string/jumbo v7, "actionType"

    invoke-static {v6, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "actionType":Ljava/lang/String;
    const-string/jumbo v6, "disable"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 70
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    const/16 v8, 0x80

    invoke-virtual {v6, v7, v8}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 74
    :cond_5
    const-string/jumbo v6, "enable"

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 75
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    .line 78
    :cond_6
    sget-object v6, Lcom/alipay/mobile/h5container/api/H5Event$Error;->INVALID_PARAM:Lcom/alipay/mobile/h5container/api/H5Event$Error;

    invoke-interface {p2, p1, v6}, Liny;->sendError(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5Event$Error;)Z

    goto/16 :goto_1

    .line 81
    .end local v1    # "actionType":Ljava/lang/String;
    :cond_7
    const-string/jumbo v6, "getTitleAndStatusBarHeight"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 82
    invoke-direct {p0, p2, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5ScreenPlugin;->getTitleAndStatusBarHeight(Liny;Lcom/alipay/mobile/h5container/api/H5Event;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    goto/16 :goto_1
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lipd;->onPrepare(Liof;)V

    .line 34
    const-string/jumbo v0, "setLandscape"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 35
    const-string/jumbo v0, "setPortrait"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 36
    const-string/jumbo v0, "allowSystemSnapshot"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 37
    const-string/jumbo v0, "setScreenAutolock"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 38
    const-string/jumbo v0, "getTitleAndStatusBarHeight"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 39
    return-void
.end method
