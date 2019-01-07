.class final Lhhy$6;
.super Ljava/lang/Object;
.source "HpmAccessor.java"

# interfaces
.implements Lcom/alipay/android/h5appmanager/H5AppManager$SyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhhy;->g(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhhy;


# direct methods
.method constructor <init>(Lhhy;)V
    .locals 0
    .param p1, "this$0"    # Lhhy;

    .prologue
    .line 698
    iput-object p1, p0, Lhhy$6;->a:Lhhy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppInfo(Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 3
    .param p1, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 701
    const-string/jumbo v0, "HPMDATA"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sync callback:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/android/h5appmanager/AppInfo;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/h5appmanager/AppInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/alipay/android/h5appmanager/AppInfo;->extend_info:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void
.end method

.method public final onFail(Ljava/lang/Exception;Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    .prologue
    .line 706
    iget-object v0, p0, Lhhy$6;->a:Lhhy;

    invoke-static {v0}, Lhhy;->b(Lhhy;)Lhid;

    move-result-object v0

    invoke-virtual {v0, p2}, Lhid;->a(Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 707
    return-void
.end method

.method public final onSuccess(Lcom/alipay/android/h5appmanager/AppInfo;)V
    .locals 1
    .param p1, "appInfo"    # Lcom/alipay/android/h5appmanager/AppInfo;

    .prologue
    .line 711
    iget-object v0, p0, Lhhy$6;->a:Lhhy;

    invoke-static {v0}, Lhhy;->b(Lhhy;)Lhid;

    move-result-object v0

    invoke-virtual {v0, p1}, Lhid;->b(Lcom/alipay/android/h5appmanager/AppInfo;)V

    .line 712
    return-void
.end method
