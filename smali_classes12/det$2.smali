.class final Ldet$2;
.super Ljava/lang/Object;
.source "ChatMsgListGuideTipManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldet;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Handler;

.field final synthetic b:Ldet;


# direct methods
.method constructor <init>(Ldet;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Ldet;

    .prologue
    .line 158
    iput-object p1, p0, Ldet$2;->b:Ldet;

    iput-object p2, p0, Ldet$2;->a:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 161
    iget-object v0, p0, Ldet$2;->b:Ldet;

    iget-object v0, v0, Ldet;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldet$2;->b:Ldet;

    iget-object v0, v0, Ldet;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Ldet$2;->b:Ldet;

    iget-object v0, v0, Ldet;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Ldet$2;->b:Ldet;

    iget-object v0, v0, Ldet;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 164
    iget-object v0, p0, Ldet$2;->b:Ldet;

    invoke-static {v0}, Ldet;->a(Ldet;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Ldet$2;->a:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
