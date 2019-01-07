.class public Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
.super Lcom/taobao/weex/WXSDKInstance;
.source "RuntimeWXSDKInstance.java"

# interfaces
.implements Lhde;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$a;,
        Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;
    }
.end annotation


# instance fields
.field public a:Lhds;

.field public b:Lcom/alibaba/lightapp/runtime/INuvaContext;

.field public c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lhde$a;

.field private e:Lhqe$c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/taobao/weex/WXSDKInstance;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    .line 41
    new-instance v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$a;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$a;-><init>(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->d:Lhde$a;

    .line 44
    new-instance v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$1;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$1;-><init>(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->e:Lhqe$c;

    .line 55
    new-instance v0, Lhds;

    invoke-direct {v0, p0}, Lhds;-><init>(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    .line 56
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    invoke-static {}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance$b;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 1184
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->f:Ljava/util/concurrent/Executor;

    .line 57
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->a:Lhds;

    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v1

    .line 1188
    iput-object v1, v0, Lcom/alibaba/lightapp/runtime/PluginManager;->g:Lhdk;

    .line 59
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->e:Lhqe$c;

    invoke-virtual {v0, v1}, Lhqe;->a(Lhqe$c;)V

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;Ljava/lang/String;)Z
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 33
    .line 1190
    sget-boolean v0, Lcic;->a:Z

    if-eqz v0, :cond_0

    .line 1191
    const-string/jumbo v0, "RimetWebView"

    const-string/jumbo v2, "------------------ DEBUG ------------------"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :goto_0
    return v1

    .line 1195
    :cond_0
    const/4 v2, 0x0

    .line 1197
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1200
    invoke-static {p1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1202
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1204
    sget-object v0, Lhru;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1206
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1207
    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    move v1, v0

    .line 33
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 219
    const/4 v0, 0x0

    .line 220
    .local v0, "content":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "http"

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    const-string/jumbo v5, "CLOUD_SETTING_WEBVIEW_GET_DOMAIN_NEW"

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lhdo;->a(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 224
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 225
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-object v0

    .line 226
    :catch_0
    move-exception v3

    .line 227
    .local v3, "t":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 232
    .end local v3    # "t":Ljava/lang/Throwable;
    :cond_1
    const-string/jumbo v5, "(?<=//|)((\\w)+\\.)+\\w+"

    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 233
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 234
    .local v1, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 235
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lhde$a;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->d:Lhde$a;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 164
    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 104
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    const-string/jumbo v2, "originalUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    const-string/jumbo v2, "originalUrl"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "originalUrl":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 113
    .end local v0    # "originalUrl":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 111
    :cond_0
    const-string/jumbo v1, "originalUrl is empty"

    invoke-static {v1}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 112
    const-string/jumbo v1, "WeexButler"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "originalUrl is empty"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lhrq;->c(Ljava/lang/String;[Ljava/lang/String;)V

    .line 113
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public declared-synchronized destroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lhqe;->a()Lhqe;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->e:Lhqe$c;

    invoke-virtual {v0, v1}, Lhqe;->b(Lhqe$c;)V

    .line 183
    invoke-super {p0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getBundleUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNuvaContext()Lcom/alibaba/lightapp/runtime/INuvaContext;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->b:Lcom/alibaba/lightapp/runtime/INuvaContext;

    return-object v0
.end method

.method protected newNestedInstance()Lcom/taobao/weex/WXSDKInstance;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 84
    new-instance v0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public reload()V
    .locals 0

    .prologue
    .line 159
    return-void
.end method

.method public renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V
    .locals 1
    .param p1, "pageName"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p4, "jsonInitData"    # Ljava/lang/String;
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "flag"    # Lcom/taobao/weex/common/WXRenderStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "II",
            "Lcom/taobao/weex/common/WXRenderStrategy;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p3, :cond_0

    .line 66
    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    .line 71
    :goto_0
    invoke-super/range {p0 .. p7}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V

    .line 72
    return-void

    .line 69
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;->c:Ljava/util/Map;

    goto :goto_0
.end method
