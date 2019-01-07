.class final Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$2;
.super Ljava/lang/Object;
.source "UCServiceWorkerProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;->clearServiceWorker(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$2;->b:Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider;

    iput-object p2, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 89
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/alipay/mobile/nebulauc/provider/UCServiceWorkerProvider$2;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uc/webview/export/extension/UCCore;->notifyCoreEvent(ILjava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method
