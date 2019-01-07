.class final Lciu$1;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lciu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lciu;


# direct methods
.method constructor <init>(Lciu;)V
    .locals 0
    .param p1, "this$0"    # Lciu;

    .prologue
    .line 88
    iput-object p1, p0, Lciu$1;->a:Lciu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lciu$1;->a:Lciu;

    invoke-static {v1}, Lciu;->a(Lciu;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lciu$a;

    .line 92
    .local v0, "lastInfo":Lciu$a;
    if-eqz v0, :cond_1

    .line 93
    iget-object v1, p0, Lciu$1;->a:Lciu;

    invoke-static {v1}, Lciu;->a(Lciu;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 94
    iget-object v1, p0, Lciu$1;->a:Lciu;

    invoke-static {v1}, Lciu;->b(Lciu;)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lciu$1;->a:Lciu;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-static {v1, v2}, Lciu;->a(Lciu;Landroid/os/Handler;)Landroid/os/Handler;

    .line 97
    :cond_0
    iget-object v1, p0, Lciu$1;->a:Lciu;

    invoke-static {v1}, Lciu;->b(Lciu;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lciu$1$1;

    invoke-direct {v2, p0, v0}, Lciu$1$1;-><init>(Lciu$1;Lciu$a;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    :cond_1
    const/4 v1, 0x1

    return v1
.end method
