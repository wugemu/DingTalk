.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    .prologue
    .line 591
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 595
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    iget-object v3, v3, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v6, v4, v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$700(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/lang/String;J)Lcom/alipay/android/h5appmanager/AppInfo;

    .line 596
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    iget-object v3, v3, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$800(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 597
    .local v1, "apps":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alipay/android/h5appmanager/AppInfo;>;"
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/h5appmanager/AppInfo;

    .line 599
    .local v0, "app":Lcom/alipay/android/h5appmanager/AppInfo;
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 601
    .end local v0    # "app":Lcom/alipay/android/h5appmanager/AppInfo;
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    iget-object v3, v3, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    invoke-interface {v3, v6, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 602
    return-void
.end method
