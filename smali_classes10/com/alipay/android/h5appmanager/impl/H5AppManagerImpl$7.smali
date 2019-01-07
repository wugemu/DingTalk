.class Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;
.super Ljava/lang/Object;
.source "H5AppManagerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;->downloadAndInstallApp(Lcom/alipay/android/h5appmanager/AppInfo;Ljava/io/File;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/String;)Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$DownloadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

.field final synthetic val$app:Lcom/alipay/android/h5appmanager/AppInfo;

.field final synthetic val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

.field final synthetic val$e:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    .prologue
    .line 1486
    iput-object p1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->this$0:Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl;

    iput-object p2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iput-object p3, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$e:Ljava/lang/Exception;

    iput-object p4, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

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
    .line 1489
    iget-object v0, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$cb:Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;

    iget-object v1, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$e:Ljava/lang/Exception;

    iget-object v2, p0, Lcom/alipay/android/h5appmanager/impl/H5AppManagerImpl$7;->val$app:Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-interface {v0, v1, v2}, Lcom/alipay/android/h5appmanager/H5AppManager$RequestCallback;->onDone(Ljava/lang/Exception;Ljava/lang/Object;)V

    .line 1490
    return-void
.end method
