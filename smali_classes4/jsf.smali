.class public final Ljsf;
.super Lcom/taobao/windmill/rt/app/AbstractAppInstance;
.source "WXAppInstance.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljsf$a;
    }
.end annotation


# instance fields
.field public e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;

.field private g:Ljsq;

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljry;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljrl;

.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljpm;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljsf;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    .line 61
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljpm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "perf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljpm;>;"
    const/4 v2, 0x0

    .line 50
    const-string/jumbo v0, "wml_wx_"

    invoke-direct {p0, p1, v0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Ljsf;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    iput-object v2, p0, Ljsf;->g:Ljsq;

    .line 35
    iput-object v2, p0, Ljsf;->h:Ljava/util/Map;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljsf;->k:Z

    .line 51
    new-instance v0, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    invoke-direct {v0, p1}, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljsf;->e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    .line 52
    iget-object v0, p0, Ljsf;->e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    invoke-virtual {p0}, Ljsf;->c()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "AppWorker"

    invoke-virtual {v0, v1, v2}, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    iput-object p2, p0, Ljsf;->j:Ljava/lang/ref/WeakReference;

    .line 56
    :cond_0
    new-instance v0, Ljsk;

    const-string/jumbo v1, "AppWorker"

    invoke-direct {v0, p0, v1}, Ljsk;-><init>(Ljsf;Ljava/lang/String;)V

    iput-object v0, p0, Ljsf;->i:Ljrl;

    .line 57
    return-void
.end method

.method static synthetic a(Ljsf;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Ljsf;

    .prologue
    .line 31
    iget-object v0, p0, Ljsf;->j:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljsf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    new-instance v0, Ljsf;

    invoke-direct {v0, p0}, Ljsf;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/ref/WeakReference;)Ljsf;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljpm;",
            ">;)",
            "Ljsf;"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "perf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljpm;>;"
    new-instance v0, Ljsf;

    invoke-direct {v0, p0, p1}, Ljsf;-><init>(Landroid/content/Context;Ljava/lang/ref/WeakReference;)V

    return-object v0
.end method

.method static synthetic b(Ljsf;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljsf;

    .prologue
    .line 31
    iget-object v0, p0, Ljsf;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "callbackId"    # Ljava/lang/String;

    .prologue
    .line 241
    iget-object v0, p0, Ljsf;->i:Ljrl;

    invoke-interface {v0, p1, p2}, Ljrl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .param p3, "callbackId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "undefined"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "AppWorker"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    invoke-virtual {p0, p2, p3}, Ljsf;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 209
    :goto_0
    return-object v1

    .line 204
    :cond_1
    invoke-virtual {p0, p1}, Ljsf;->a(Ljava/lang/String;)Ljry;

    move-result-object v0

    .line 205
    .local v0, "renderer":Ljry;
    if-eqz v0, :cond_2

    .line 206
    invoke-interface {v0, p2, p3}, Ljry;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 209
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Lcom/taobao/windmill/rt/runtime/WMLPageObject;Ljry$b;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appObject"    # Lcom/taobao/windmill/rt/runtime/WMLPageObject;
    .param p3, "listener"    # Ljry$b;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v3, -0x1

    .line 124
    iget-object v0, p0, Ljsf;->h:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljsf;->h:Ljava/util/Map;

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wx_page_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljsf;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    .local v6, "clientId":Ljava/lang/String;
    new-instance v8, Ljso;

    invoke-virtual {p0}, Ljsf;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0, v6}, Ljso;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v8, "renderer":Ljso;
    iget-object v0, p0, Ljsf;->d:Ljse;

    .line 2113
    iput-object v0, v8, Ljso;->i:Ljse;

    .line 131
    iget-object v0, p0, Ljsf;->h:Ljava/util/Map;

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3010
    new-instance v0, Ljrk;

    invoke-direct {v0}, Ljrk;-><init>()V

    .line 2147
    const-string/jumbo v1, "beforePageCreate"

    invoke-virtual {v0, v1}, Ljrk;->a(Ljava/lang/String;)Ljrk;

    .line 2148
    const-string/jumbo v1, "pageName"

    iget-object v2, p2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljrk;->a(Ljava/lang/String;Ljava/lang/Object;)Ljrk;

    .line 2149
    const-string/jumbo v1, "clientId"

    invoke-virtual {v0, v1, v6}, Ljrk;->a(Ljava/lang/String;Ljava/lang/Object;)Ljrk;

    .line 2150
    invoke-virtual {p0, v6, v0}, Ljsf;->a(Ljava/lang/String;Ljrk;)V

    .line 134
    invoke-static {}, Ljph;->a()Ljph;

    move-result-object v0

    iget-object v1, p2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljph;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v7

    .line 135
    .local v7, "modifiedUrl":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    iput-object v7, p2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    .line 3056
    :cond_1
    iput-object p1, v8, Ljso;->b:Landroid/content/Context;

    .line 3057
    new-instance v0, Lcom/taobao/weex/RenderContainer;

    iget-object v1, v8, Ljso;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/taobao/weex/RenderContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, v8, Ljso;->c:Lcom/taobao/weex/RenderContainer;

    .line 3058
    iget-object v0, v8, Ljso;->c:Lcom/taobao/weex/RenderContainer;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/taobao/weex/RenderContainer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3059
    iput-object p3, v8, Ljso;->d:Ljry$b;

    .line 3060
    iput-object p2, v8, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    .line 3061
    iget-object v0, v8, Ljso;->b:Landroid/content/Context;

    iget-object v1, v8, Ljso;->c:Lcom/taobao/weex/RenderContainer;

    iget-object v2, v8, Ljso;->e:Lcom/taobao/windmill/rt/runtime/WMLPageObject;

    .line 3117
    iget-object v3, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    if-eqz v3, :cond_2

    .line 3118
    iget-object v3, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v3}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->destroy()V

    .line 3119
    iput-object v4, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 3122
    :cond_2
    new-instance v3, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-direct {v3, v0}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v3, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 3124
    new-instance v3, Ljsk;

    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v0

    iget-object v5, v8, Ljso;->g:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljsb;->a(Ljava/lang/String;)Ljrz;

    move-result-object v0

    check-cast v0, Ljsf;

    iget-object v5, v8, Ljso;->f:Ljava/lang/String;

    invoke-direct {v3, v0, v5}, Ljsk;-><init>(Ljsf;Ljava/lang/String;)V

    iput-object v3, v8, Ljso;->h:Ljrl;

    .line 3126
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 4041
    iput-object v8, v0, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->d:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance$a;

    .line 3127
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    iget-object v3, v8, Ljso;->g:Ljava/lang/String;

    iget-object v5, v8, Ljso;->f:Ljava/lang/String;

    invoke-virtual {v0, v3, v5}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3128
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, v1}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->setRenderContainer(Lcom/taobao/weex/RenderContainer;)V

    .line 3129
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, v8}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 3130
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, v9}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->setUseSandBox(Z)V

    .line 3131
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, v8}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->setNestedInstanceInterceptor(Lcom/taobao/weex/WXSDKInstance$NestedInstanceInterceptor;)V

    .line 3132
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    invoke-virtual {v0, v9}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->setTrackComponent(Z)V

    .line 3133
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    iget-object v3, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->setBundleUrl(Ljava/lang/String;)V

    .line 3139
    if-nez v1, :cond_3

    .line 3140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "render container is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3143
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 3144
    const-string/jumbo v0, "bundleUrl"

    iget-object v1, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3145
    const-string/jumbo v0, "container"

    const-string/jumbo v1, "windmill"

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3146
    const-string/jumbo v0, "clientId"

    iget-object v1, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    .line 5037
    iget-object v1, v1, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->b:Ljava/lang/String;

    .line 3146
    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3147
    const-string/jumbo v0, "pageName"

    iget-object v1, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->e:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3148
    const-string/jumbo v0, "pageUrl"

    iget-object v1, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->f:Ljava/lang/String;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3153
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    if-eqz v0, :cond_4

    .line 3154
    iget-object v0, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->g:Ljpm;

    const-string/jumbo v1, "createViewStart"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 3157
    :cond_4
    iget-object v0, v8, Ljso;->a:Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;

    iget-object v1, v2, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->d:Ljava/lang/String;

    .line 3158
    invoke-virtual {v2}, Lcom/taobao/windmill/rt/runtime/WMLPageObject;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v5, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    .line 3157
    invoke-virtual/range {v0 .. v5}, Lcom/taobao/windmill/rt/weex/app/WMLSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Lcom/taobao/weex/common/WXRenderStrategy;)V

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "create new page in instance "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljsf;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " with page id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/taobao/weex/utils/WXLogUtils;->e(Ljava/lang/String;)V

    .line 142
    return-object v6
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljrz$c;)V
    .locals 6
    .param p1, "workerJs"    # Ljava/lang/String;
    .param p2, "absolutePath"    # Ljava/lang/String;
    .param p3, "callback"    # Ljrz$c;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 88
    .line 1214
    iget-object v0, p0, Ljsf;->e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    .line 88
    invoke-virtual {v0, p2}, Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;->setBundleUrl(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Ljsf;->g:Ljsq;

    if-eqz v0, :cond_0

    .line 91
    iget-object v2, p0, Ljsf;->a:Ljava/lang/String;

    new-instance v5, Ljsf$2;

    invoke-direct {v5, p0, p3}, Ljsf$2;-><init>(Ljsf;Ljrz$c;)V

    .line 2024
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    const/4 v4, 0x0

    .line 2082
    new-instance v0, Ljpl$2;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljpl$2;-><init>(Ljpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljpl$a;)V

    invoke-static {v0}, Ljpl;->a(Ljava/lang/Runnable;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-string/jumbo v0, "-2"

    const-string/jumbo v1, "NO_WORKER_EXISTED"

    invoke-interface {p3, v0, v1}, Ljrz$c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Ljrm;)V
    .locals 3
    .param p1, "params"    # Ljrm;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 255
    iget-object v1, p1, Ljrm;->c:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 261
    const-string/jumbo v0, "WXAppInstance"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unhandled worker notification: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Ljrm;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_1
    return-void

    .line 255
    :pswitch_0
    const-string/jumbo v2, "ready"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 257
    :pswitch_1
    invoke-virtual {p0}, Ljsf;->f()V

    .line 258
    const-string/jumbo v0, "WXAppInstance"

    const-string/jumbo v1, "AppWorker ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    nop

    :pswitch_data_0
    .packed-switch 0x675d9a3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final b(Ljava/lang/String;)V
    .locals 6
    .param p1, "workerFramework"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 65
    new-instance v0, Ljsq;

    invoke-direct {v0}, Ljsq;-><init>()V

    iput-object v0, p0, Ljsf;->g:Ljsq;

    .line 66
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 67
    .local v4, "env":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "platform"

    const-string/jumbo v1, "Android"

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Ljsf;->j:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljsf;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Ljsf;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljpm;

    const-string/jumbo v1, "workerLoaded"

    invoke-virtual {v0, v1}, Ljpm;->a(Ljava/lang/String;)V

    .line 71
    :cond_0
    iget-object v2, p0, Ljsf;->a:Ljava/lang/String;

    new-instance v5, Ljsf$1;

    invoke-direct {v5, p0}, Ljsf$1;-><init>(Ljsf;)V

    .line 1015
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    .line 1053
    new-instance v0, Ljpl$1;

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Ljpl$1;-><init>(Ljpl;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljpl$a;)V

    invoke-static {v0}, Ljpl;->a(Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 2
    .param p1, "pageId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 155
    iget-object v1, p0, Ljsf;->h:Ljava/util/Map;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 156
    iget-object v1, p0, Ljsf;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 157
    .local v0, "renderer":Ljry;
    if-eqz v0, :cond_0

    .line 158
    invoke-interface {v0}, Ljry;->a()V

    .line 161
    .end local v0    # "renderer":Ljry;
    :cond_0
    return-void
.end method

.method public final d()Ljrz$a;
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Ljsf;->c:Ljrz$a;

    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljsf$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljsf$a;-><init>(Ljsf;B)V

    iput-object v0, p0, Ljsf;->c:Ljrz$a;

    .line 272
    :cond_0
    invoke-super {p0}, Lcom/taobao/windmill/rt/app/AbstractAppInstance;->d()Ljrz$a;

    move-result-object v0

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONObject;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 221
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    const-string/jumbo v3, "target"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    .local v2, "target":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "AppWorker"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    .end local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    .end local v2    # "target":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 225
    .restart local v0    # "object":Lcom/alibaba/fastjson/JSONObject;
    .restart local v2    # "target":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2}, Ljsf;->a(Ljava/lang/String;)Ljry;

    move-result-object v1

    .line 226
    .local v1, "renderer":Ljry;
    if-eqz v1, :cond_2

    .line 227
    invoke-interface {v1, p1}, Ljry;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 229
    :cond_2
    const-string/jumbo v3, "WXAppInstance"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "renderer not existed: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected final g()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    iget-object v0, p0, Ljsf;->h:Ljava/util/Map;

    return-object v0
.end method

.method public final h()Ljrl;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Ljsf;->i:Ljrl;

    return-object v0
.end method

.method public final i()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 184
    iget-object v1, p0, Ljsf;->h:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 185
    iget-object v1, p0, Ljsf;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljry;

    .line 186
    .local v0, "renderer":Ljry;
    invoke-interface {v0}, Ljry;->a()V

    goto :goto_0

    .line 188
    .end local v0    # "renderer":Ljry;
    :cond_0
    iget-object v1, p0, Ljsf;->h:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 191
    :cond_1
    iget-object v1, p0, Ljsf;->i:Ljrl;

    if-eqz v1, :cond_2

    .line 192
    iget-object v1, p0, Ljsf;->i:Ljrl;

    invoke-interface {v1}, Ljrl;->f()V

    .line 195
    :cond_2
    invoke-static {}, Ljsb;->a()Ljsb;

    move-result-object v1

    .line 5086
    if-eqz p0, :cond_3

    .line 5087
    iget-object v1, v1, Ljsb;->b:Ljava/util/Map;

    invoke-interface {p0}, Ljrz;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_3
    invoke-static {}, Ljpl;->a()Ljpl;

    move-result-object v1

    iget-object v2, p0, Ljsf;->a:Ljava/lang/String;

    .line 5136
    new-instance v3, Ljpl$4;

    invoke-direct {v3, v1, v2}, Ljpl$4;-><init>(Ljpl;Ljava/lang/String;)V

    invoke-static {v3}, Ljpl;->a(Ljava/lang/Runnable;)V

    .line 197
    return-void
.end method

.method public final bridge synthetic j()Ljrj;
    .locals 1

    .prologue
    .line 31
    .line 5214
    iget-object v0, p0, Ljsf;->e:Lcom/taobao/windmill/rt/weex/app/DummySDKInstance;

    .line 31
    return-object v0
.end method
