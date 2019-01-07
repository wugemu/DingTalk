.class final Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;
.super Ljava/lang/Object;
.source "NewSpreadView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/animation/ObjectAnimator;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;


# direct methods
.method constructor <init>(Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;Landroid/animation/ObjectAnimator;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;->c:Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView;

    iput-object p2, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;->a:Landroid/animation/ObjectAnimator;

    iput-object p3, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;->b:Landroid/widget/ImageView;

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
    .line 84
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;->a:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 85
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/device/beacon/NewSpreadView$1;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    return-void
.end method
