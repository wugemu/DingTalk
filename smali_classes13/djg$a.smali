.class final Ldjg$a;
.super Ldju$a;
.source "ConversationChangeMaid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldjg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Ldjg;

.field private c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ldjg;)V
    .locals 1
    .param p1, "this$0"    # Ldjg;

    .prologue
    .line 143
    iput-object p1, p0, Ldjg$a;->a:Ldjg;

    invoke-direct {p0}, Ldju$a;-><init>()V

    .line 145
    new-instance v0, Ldjg$a$1;

    invoke-direct {v0, p0}, Ldjg$a$1;-><init>(Ldjg$a;)V

    iput-object v0, p0, Ldjg$a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 4
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 158
    iget-object v0, p0, Ldjg$a;->a:Ldjg;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ldjg;->a(Ldjg;Z)Z

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Ldjg$a;->a:Ldjg;

    invoke-static {v2}, Ldjg;->f(Ldjg;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Ldjg$a;->a:Ldjg;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Ldjg;->a(Ldjg;J)J

    .line 162
    iget-object v0, p0, Ldjg$a;->a:Ldjg;

    invoke-static {v0}, Ldjg;->g(Ldjg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldjg$a;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Ldjg$a;->a:Ldjg;

    invoke-static {v0}, Ldjg;->g(Ldjg;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Ldjg$a;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 166
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Ldju$a;->onScroll(Landroid/widget/AbsListView;III)V

    .line 167
    return-void
.end method
