.class Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;
.super Ljava/lang/Object;
.source "H5Activity.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/data/H5ParamHolder$PageParamListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/ui/H5Activity;->initPageParams()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageParam(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;->this$0:Lcom/alipay/mobile/nebulacore/ui/H5Activity;

    invoke-virtual {v0}, Lcom/alipay/mobile/nebulacore/ui/H5Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    :goto_0
    return-void

    .line 434
    :cond_0
    new-instance v0, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/nebulacore/ui/H5Activity$3$1;-><init>(Lcom/alipay/mobile/nebulacore/ui/H5Activity$3;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/alipay/mobile/nebula/util/H5Utils;->runOnMain(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
