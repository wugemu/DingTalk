.class final Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;
.super Ljava/lang/Object;
.source "H5PerformanceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils;->takeScreenShot(Liop;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$canvas:Landroid/graphics/Canvas;

.field final synthetic val$cv:Landroid/os/ConditionVariable;

.field final synthetic val$pageRootView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/graphics/Canvas;Landroid/os/ConditionVariable;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$pageRootView:Landroid/view/View;

    iput-object p2, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$canvas:Landroid/graphics/Canvas;

    iput-object p3, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$cv:Landroid/os/ConditionVariable;

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
    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$pageRootView:Landroid/view/View;

    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/dev/trace/H5PerformanceUtils$1;->val$cv:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 57
    return-void
.end method
