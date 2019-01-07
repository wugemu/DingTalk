.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->onRequestFinsh(Lcom/alibaba/doraemon/request/Request;Lcom/alibaba/doraemon/request/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

.field final synthetic val$percent:I


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

    .prologue
    .line 1241
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

    iput p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;->val$percent:I

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
    .line 1244
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

    iget-object v0, v0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;->this$1:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    iget-object v1, v1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    iget v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$5$1;->val$percent:I

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onProgressUpdated(Ljava/lang/String;I)V

    .line 1245
    return-void
.end method
