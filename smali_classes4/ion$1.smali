.class final Lion$1;
.super Ljava/lang/Object;
.source "H5LoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lion;->getContentView(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lion;


# direct methods
.method constructor <init>(Lion;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lion;

    .prologue
    .line 53
    iput-object p1, p0, Lion$1;->b:Lion;

    iput-object p2, p0, Lion$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 56
    iget-object v1, p0, Lion$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    invoke-static {}, Lcom/alipay/mobile/nebula/util/H5Utils;->isInTinyProcess()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 58
    const-class v1, Lcom/alipay/mobile/h5container/service/H5EventHandlerService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/nebula/util/H5Utils;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/nebula/process/H5EventHandler;

    .line 59
    .local v0, "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    if-eqz v0, :cond_0

    .line 60
    iget-object v1, p0, Lion$1;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/nebula/process/H5EventHandler;->moveTaskToBackAndStop(Landroid/app/Activity;Z)V

    .line 66
    .end local v0    # "h5EventHandlerService":Lcom/alipay/mobile/nebula/process/H5EventHandler;
    :cond_0
    :goto_0
    const-string/jumbo v1, "H5LoadingView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "isFinishing "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lion$1;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alipay/mobile/nebula/util/H5Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    return-void

    .line 63
    :cond_2
    iget-object v1, p0, Lion$1;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
