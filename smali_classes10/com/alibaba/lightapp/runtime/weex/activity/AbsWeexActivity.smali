.class public abstract Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "AbsWeexActivity.java"

# interfaces
.implements Lcom/taobao/weex/IWXRenderListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AbsWeexActivity"


# instance fields
.field private mContainer:Landroid/view/ViewGroup;

.field private mInstance:Lcom/taobao/weex/WXSDKInstance;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected createWeexInstance()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->destoryWeexInstance()V

    .line 258
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 259
    .local v0, "outRect":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 261
    new-instance v1, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/RuntimeWXSDKInstance;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 262
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v1, p0}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 263
    return-void
.end method

.method protected destoryWeexInstance()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0, v1}, Lcom/taobao/weex/WXSDKInstance;->registerRenderListener(Lcom/taobao/weex/IWXRenderListener;)V

    .line 250
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->destroy()V

    .line 251
    iput-object v1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 253
    :cond_0
    return-void
.end method

.method protected final getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 306
    const-string/jumbo v0, "AbsWeexActivity"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 234
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->createWeexInstance()V

    .line 236
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityCreate()V

    .line 237
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 344
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityDestroy()V

    .line 347
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 327
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 328
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityPause()V

    .line 331
    :cond_0
    return-void
.end method

.method public onRefreshSuccess(Lcom/taobao/weex/WXSDKInstance;II)V
    .locals 0
    .param p1, "wxsdkInstance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "i"    # I
    .param p3, "i1"    # I

    .prologue
    .line 360
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 319
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onResume()V

    .line 320
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityResume()V

    .line 323
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 311
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStart()V

    .line 312
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStart()V

    .line 315
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onStop()V

    .line 336
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    invoke-virtual {v0}, Lcom/taobao/weex/WXSDKInstance;->onActivityStop()V

    .line 339
    :cond_0
    return-void
.end method

.method public onViewCreated(Lcom/taobao/weex/WXSDKInstance;Landroid/view/View;)V
    .locals 1
    .param p1, "wxsdkInstance"    # Lcom/taobao/weex/WXSDKInstance;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 353
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 355
    :cond_0
    return-void
.end method

.method protected renderPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->renderPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void
.end method

.method protected renderPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "template"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "jsonInitData"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 270
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t render page, container is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/util/AssertUtil;->throwIfNull(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 271
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 272
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "bundleUrl"

    invoke-interface {v3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 274
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    .line 278
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v5

    .line 279
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v2

    const/high16 v4, 0x42600000    # 56.0f

    invoke-static {p0, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    sub-int v6, v2, v4

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v2, p1

    move-object v4, p3

    .line 273
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/WXSDKInstance;->render(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V

    .line 281
    return-void
.end method

.method protected renderPageByURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 284
    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayWidth(Landroid/app/Activity;)I

    move-result v0

    invoke-static {p0}, Lcom/alibaba/lightapp/runtime/weex/util/ScreenUtil;->getDisplayHeight(Landroid/app/Activity;)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->renderPageByURL(Ljava/lang/String;II)V

    .line 285
    return-void
.end method

.method protected renderPageByURL(Ljava/lang/String;II)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->renderPageByURL(Ljava/lang/String;Ljava/lang/String;II)V

    .line 289
    return-void
.end method

.method protected renderPageByURL(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "jsonInitData"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 292
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Can\'t render page, container is null"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/alibaba/lightapp/runtime/weex/util/AssertUtil;->throwIfNull(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 293
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 294
    .local v3, "options":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v0, "bundleUrl"

    invoke-interface {v3, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mInstance:Lcom/taobao/weex/WXSDKInstance;

    .line 296
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->getPageName()Ljava/lang/String;

    move-result-object v1

    sget-object v7, Lcom/taobao/weex/common/WXRenderStrategy;->APPEND_ASYNC:Lcom/taobao/weex/common/WXRenderStrategy;

    move-object v2, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 295
    invoke-virtual/range {v0 .. v7}, Lcom/taobao/weex/WXSDKInstance;->renderByUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;IILcom/taobao/weex/common/WXRenderStrategy;)V

    .line 303
    return-void
.end method

.method protected final setContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/weex/activity/AbsWeexActivity;->mContainer:Landroid/view/ViewGroup;

    .line 241
    return-void
.end method
