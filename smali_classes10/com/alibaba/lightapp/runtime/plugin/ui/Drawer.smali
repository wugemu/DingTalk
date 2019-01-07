.class public Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;
.super Lcom/alibaba/lightapp/runtime/Component;
.source "Drawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/Component",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;",
        ">;"
    }
.end annotation


# static fields
.field public static final FROM_LEFT:I = 0x0

.field public static final FROM_RIGHT:I = 0x1

.field public static final STATUS_ERR:I = -0x1

.field public static final STATUS_FINISH:I = 0x1

.field public static final STATUS_START:I


# instance fields
.field private mInitCallbackId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/Component;-><init>()V

    .line 255
    return-void
.end method

.method private joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "curl"    # Ljava/lang/String;
    .param p2, "file"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 241
    const-string/jumbo v1, ""

    .line 243
    .local v1, "q":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 244
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 251
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    goto :goto_0
.end method

.method private parseWidth(Ljava/lang/String;)I
    .locals 10
    .param p1, "widthStr"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 213
    const/4 v6, 0x0

    .line 214
    .local v6, "width":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 217
    .local v3, "length":I
    const-string/jumbo v8, "%"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    if-le v3, v8, :cond_1

    .line 219
    const/4 v8, 0x0

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    float-to-double v4, v8

    .line 220
    .local v4, "percentage":D
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 221
    .local v7, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 222
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 223
    iget v8, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v8, v8

    mul-double/2addr v8, v4

    double-to-int v6, v8

    .line 235
    .end local v0    # "dm":Landroid/util/DisplayMetrics;
    .end local v3    # "length":I
    .end local v4    # "percentage":D
    .end local v7    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return v6

    .line 225
    .restart local v3    # "length":I
    :cond_1
    const-string/jumbo v8, "px"

    invoke-virtual {p1, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    if-le v3, v8, :cond_0

    .line 227
    const/4 v8, 0x0

    add-int/lit8 v9, v3, -0x2

    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 228
    .local v1, "dp":I
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getContext()Landroid/content/Context;

    move-result-object v8

    int-to-float v9, v1

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_0

    .line 231
    .end local v1    # "dp":I
    .end local v3    # "length":I
    :catch_0
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public callbackInitStatus(ILorg/json/JSONObject;)V
    .locals 4
    .param p1, "status"    # I
    .param p2, "extras"    # Lorg/json/JSONObject;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 199
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 201
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string/jumbo v3, "status"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    const-string/jumbo v3, "extras"

    if-eqz p2, :cond_0

    .end local p2    # "extras":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :goto_1
    new-instance v2, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v3, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v2, v3, v1}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    .line 207
    .local v2, "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;->setKeepCallback(Z)V

    .line 208
    iget-object v3, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->mInitCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->callback(Lcom/alibaba/lightapp/runtime/ActionResponse;Ljava/lang/String;)V

    .line 209
    return-void

    .line 202
    .end local v2    # "res":Lcom/alibaba/lightapp/runtime/ActionResponse;
    .restart local p2    # "extras":Lorg/json/JSONObject;
    :cond_0
    :try_start_1
    new-instance p2, Lorg/json/JSONObject;

    .end local p2    # "extras":Lorg/json/JSONObject;
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method public close(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 156
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 157
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->close()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 167
    :goto_0
    return-object v1

    .line 162
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "cannot close, drawer might not be initialized"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 167
    :cond_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "drawer model is null"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method public config(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 11
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v10, 0x3

    .line 85
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 86
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v4, :cond_5

    .line 87
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 89
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;)V

    .line 94
    .local v1, "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 95
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    .line 96
    iget v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 98
    :cond_0
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 99
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->parseWidth(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    .line 100
    iget v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 102
    :cond_1
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "alpha"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "alpha"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    .line 104
    iget v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    or-int/lit8 v5, v5, 0x8

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 106
    :cond_2
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "pushContent"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 107
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "pushContent"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->pushContent:Z

    .line 108
    iget v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 110
    :cond_3
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "from"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 111
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "from"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 112
    .local v3, "from":I
    packed-switch v3, :pswitch_data_0

    .line 118
    const v5, 0x800003

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    .line 120
    :goto_0
    iget v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 123
    .end local v3    # "from":I
    :cond_4
    invoke-virtual {v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->config(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V

    .line 124
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v5, v6}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 131
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .end local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :goto_1
    return-object v5

    .line 114
    .restart local v0    # "baseUrl":Ljava/lang/String;
    .restart local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .restart local v3    # "from":I
    .restart local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :pswitch_0
    const v5, 0x800005

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .end local v3    # "from":I
    .end local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :catch_0
    move-exception v2

    .line 130
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 131
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v7, "invalid args"

    invoke-static {v10, v7}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 127
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :cond_5
    :try_start_1
    new-instance v5, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v6, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const/4 v7, 0x3

    const-string/jumbo v8, "drawer model is null"

    invoke-static {v7, v8}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public disable(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 188
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->disable()V

    .line 194
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 192
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "drawer model is null"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enable(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 3
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 174
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 175
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->enable()V

    .line 181
    :goto_0
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v1

    return-object v1

    .line 179
    :cond_0
    const/4 v1, 0x3

    const-string/jumbo v2, "drawer model is null"

    invoke-static {v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getDelegateModelType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lcom/alibaba/lightapp/runtime/Component$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 39
    const-class v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    return-object v0
.end method

.method public init(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 10
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = true
    .end annotation

    .prologue
    .line 46
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v4

    check-cast v4, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 47
    .local v4, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v4, :cond_0

    .line 48
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    iput-object v5, p0, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->mInitCallbackId:Ljava/lang/String;

    .line 49
    iget-object v0, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->url:Ljava/lang/String;

    .line 51
    .local v0, "baseUrl":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;-><init>(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;)V

    .line 52
    .local v1, "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    const/16 v5, 0xff

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->updateMask:I

    .line 54
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->id:Ljava/lang/String;

    .line 55
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->joinUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->url:Ljava/lang/String;

    .line 56
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "width"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->parseWidth(Ljava/lang/String;)I

    move-result v5

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->width:I

    .line 57
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "alpha"

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v5, v6

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->alpha:F

    .line 58
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "pushContent"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->pushContent:Z

    .line 59
    iget-object v5, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->args:Lorg/json/JSONObject;

    const-string/jumbo v6, "from"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 60
    .local v3, "from":I
    packed-switch v3, :pswitch_data_0

    .line 66
    const v5, 0x800003

    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I

    .line 69
    :goto_0
    invoke-virtual {v4, v1}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->init(Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .end local v3    # "from":I
    .end local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :goto_1
    invoke-static {}, Lcom/alibaba/lightapp/runtime/ActionResponse;->furtherResponse()Lcom/alibaba/lightapp/runtime/ActionResponse;

    move-result-object v5

    return-object v5

    .line 62
    .restart local v0    # "baseUrl":Ljava/lang/String;
    .restart local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .restart local v3    # "from":I
    .restart local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :pswitch_0
    const v5, 0x800005

    :try_start_1
    iput v5, v1, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;->from:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 74
    .end local v0    # "baseUrl":Ljava/lang/String;
    .end local v1    # "cfg":Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer$Config;
    .end local v3    # "from":I
    .end local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 76
    const/4 v5, 0x2

    const-string/jumbo v6, "invalid args"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V

    goto :goto_1

    .line 72
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v4    # "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    :cond_0
    const/4 v5, 0x3

    :try_start_2
    const-string/jumbo v6, "drawer model is null"

    invoke-static {v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/lightapp/runtime/ActionRequest;->callbackId:Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->fail(Lorg/json/JSONObject;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public open(Lcom/alibaba/lightapp/runtime/ActionRequest;)Lcom/alibaba/lightapp/runtime/ActionResponse;
    .locals 5
    .param p1, "req"    # Lcom/alibaba/lightapp/runtime/ActionRequest;
    .annotation runtime Lcom/alibaba/lightapp/runtime/PluginAction;
        async = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x3

    .line 138
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->getDelegateModel()Lcom/alibaba/lightapp/runtime/Component$a;

    move-result-object v0

    check-cast v0, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;

    .line 139
    .local v0, "model":Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/DrawerModel;->open()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->OK:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    invoke-direct {v1, v2}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;)V

    .line 149
    :goto_0
    return-object v1

    .line 144
    :cond_0
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "cannot open, drawer might not be initialized"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 149
    :cond_1
    new-instance v1, Lcom/alibaba/lightapp/runtime/ActionResponse;

    sget-object v2, Lcom/alibaba/lightapp/runtime/ActionResponse$Status;->ERROR:Lcom/alibaba/lightapp/runtime/ActionResponse$Status;

    const-string/jumbo v3, "drawer model is null"

    invoke-static {v4, v3}, Lcom/alibaba/lightapp/runtime/plugin/ui/Drawer;->buildErrorResult(ILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/alibaba/lightapp/runtime/ActionResponse;-><init>(Lcom/alibaba/lightapp/runtime/ActionResponse$Status;Lorg/json/JSONObject;)V

    goto :goto_0
.end method
