.class final Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM40.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->showCustomKeyboardCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v6, 0x10

    .line 387
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 388
    .local v1, "params":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Landroid/graphics/Rect;

    move-result-object v2

    .line 389
    .local v2, "scrRc":Landroid/graphics/Rect;
    const-string/jumbo v3, "keyboard-screen-rect-left"

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 390
    const-string/jumbo v3, "keyboard-screen-rect-top"

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 391
    const-string/jumbo v3, "keyboard-screen-rect-right"

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 392
    const-string/jumbo v3, "keyboard-screen-rect-bottom"

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 393
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Landroid/webkit/ValueCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 394
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Landroid/webkit/ValueCallback;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 396
    :cond_0
    const-string/jumbo v3, "H5NumInputKeyboardM40"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "rect ltrb = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .line 402
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 403
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_2

    .line 404
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 405
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 412
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "scrRc":Landroid/graphics/Rect;
    :cond_1
    :goto_0
    return-void

    .line 407
    .restart local v1    # "params":Lorg/json/JSONObject;
    .restart local v2    # "scrRc":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 408
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 398
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "scrRc":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 399
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v3, "H5NumInputKeyboardM40"

    const-string/jumbo v4, "onReceiveValue exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 401
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .line 402
    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 403
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    .line 404
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 405
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 407
    :cond_3
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v3

    invoke-interface {v3}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 408
    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 401
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    .line 402
    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 403
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v6, :cond_5

    .line 404
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 405
    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 408
    :cond_4
    :goto_1
    throw v3

    .line 407
    :cond_5
    iget-object v4, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40$3;->a:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;

    invoke-static {v4}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;->access$400(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM40;)Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;

    move-result-object v4

    invoke-interface {v4}, Lcom/alipay/mobile/nebula/provider/H5InputBoardProvider;->getKeyboard()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    .line 408
    invoke-virtual {v4, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method
