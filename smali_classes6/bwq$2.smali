.class public final Lbwq$2;
.super Lbts;
.source "LivePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic b:Lbwq;


# direct methods
.method public constructor <init>(Lbwq;Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lbwq;
    .param p2, "callback"    # Landroid/view/Window$Callback;

    .prologue
    .line 221
    iput-object p1, p0, Lbwq$2;->b:Lbwq;

    invoke-direct {p0, p2}, Lbts;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 226
    iget-object v1, p0, Lbwq$2;->b:Lbwq;

    invoke-static {v1}, Lbwq;->c(Lbwq;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lbwq$2;->b:Lbwq;

    invoke-static {v1}, Lbwq;->e(Lbwq;)Lbwv;

    move-result-object v1

    iget-object v2, p0, Lbwq$2;->b:Lbwq;

    invoke-static {v2}, Lbwq;->d(Lbwq;)Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lbwv;->a(Landroid/view/ViewParent;Z)V

    .line 231
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lbts;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
