.class interface abstract Lcom/taobao/weex/appfram/storage/IWXStorage;
.super Ljava/lang/Object;
.source "IWXStorage.java"


# virtual methods
.method public abstract getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .param p1    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .param p2    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract length(Lcom/taobao/weex/bridge/JSCallback;)V
    .param p1    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .param p2    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .param p3    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public abstract setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .param p3    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
.end method
