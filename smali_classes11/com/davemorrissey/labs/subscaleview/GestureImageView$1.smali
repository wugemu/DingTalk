.class final Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;
.super Ljava/lang/Object;
.source "GestureImageView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;


# direct methods
.method constructor <init>(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "message"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 271
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;I)I

    .line 273
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-virtual {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->performLongClick()Z

    .line 274
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-static {v0}, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->a(Lcom/davemorrissey/labs/subscaleview/GestureImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->b:Landroid/view/View$OnLongClickListener;

    iget-object v1, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    invoke-interface {v0, v1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c:Lhck;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/davemorrissey/labs/subscaleview/GestureImageView$1;->a:Lcom/davemorrissey/labs/subscaleview/GestureImageView;

    iget-object v0, v0, Lcom/davemorrissey/labs/subscaleview/GestureImageView;->c:Lhck;

    .line 1117
    iput-boolean v2, v0, Lhck;->a:Z

    .line 283
    :cond_0
    return v2
.end method
