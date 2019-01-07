.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->requestUpdateApp(Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$appIds:Ljava/util/Collection;

.field final synthetic val$appIdsInstalled:Ljava/util/List;

.field final synthetic val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 1524
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIds:Ljava/util/Collection;

    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iput-object p4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIdsInstalled:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 1527
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)V

    .line 1528
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIds:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1530
    .local v0, "appId":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iget-object v5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    invoke-static {v4, v5, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1600(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1531
    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIdsInstalled:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1533
    :catch_0
    move-exception v2

    .line 1534
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 1539
    .end local v0    # "appId":Ljava/lang/String;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIds:Ljava/util/Collection;

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIdsInstalled:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 1541
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$appIds:Ljava/util/Collection;

    invoke-static {v3, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1700(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 1542
    .local v1, "apps":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$8;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    invoke-static {v3, v1, v4}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1800(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    .line 1543
    return-void
.end method
