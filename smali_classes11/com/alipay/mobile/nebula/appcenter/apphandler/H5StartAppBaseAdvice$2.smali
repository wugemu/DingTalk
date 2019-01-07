.class Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;
.super Ljava/lang/Object;
.source "H5StartAppBaseAdvice.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;->onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

.field final synthetic val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;->this$0:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice;

    iput-object p2, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppBaseAdvice$2;->val$h5StartAppInfo:Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-static {v1}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "H5StartAppAdvice"

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebula/util/H5Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
