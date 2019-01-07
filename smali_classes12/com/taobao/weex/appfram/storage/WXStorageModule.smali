.class public Lcom/taobao/weex/appfram/storage/WXStorageModule;
.super Lcom/taobao/weex/WXSDKEngine$DestroyableModule;
.source "WXStorageModule.java"

# interfaces
.implements Lcom/taobao/weex/appfram/storage/IWXStorage;


# instance fields
.field mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/taobao/weex/WXSDKEngine$DestroyableModule;-><init>()V

    return-void
.end method

.method private ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 39
    :goto_0
    return-object v0

    .line 38
    :cond_0
    invoke-static {}, Lcom/taobao/weex/WXSDKEngine;->getIWXStorageAdapter()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    .line 39
    iget-object v0, p0, Lcom/taobao/weex/appfram/storage/WXStorageModule;->mStorageAdapter:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 176
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->close()V

    .line 179
    :cond_0
    return-void
.end method

.method public getAllKeys(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 136
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_0

    .line 137
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 148
    :goto_0
    return-void

    .line 140
    :cond_0
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$5;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getAllKeys(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 71
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 89
    :goto_0
    return-void

    .line 76
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 77
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_1

    .line 78
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_0

    .line 81
    :cond_1
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$2;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->getItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method

.method public length(Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 118
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_0

    .line 119
    invoke-static {p1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 130
    :goto_0
    return-void

    .line 122
    :cond_0
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;

    invoke-direct {v1, p0, p1}, Lcom/taobao/weex/appfram/storage/WXStorageModule$4;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->length(Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method

.method public removeItem(Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 112
    :goto_0
    return-void

    .line 99
    :cond_0
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 100
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_1

    .line 101
    invoke-static {p2}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;

    invoke-direct {v1, p0, p2}, Lcom/taobao/weex/appfram/storage/WXStorageModule$3;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method

.method public setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 46
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 47
    :cond_0
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 66
    :goto_0
    return-void

    .line 51
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 52
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_2

    .line 53
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_0

    .line 56
    :cond_2
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$1;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItem(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method

.method public setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/bridge/JSCallback;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/taobao/weex/bridge/JSCallback;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Lcom/taobao/weex/annotation/JSMethod;
        uiThread = false
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-nez p2, :cond_1

    .line 154
    :cond_0
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleInvalidParam(Lcom/taobao/weex/bridge/JSCallback;)V

    .line 171
    :goto_0
    return-void

    .line 158
    :cond_1
    invoke-direct {p0}, Lcom/taobao/weex/appfram/storage/WXStorageModule;->ability()Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;

    move-result-object v0

    .line 159
    .local v0, "adapter":Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;
    if-nez v0, :cond_2

    .line 160
    invoke-static {p3}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->handleNoHandlerError(Lcom/taobao/weex/bridge/JSCallback;)V

    goto :goto_0

    .line 163
    :cond_2
    new-instance v1, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;

    invoke-direct {v1, p0, p3}, Lcom/taobao/weex/appfram/storage/WXStorageModule$6;-><init>(Lcom/taobao/weex/appfram/storage/WXStorageModule;Lcom/taobao/weex/bridge/JSCallback;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter;->setItemPersistent(Ljava/lang/String;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V

    goto :goto_0
.end method
