.class final Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$2;
.super Ljava/lang/Object;
.source "BubbleContainer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;


# direct methods
.method constructor <init>(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$2;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer$2;->a:Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;->a(Lcom/alibaba/weex/plugin/gcanvas/bubble/BubbleContainer;I)I

    .line 166
    const/4 v0, 0x0

    return v0
.end method
