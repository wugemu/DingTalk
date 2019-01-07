.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;
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

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;->val$e:Ljava/lang/Exception;

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
    .line 611
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$3$2;->val$e:Ljava/lang/Exception;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 612
    return-void
.end method
