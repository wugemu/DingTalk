.class final Lhlt$2;
.super Ljava/lang/Object;
.source "MiniappRuntime.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhlt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lhlt;


# direct methods
.method constructor <init>(Lhlt;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lhlt;

    .prologue
    .line 424
    iput-object p1, p0, Lhlt$2;->c:Lhlt;

    iput-object p2, p0, Lhlt$2;->a:Landroid/os/Bundle;

    iput-object p3, p0, Lhlt$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 427
    new-instance v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;

    invoke-direct {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;-><init>()V

    .line 428
    .local v0, "h5StartAppInfo":Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;
    iget-object v1, p0, Lhlt$2;->a:Landroid/os/Bundle;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->params:Landroid/os/Bundle;

    .line 429
    iget-object v1, p0, Lhlt$2;->b:Ljava/lang/String;

    iput-object v1, v0, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;->targetAppId:Ljava/lang/String;

    .line 430
    invoke-static {v0}, Lcom/alipay/mobile/nebula/appcenter/apphandler/H5AppHandler;->syncApp(Lcom/alipay/mobile/nebula/appcenter/apphandler/H5StartAppInfo;)V

    .line 431
    return-void
.end method
