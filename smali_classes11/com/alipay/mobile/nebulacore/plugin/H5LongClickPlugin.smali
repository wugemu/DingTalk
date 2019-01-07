.class public Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
.super Lipd;
.source "H5LongClickPlugin.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;
    }
.end annotation


# static fields
.field public static final SAVE_IMAGE:Ljava/lang/String; = "saveImage"

.field public static final TAG:Ljava/lang/String; = "H5LongClickPlugin"

.field public static final privateSaveImage:Ljava/lang/String; = "privateSaveImage"


# instance fields
.field private activity:Landroid/app/Activity;

.field private enableLongClick:Z

.field private h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

.field private webView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/nebulacore/core/H5PageImpl;)V
    .locals 2
    .param p1, "h5Page"    # Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .prologue
    .line 69
    invoke-direct {p0}, Lipd;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 71
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 72
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 73
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    .line 75
    :cond_0
    invoke-virtual {p1}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->webView:Landroid/view/View;

    .line 76
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->webView:Landroid/view/View;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    invoke-static {p1}, Lcom/alipay/mobile/nebulacore/Nebula;->enableLongClick(Liop;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->enableLongClick:Z

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Liny;
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->saveImage(Ljava/lang/String;Liny;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;)Lcom/alipay/mobile/nebulacore/core/H5PageImpl;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    return-object v0
.end method

.method private handleSaveImg(Ljava/lang/String;ZLiny;ZLjava/lang/String;)V
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "showDialog"    # Z
    .param p3, "bridgeContext"    # Liny;
    .param p4, "cusHandleResult"    # Z
    .param p5, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    if-nez p2, :cond_1

    .line 122
    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->saveImage(Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 181
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_save_to_phone:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "savePhone":Ljava/lang/String;
    const/4 v4, 0x1

    new-array v11, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v13, v11, v4

    .line 134
    .local v11, "items":[Ljava/lang/String;
    invoke-static {}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getInstance()Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;

    move-result-object v4

    const-class v5, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    .line 135
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/alipay/mobile/nebulacore/manager/H5ProviderManagerImpl;->getProvider(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;

    .line 136
    .local v10, "h5ListPopDialogProvider":Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;
    if-eqz v10, :cond_2

    .line 139
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 140
    .local v12, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    invoke-interface {v10, v4, v12}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->createDialog(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 142
    invoke-interface {v10}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->showDialog()V

    .line 143
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 144
    invoke-interface {v10, v3}, Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider;->setOnItemClickListener(Lcom/alipay/mobile/nebula/provider/H5ListPopDialogProvider$OnItemClickListener;)V

    goto :goto_0

    .line 156
    .end local v12    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    new-instance v3, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;

    move-object v4, p0

    move-object v5, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    invoke-direct/range {v3 .. v8}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 172
    .local v3, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v11, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    .line 173
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    .line 174
    .local v9, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v9, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 175
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 176
    invoke-virtual {v9}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private saveImage(Ljava/lang/String;Liny;ZLjava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "bridgeContext"    # Liny;
    .param p3, "cusHandleResult"    # Z
    .param p4, "savePath"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 219
    const-string/jumbo v0, "URGENT"

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getExecutor(Ljava/lang/String;)Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v6

    new-instance v0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin$ImageSaveRunner;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;Ljava/lang/String;Liny;ZLjava/lang/String;)V

    .line 220
    invoke-virtual {v6, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 221
    return-void
.end method


# virtual methods
.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 11
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v8, 0x1

    .line 99
    const-string/jumbo v3, "H5LongClickPlugin"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "handleEvent event is "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1065
    iget-object v10, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 99
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2065
    iget-object v6, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 101
    .local v6, "action":Ljava/lang/String;
    const-string/jumbo v3, "saveImage"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "privateSaveImage"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2121
    :cond_0
    iget-object v7, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 103
    .local v7, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "src"

    invoke-static {v7, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    const-string/jumbo v0, "error"

    const-string/jumbo v3, "2"

    invoke-interface {p2, v0, v3}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    move v0, v8

    .line 114
    .end local v1    # "url":Ljava/lang/String;
    .end local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_1
    :goto_0
    return v0

    .line 108
    .restart local v1    # "url":Ljava/lang/String;
    .restart local v7    # "param":Lcom/alibaba/fastjson/JSONObject;
    :cond_2
    const-string/jumbo v3, "showActionSheet"

    invoke-static {v7, v3, v8}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v2

    .line 109
    .local v2, "showDialog":Z
    const-string/jumbo v3, "cusHandleResult"

    invoke-static {v7, v3, v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    .line 110
    .local v4, "cusHandleResult":Z
    const-string/jumbo v0, "savePath"

    const-string/jumbo v3, "default"

    invoke-static {v7, v0, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, "savePath":Ljava/lang/String;
    move-object v0, p0

    move-object v3, p2

    .line 111
    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->handleSaveImg(Ljava/lang/String;ZLiny;ZLjava/lang/String;)V

    move v0, v8

    .line 112
    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 185
    const-string/jumbo v7, "H5LongClickPlugin"

    const-string/jumbo v8, "onLongClick"

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    if-nez v7, :cond_2

    :cond_0
    move v5, v6

    .line 214
    :cond_1
    :goto_0
    return v5

    .line 190
    :cond_2
    iget-boolean v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->enableLongClick:Z

    if-eqz v7, :cond_1

    .line 194
    iget-object v7, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->getWebView()Lcom/alipay/mobile/nebulacore/web/H5WebView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/alipay/mobile/nebulacore/web/H5WebView;->getHitTestResult()Lcom/alipay/mobile/nebula/webview/APHitTestResult;

    move-result-object v4

    .line 195
    .local v4, "result":Lcom/alipay/mobile/nebula/webview/APHitTestResult;
    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v7

    const/4 v8, 0x5

    if-eq v7, v8, :cond_3

    .line 196
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getType()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_4

    :cond_3
    move v1, v5

    .line 198
    .local v1, "image":Z
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 200
    :try_start_0
    invoke-interface {v4}, Lcom/alipay/mobile/nebula/webview/APHitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "imgUrl":Ljava/lang/String;
    const-string/jumbo v7, "H5LongClickPlugin"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "imgUrl:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string/jumbo v7, "http"

    invoke-virtual {v2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 203
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 204
    .local v3, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v6, "imgUrl"

    invoke-virtual {v3, v6, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    iget-object v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    const-string/jumbo v7, "h5PageLongClick"

    invoke-virtual {v6, v7, v3}, Lcom/alipay/mobile/nebulacore/core/H5PageImpl;->sendEvent(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 209
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v3    # "param":Lcom/alibaba/fastjson/JSONObject;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "H5LongClickPlugin"

    const-string/jumbo v7, "getExtras Exception"

    invoke-static {v6, v7, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "image":Z
    :cond_4
    move v1, v6

    .line 196
    goto :goto_1

    .restart local v1    # "image":Z
    .restart local v2    # "imgUrl":Ljava/lang/String;
    :cond_5
    move v5, v6

    .line 207
    goto :goto_0

    .end local v2    # "imgUrl":Ljava/lang/String;
    :cond_6
    move v5, v6

    .line 214
    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 82
    const-string/jumbo v0, "saveImage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 83
    const-string/jumbo v0, "privateSaveImage"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 88
    const-string/jumbo v0, "H5LongClickPlugin"

    const-string/jumbo v1, "onRelease"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->webView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->webView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 91
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->webView:Landroid/view/View;

    .line 93
    :cond_0
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->h5Page:Lcom/alipay/mobile/nebulacore/core/H5PageImpl;

    .line 94
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LongClickPlugin;->activity:Landroid/app/Activity;

    .line 95
    return-void
.end method
