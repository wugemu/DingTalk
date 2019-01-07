.class final Ldaa$4;
.super Ljava/lang/Object;
.source "UserTextViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldaa;->a(Landroid/widget/TextView;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/GestureDetector;

.field final synthetic b:Ldaa;


# direct methods
.method constructor <init>(Ldaa;Landroid/view/GestureDetector;)V
    .locals 0
    .param p1, "this$0"    # Ldaa;

    .prologue
    .line 241
    iput-object p1, p0, Ldaa$4;->b:Ldaa;

    iput-object p2, p0, Ldaa$4;->a:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 243
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 244
    iget-object v0, p0, Ldaa$4;->b:Ldaa;

    invoke-virtual {v0}, Ldaa;->p()V

    .line 248
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Ldaa$4;->b:Ldaa;

    invoke-static {v0}, Ldaa;->b(Ldaa;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Ldaa$4;->b:Ldaa;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ldaa;->a(Ldaa;Z)Z

    .line 251
    :cond_1
    iget-object v0, p0, Ldaa$4;->a:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 245
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 246
    :cond_3
    iget-object v0, p0, Ldaa$4;->b:Ldaa;

    invoke-virtual {v0}, Ldaa;->q()V

    goto :goto_0
.end method
