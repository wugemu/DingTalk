.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->requestUpdateAllApp(Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$appsToUpdate:Ljava/util/List;

.field final synthetic val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/List;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 1596
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->val$appsToUpdate:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

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
    .line 1599
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    invoke-static {v0}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$200(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;)V

    .line 1600
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->val$appsToUpdate:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$10;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->access$1800(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Ljava/util/Collection;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;)V

    .line 1601
    return-void
.end method
