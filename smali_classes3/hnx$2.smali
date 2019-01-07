.class final Lhnx$2;
.super Ljava/lang/Object;
.source "MiniAppUcInitCallbackProviderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhnx;->preLoadAppX()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhnx;


# direct methods
.method constructor <init>(Lhnx;)V
    .locals 0
    .param p1, "this$0"    # Lhnx;

    .prologue
    .line 80
    iput-object p1, p0, Lhnx$2;->a:Lhnx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 85
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v1, "isTinyApp"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/appcenter/center/H5AppCenter;->initTinyAppRes(Landroid/os/Bundle;Z)V

    .line 89
    new-instance v1, Lhnx$2$1;

    invoke-direct {v1, p0}, Lhnx$2$1;-><init>(Lhnx$2;)V

    const-wide/16 v2, 0x3e8

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;J)V

    .line 108
    return-void
.end method
