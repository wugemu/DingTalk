.class final Lbwv$3;
.super Ljava/lang/Object;
.source "FullPlayerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwv;


# direct methods
.method constructor <init>(Lbwv;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;

    .prologue
    .line 244
    iput-object p1, p0, Lbwv$3;->a:Lbwv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x3

    .line 247
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 248
    .local v0, "action":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-ne v0, v2, :cond_1

    .line 249
    :cond_0
    iget-object v1, p0, Lbwv$3;->a:Lbwv;

    invoke-static {v1}, Lbwv;->f(Lbwv;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 251
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
