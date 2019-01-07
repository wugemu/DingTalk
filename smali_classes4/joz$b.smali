.class final Ljoz$b;
.super Landroid/taobao/atlas/runtime/BundleLifecycleHandler;
.source "HotPatchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljoz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:I

.field b:Lcom/alipay/euler/andfix/patch/Patch;

.field final synthetic c:Ljoz;


# direct methods
.method constructor <init>(Ljoz;Lcom/alipay/euler/andfix/patch/Patch;)V
    .locals 1
    .param p2, "patch"    # Lcom/alipay/euler/andfix/patch/Patch;

    .prologue
    .line 1003
    iput-object p1, p0, Ljoz$b;->c:Ljoz;

    invoke-direct {p0}, Landroid/taobao/atlas/runtime/BundleLifecycleHandler;-><init>()V

    .line 1000
    const/4 v0, 0x0

    iput v0, p0, Ljoz$b;->a:I

    .line 1004
    iput-object p2, p0, Ljoz$b;->b:Lcom/alipay/euler/andfix/patch/Patch;

    .line 1005
    return-void
.end method
