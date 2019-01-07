.class public Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;
.super Lipd;
.source "H5LoadingPlugin.java"


# static fields
.field private static final LOADING_TEXT_MAX:I = 0x14

.field public static final TAG:Ljava/lang/String; = "H5LoadingPlugin"


# instance fields
.field private activity:Landroid/app/Activity;

.field private autoHide:Z

.field private dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

.field private h5Page:Liop;

.field private handler:Landroid/os/Handler;

.field private isShowFromTiny:Z

.field private loadingTask:Ljava/lang/Runnable;

.field private loadingViewCancelable:Z


# direct methods
.method public constructor <init>(Liop;)V
    .locals 3
    .param p1, "page"    # Liop;

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-direct {p0}, Lipd;-><init>()V

    .line 45
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->isShowFromTiny:Z

    .line 49
    iput-boolean v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingViewCancelable:Z

    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 53
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    .line 55
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 56
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 57
    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;
    .locals 1
    .param p0, "x0"    # Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    return-object v0
.end method

.method private enableLoadingView()Z
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 276
    invoke-interface {v0}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 277
    invoke-interface {v0}, Liop;->getContext()Lcom/alipay/mobile/h5container/api/H5Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/h5container/api/H5Context;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableShowLoadingViewConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 279
    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->isTransparent(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 280
    invoke-interface {v0}, Liop;->getParams()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/nebulacore/Nebula;->isTinyWebView(Landroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    const/4 v0, 0x1

    .line 283
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTitleString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "title"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x14

    .line 212
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 213
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 215
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/alipay/mobile/nebula/R$string;->h5_loading_txt:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 218
    :cond_1
    return-object p1
.end method

.method private hide(Liny;)V
    .locals 2
    .param p1, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->enableLoadingView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoadingView()V

    .line 297
    :goto_0
    const-string/jumbo v0, "success"

    const-string/jumbo v1, "true"

    invoke-interface {p1, v0, v1}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 298
    return-void

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoading()V

    goto :goto_0
.end method

.method private hideLoadingView()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 198
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    .line 203
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 209
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    const-string/jumbo v0, "H5LoadingPlugin"

    const-string/jumbo v1, "hideLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v0, 0x0

    sput-boolean v0, Liog;->c:Z

    .line 208
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v0}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->setVisibility(I)V

    goto :goto_0
.end method

.method private isTransparent(Landroid/os/Bundle;)Z
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 288
    const-string/jumbo v0, "transparent"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Landroid/os/Bundle;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private showLoadingView(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 8
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 163
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v4

    if-nez v4, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v4}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v1

    .line 2121
    .local v1, "loadingView":Lcom/alipay/mobile/nebula/view/H5LoadingView;
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 168
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "text"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->getTitleString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "delay"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v0

    .line 172
    .local v0, "delay":I
    const-string/jumbo v4, "autoHide"

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->getDefaultAutoHide(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    .line 173
    const-string/jumbo v4, "cancelable"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingViewCancelable:Z

    .line 174
    const-string/jumbo v4, "H5LoadingPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showLoading [title] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [delay] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoadingView()V

    .line 178
    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;

    invoke-direct {v4, p0, v1, v3}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$2;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;Lcom/alipay/mobile/nebula/view/H5LoadingView;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    .line 194
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    int-to-long v6, v0

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method getDefaultAutoHide(Lcom/alipay/mobile/h5container/api/H5Event;)Z
    .locals 3
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 76
    .line 1113
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 76
    const-string/jumbo v2, "native_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    const/4 v0, 0x1

    .line 82
    .local v0, "defaultAutoHide":Z
    :goto_0
    const-string/jumbo v1, "yes"

    const-string/jumbo v2, "h5_showLoading_defaultAutoHide"

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getConfigWithProcessCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    const/4 v0, 0x1

    .line 86
    :cond_0
    return v0

    .line 79
    .end local v0    # "defaultAutoHide":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "defaultAutoHide":Z
    goto :goto_0
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 5
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "bridgeContext"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 248
    .line 4065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 249
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "showLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 250
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->enableLoadingView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    invoke-direct {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->showLoadingView(Lcom/alipay/mobile/h5container/api/H5Event;)V

    .line 255
    :goto_0
    const-string/jumbo v1, "success"

    const-string/jumbo v2, "true"

    invoke-interface {p2, v1, v2}, Liny;->sendBridgeResult(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 271
    :cond_0
    :goto_1
    return v4

    .line 253
    :cond_1
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->showLoading(Lcom/alipay/mobile/h5container/api/H5Event;)V

    goto :goto_0

    .line 256
    :cond_2
    const-string/jumbo v1, "hideLoading"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4113
    iget-object v1, p1, Lcom/alipay/mobile/h5container/api/H5Event;->c:Ljava/lang/String;

    .line 257
    const-string/jumbo v2, "native_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    if-nez v1, :cond_3

    .line 258
    invoke-interface {p2}, Liny;->sendSuccess()V

    goto :goto_1

    .line 260
    :cond_3
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->isShowFromTiny:Z

    if-eqz v1, :cond_4

    .line 261
    const-string/jumbo v1, "H5LoadingPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hide autoHide:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    if-eqz v1, :cond_0

    .line 263
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hide(Liny;)V

    goto :goto_1

    .line 268
    :cond_4
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hide(Liny;)V

    goto :goto_1
.end method

.method public hideLoading()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 141
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v0, :cond_1

    .line 148
    const-string/jumbo v0, "H5LoadingPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "dialog.isShowing():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v2}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->isShowing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 152
    const-string/jumbo v0, "H5LoadingPlugin"

    const-string/jumbo v1, "hideLoading"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Liog;->c:Z

    .line 155
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_2
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    const-string/jumbo v0, "H5LoadingPlugin"

    const-string/jumbo v1, "dismiss exception"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z
    .locals 2
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;
    .param p2, "context"    # Liny;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 232
    .line 3065
    iget-object v0, p1, Lcom/alipay/mobile/h5container/api/H5Event;->a:Ljava/lang/String;

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "h5PagePhysicalBack"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    invoke-interface {v1}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 235
    invoke-interface {v1}, Liop;->getH5LoadingView()Lcom/alipay/mobile/nebula/view/H5LoadingView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/nebula/view/H5LoadingView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Lcom/alipay/mobile/nebulacore/util/NebulaUtil;->enableShowLoadingViewConfig()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    iget-boolean v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingViewCancelable:Z

    if-eqz v1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoadingView()V

    .line 240
    :cond_0
    const/4 v1, 0x1

    .line 243
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lipd;->interceptEvent(Lcom/alipay/mobile/h5container/api/H5Event;Liny;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepare(Liof;)V
    .locals 1
    .param p1, "filter"    # Liof;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 224
    const-string/jumbo v0, "showLoading"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 225
    const-string/jumbo v0, "hideLoading"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 226
    const-string/jumbo v0, "h5PagePhysicalBack"

    invoke-virtual {p1, v0}, Liof;->a(Ljava/lang/String;)V

    .line 228
    :cond_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->dismiss()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 67
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    .line 68
    iput-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->h5Page:Liop;

    .line 69
    return-void
.end method

.method public showLoading(Lcom/alipay/mobile/h5container/api/H5Event;)V
    .locals 9
    .param p1, "event"    # Lcom/alipay/mobile/h5container/api/H5Event;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v8, 0x14

    const/4 v7, 0x0

    .line 91
    .line 1121
    iget-object v2, p1, Lcom/alipay/mobile/h5container/api/H5Event;->e:Lcom/alibaba/fastjson/JSONObject;

    .line 92
    .local v2, "param":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v4, "text"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "title":Ljava/lang/String;
    const-string/jumbo v4, "delay"

    invoke-static {v2, v4}, Lcom/alipay/mobile/nebula/util/H5Utils;->getInt(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result v1

    .line 94
    .local v1, "delay":I
    const-string/jumbo v4, "isTinyApp"

    invoke-static {v2, v4, v7}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->isShowFromTiny:Z

    .line 97
    const-string/jumbo v4, "autoHide"

    invoke-virtual {p0, p1}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->getDefaultAutoHide(Lcom/alipay/mobile/h5container/api/H5Event;)Z

    move-result v5

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    .line 98
    const-string/jumbo v4, "cancelable"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5}, Lcom/alipay/mobile/nebula/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    .line 100
    .local v0, "cancelable":Z
    const-string/jumbo v4, "H5LoadingPlugin"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "showLoading [title] "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " [delay] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " autoHide:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->autoHide:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    if-nez v4, :cond_0

    .line 103
    new-instance v4, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->activity:Landroid/app/Activity;

    invoke-direct {v4, v5}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->hideLoading()V

    .line 109
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_1

    .line 110
    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 113
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    invoke-static {}, Lcom/alipay/mobile/nebulacore/env/H5Environment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alipay/mobile/nebula/R$string;->h5_loading_txt:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v4, v0}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCancelable(Z)V

    .line 118
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v4, v7}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setCanceledOnTouchOutside(Z)V

    .line 119
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->dialog:Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;

    invoke-virtual {v4, v3}, Lcom/alipay/mobile/nebulacore/ui/H5LoadingDialog;->setMessage(Ljava/lang/String;)V

    .line 121
    new-instance v4, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;

    invoke-direct {v4, p0}, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin$1;-><init>(Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;)V

    iput-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    .line 137
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->handler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/alipay/mobile/nebulacore/plugin/H5LoadingPlugin;->loadingTask:Ljava/lang/Runnable;

    int-to-long v6, v1

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    return-void
.end method
