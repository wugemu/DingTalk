.class Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;
.super Ljava/lang/Object;
.source "DefaultWXStorage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->removeItem(Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;


# direct methods
.method constructor <init>(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iput-object p2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 93
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->this$0:Lcom/taobao/weex/appfram/storage/DefaultWXStorage;

    iget-object v2, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$key:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/taobao/weex/appfram/storage/DefaultWXStorage;->access$200(Lcom/taobao/weex/appfram/storage/DefaultWXStorage;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/taobao/weex/appfram/storage/StorageResultHandler;->removeItemResult(Z)Ljava/util/Map;

    move-result-object v0

    .line 94
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    if-nez v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/taobao/weex/appfram/storage/DefaultWXStorage$3;->val$listener:Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;

    invoke-interface {v1, v0}, Lcom/taobao/weex/appfram/storage/IWXStorageAdapter$OnResultReceivedListener;->onReceived(Ljava/util/Map;)V

    goto :goto_0
.end method
