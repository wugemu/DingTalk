.class final Ldgq$1;
.super Ljava/lang/Object;
.source "ChatDetailRobotMarkdownViewHolder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldgq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldgq;


# direct methods
.method constructor <init>(Ldgq;)V
    .locals 0
    .param p1, "this$0"    # Ldgq;

    .prologue
    .line 68
    iput-object p1, p0, Ldgq$1;->a:Ldgq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 71
    iget-object v0, p0, Ldgq$1;->a:Ldgq;

    .line 1026
    iget-object v0, v0, Ldgq;->n:Lga;

    .line 71
    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Ldgq$1;->a:Ldgq;

    .line 2026
    iget-object v0, v0, Ldgq;->n:Lga;

    .line 72
    invoke-virtual {v0, p2}, Lga;->a(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 74
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
