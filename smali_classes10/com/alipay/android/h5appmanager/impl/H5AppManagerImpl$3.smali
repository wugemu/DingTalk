.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->fetchAppList(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 578
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

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
    .line 581
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)V

    .line 583
    :try_start_0
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$400(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Lcom/alipay/android/h5appmanager/impl/H5AppService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iget-object v5, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$300(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/net/http/AndroidHttpClient;

    move-result-object v5

    invoke-static {}, Lcom/alipay/android/h5appmanager/H5AppManager;->getInstance()Lcom/alipay/android/h5appmanager/H5AppManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/alipay/android/h5appmanager/H5AppManager;->getServiceParams()Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/alipay/android/h5appmanager/impl/H5AppService;->getAllApps(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Landroid/net/http/AndroidHttpClient;Lcom/alipay/android/h5appmanager/impl/HpmServiceParams;)Lcom/alipay/android/h5appmanager/impl/H5AppList;

    move-result-object v1

    .line 584
    .local v1, "result":Lcom/alipay/android/h5appmanager/impl/H5AppList;
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$502(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;J)J

    .line 585
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    .line 586
    .local v2, "success":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 587
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3, v1}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$602(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/impl/H5AppList;)Lcom/alipay/android/h5appmanager/impl/H5AppList;

    .line 590
    :cond_0
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    if-eqz v3, :cond_1

    .line 591
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$900(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;

    invoke-direct {v4, p0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$1;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    .end local v1    # "result":Lcom/alipay/android/h5appmanager/impl/H5AppList;
    .end local v2    # "success":Z
    :cond_1
    :goto_1
    return-void

    .line 585
    .restart local v1    # "result":Lcom/alipay/android/h5appmanager/impl/H5AppList;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 605
    .end local v1    # "result":Lcom/alipay/android/h5appmanager/impl/H5AppList;
    :catch_0
    move-exception v0

    .line 606
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 607
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    if-eqz v3, :cond_1

    .line 608
    iget-object v3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v3}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$900(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;

    invoke-direct {v4, p0, v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;-><init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;Ljava/lang/Exception;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
