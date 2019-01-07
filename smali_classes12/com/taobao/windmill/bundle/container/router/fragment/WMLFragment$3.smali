.class final Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;
.super Ljava/lang/Object;
.source "WMLFragment.java"

# interfaces
.implements Ljry$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;


# direct methods
.method constructor <init>(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs a(Ljava/lang/String;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 10
    .param p1, "pageId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "extension"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 237
    const-string/jumbo v2, "[onRenderSuccess]"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "pageId:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ",onRenderSuccess,"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 238
    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v2, v3}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v2

    .line 241
    invoke-interface {v2}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v2

    invoke-interface {v2}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v2

    .line 243
    invoke-interface {v2}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->onRenderSuccess()V

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljrz;

    move-result-object v2

    invoke-interface {v2}, Ljrz;->e()Ljrz$b;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 248
    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->e(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 247
    invoke-interface {v2, v3, v4}, Ljrz$b;->b(Ljava/lang/String;Ljava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->f(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljrz;

    move-result-object v2

    invoke-interface {v2}, Ljrz;->e()Ljrz$b;

    move-result-object v2

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 251
    invoke-static {v4}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->g(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->toJsonObj()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    .line 250
    invoke-interface {v2, v3, v4}, Ljrz$b;->c(Ljava/lang/String;Ljava/lang/Object;)V

    .line 254
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljpm;

    move-result-object v2

    const-string/jumbo v3, "createPageEnd"

    invoke-virtual {v2, v3}, Ljpm;->a(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_2

    .line 256
    const-string/jumbo v2, "[onRenderSuccess]"

    const-string/jumbo v3, "view has a parent"

    invoke-static {v2, v3}, Ljrc;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    move-object v1, p2

    .line 258
    .local v1, "wrappedView":Landroid/view/View;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 260
    if-nez v1, :cond_1

    .line 261
    move-object v1, p2

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2, v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Landroid/view/View;)Landroid/view/View;

    .line 265
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->j(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 270
    .end local v1    # "wrappedView":Landroid/view/View;
    :cond_2
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljpm;

    move-result-object v2

    const-string/jumbo v3, "pageShow"

    invoke-virtual {v2, v3}, Ljpm;->a(Ljava/lang/String;)V

    .line 272
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2, v8}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Z)V

    .line 273
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->h(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljpm;

    move-result-object v2

    const-string/jumbo v3, "allFinished"

    invoke-virtual {v2, v3}, Ljpm;->a(Ljava/lang/String;)V

    .line 274
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v3}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->k(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v3

    invoke-interface {v3}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "SUCCESS_RENDER"

    const-string/jumbo v5, ""

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "url"

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 276
    invoke-static {v7}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->l(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v9

    .line 274
    invoke-static {v2, v3, v4, v5, v6}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 280
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 281
    aget-object v0, p3, v8

    .line 282
    .local v0, "extendObj":Ljava/lang/Object;
    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v2

    .line 1127
    iget-object v3, v2, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v3, :cond_3

    if-nez v0, :cond_4

    .line 1134
    .end local v0    # "extendObj":Ljava/lang/Object;
    :cond_3
    :goto_0
    return-void

    .line 1131
    .restart local v0    # "extendObj":Ljava/lang/Object;
    :cond_4
    :try_start_0
    iget-object v3, v2, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "onWindmillRenderSuccess"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 1132
    iget-object v2, v2, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 296
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    .line 299
    invoke-interface {v0}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->hide()V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->i(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;

    move-result-object v0

    .line 1152
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 1155
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1159
    :cond_1
    :try_start_0
    iget-object v1, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string/jumbo v2, "onWindmillException"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Object;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1160
    iget-object v0, v0, Lcom/taobao/windmill/bundle/container/utils/WMLAnalyzerDelegate;->a:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->m(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    .line 1239
    const/4 v0, 0x5

    sget-object v2, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;->RENDER:Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "FAIL_RENDER_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v5, v7, [Ljava/lang/String;

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils;->a(ILjava/lang/String;Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$Stage;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "|"

    .line 308
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 309
    const-string/jumbo v0, "|"

    .line 310
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 309
    invoke-virtual {p1, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 311
    .local v6, "codeType":Ljava/lang/String;
    const-string/jumbo v0, "1"

    invoke-static {v0, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 312
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 314
    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->n(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getDowngradeUrl()Ljava/lang/String;

    move-result-object v0

    .line 313
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 315
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "downgrade2H5"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 317
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    :cond_3
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 321
    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->o(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->p(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    .line 320
    invoke-virtual {v0, v1, v2}, Ljqr;->a(Ljava/lang/String;Z)Z

    .line 323
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->q(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->r(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->s(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->t(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_EXCEPTION_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    .end local v6    # "codeType":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 331
    :cond_5
    invoke-static {}, Ljqy;->b()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 332
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "errorCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",errorMsg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 344
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    .line 345
    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getAppLoadingView()Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;

    move-result-object v0

    .line 347
    invoke-interface {v0}, Lcom/taobao/windmill/bundle/container/prompt/IWMLAppLoadingPrompt;->hide()V

    .line 350
    :cond_0
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->u(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v1

    invoke-interface {v1}, Ljqd;->getAppId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_RENDER_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "url"

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 352
    invoke-static {v5}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->v(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 350
    invoke-static {v0, v1, v2, p2, v3}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$c;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 355
    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->w(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getDowngradeUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 356
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-virtual {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->d()Ljqd;

    move-result-object v0

    invoke-interface {v0}, Ljqd;->getRouter()Ljqr;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    .line 357
    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->x(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getEnterUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->y(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v2

    iget-boolean v2, v2, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->isHomePage:Z

    invoke-virtual {v0, v1, v2}, Ljqr;->a(Ljava/lang/String;Z)Z

    .line 359
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->z(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->A(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Lcom/taobao/windmill/bundle/container/utils/WMLLogUtils$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->B(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Ljqd;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v1}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->C(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;)Lcom/taobao/windmill/bundle/container/router/WMLPageModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/windmill/bundle/container/router/WMLPageModel;->getPageUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "FAIL_ERROR_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Ljre$a;->a(Ljqd;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "WX_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment$3;->a:Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;

    invoke-static {v0, v6}, Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;->a(Lcom/taobao/windmill/bundle/container/router/fragment/WMLFragment;Z)V

    goto :goto_0
.end method
