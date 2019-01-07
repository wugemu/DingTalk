.class final Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;
.super Ljava/lang/Object;
.source "H5NumInputKeyboardM57.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->showCustomKeyboardCallback(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    .prologue
    .line 390
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->b:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    iput-boolean p2, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 394
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 395
    .local v1, "params":Lorg/json/JSONObject;
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->b:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$200(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/graphics/Rect;

    move-result-object v2

    .line 396
    .local v2, "scrRc":Landroid/graphics/Rect;
    const-string/jumbo v3, "keyboard-screen-rect-left"

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 397
    const-string/jumbo v3, "keyboard-screen-rect-top"

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 398
    const-string/jumbo v3, "keyboard-screen-rect-right"

    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 399
    const-string/jumbo v3, "keyboard-screen-rect-bottom"

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 400
    const-string/jumbo v4, "CustomKeyBoard"

    iget-boolean v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->a:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 401
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->b:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 402
    iget-object v3, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->b:Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;

    invoke-static {v3}, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;->access$300(Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57;)Landroid/webkit/ValueCallback;

    move-result-object v3

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 404
    :cond_0
    const-string/jumbo v3, "H5NumInputKeyboardM57"

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

    const-string/jumbo v5, ", CustomKeyBoard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/alipay/mobile/nebulauc/input/H5NumInputKeyboardM57$2;->a:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "scrRc":Landroid/graphics/Rect;
    :goto_1
    return-void

    .line 400
    .restart local v1    # "params":Lorg/json/JSONObject;
    .restart local v2    # "scrRc":Landroid/graphics/Rect;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 407
    .end local v1    # "params":Lorg/json/JSONObject;
    .end local v2    # "scrRc":Landroid/graphics/Rect;
    :catch_0
    move-exception v0

    .line 408
    .local v0, "ex":Ljava/lang/Exception;
    const-string/jumbo v3, "H5NumInputKeyboardM57"

    const-string/jumbo v4, "onReceiveValue exception"

    invoke-static {v3, v4, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
