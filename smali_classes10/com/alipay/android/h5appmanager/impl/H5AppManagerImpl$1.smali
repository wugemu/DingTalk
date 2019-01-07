.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->syncFromAppInfo(Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback",
        "<",
        "Lcom/alipay/android/h5appmanager/AppInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$callback:Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

.field final synthetic val$failedList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$callback:Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$failedList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "result"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 186
    if-eqz p1, :cond_3

    .line 187
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$callback:Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    invoke-interface {v1, p1, p2}, Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;->onFail(Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 192
    :goto_0
    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    .line 193
    :cond_0
    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$failedList:Ljava/util/List;

    if-nez p2, :cond_4

    const-string/jumbo v1, "unknown"

    :goto_1
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_1
    if-eqz p2, :cond_2

    .line 198
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-virtual {p2}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$000(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/AppInfo;

    move-result-object v0

    .line 199
    .local v0, "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    if-eqz v0, :cond_2

    .line 200
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$callback:Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    invoke-interface {v1, v0}, Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;->onAppInfo(Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 201
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "callback: upgrade app(id:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$100(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;)V

    .line 205
    .end local v0    # "appInfo":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_2
    return-void

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->val$callback:Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;

    invoke-interface {v1, p2}, Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;->onSuccess(Lcom/alipay/android/h5appmanager/AppInfo;)V

    goto :goto_0

    .line 193
    :cond_4
    invoke-virtual {p2}, Lcom/alipay/android/h5appmanager/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public bridge synthetic onDone(Ljava/lang/Exception;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 174
    check-cast p2, Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-virtual {p0, p1, p2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$1;->onDone(Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V

    return-void
.end method

.method public onProgressUpdated(Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "newProgress"    # I

    .prologue
    .line 177
    return-void
.end method
