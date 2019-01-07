.class final Lcom/im/av/view/WxAlertDialog$1;
.super Ljava/lang/Object;
.source "WxAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/im/av/view/WxAlertDialog;


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertDialog;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertDialog;

    .prologue
    .line 837
    iput-object p1, p0, Lcom/im/av/view/WxAlertDialog$1;->b:Lcom/im/av/view/WxAlertDialog;

    iput-object p2, p0, Lcom/im/av/view/WxAlertDialog$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 840
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 841
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 842
    .local v2, "y":I
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 843
    .local v0, "rect":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/im/av/view/WxAlertDialog$1;->a:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 844
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 845
    iget-object v3, p0, Lcom/im/av/view/WxAlertDialog$1;->b:Lcom/im/av/view/WxAlertDialog;

    invoke-virtual {v3}, Lcom/im/av/view/WxAlertDialog;->dismiss()V

    .line 847
    :cond_0
    const/4 v3, 0x0

    return v3
.end method
