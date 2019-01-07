.class final Lcom/taobao/av/ui/view/AutoFocusAnimationView$1;
.super Ljava/lang/Object;
.source "AutoFocusAnimationView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/av/ui/view/AutoFocusAnimationView;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taobao/av/ui/view/AutoFocusAnimationView;


# direct methods
.method constructor <init>(Lcom/taobao/av/ui/view/AutoFocusAnimationView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView$1;->a:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

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
    .line 67
    iget-object v0, p0, Lcom/taobao/av/ui/view/AutoFocusAnimationView$1;->a:Lcom/taobao/av/ui/view/AutoFocusAnimationView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/taobao/av/ui/view/AutoFocusAnimationView;->setVisibility(I)V

    .line 68
    return-void
.end method
