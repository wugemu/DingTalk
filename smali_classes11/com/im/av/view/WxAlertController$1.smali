.class final Lcom/im/av/view/WxAlertController$1;
.super Ljava/lang/Object;
.source "WxAlertController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/im/av/view/WxAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/im/av/view/WxAlertController;


# direct methods
.method constructor <init>(Lcom/im/av/view/WxAlertController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/im/av/view/WxAlertController;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 130
    const/4 v0, 0x0

    .line 131
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 1057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->o:Landroid/widget/Button;

    .line 131
    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 2057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->q:Landroid/os/Message;

    .line 131
    if-eqz v1, :cond_2

    .line 132
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 3057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->q:Landroid/os/Message;

    .line 132
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    .line 138
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 144
    :cond_1
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 10057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->H:Landroid/os/Handler;

    .line 144
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 11057
    iget-object v3, v3, Lcom/im/av/view/WxAlertController;->d:Landroid/content/DialogInterface;

    .line 144
    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 145
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 146
    return-void

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 4057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->r:Landroid/widget/Button;

    .line 133
    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 5057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->t:Landroid/os/Message;

    .line 133
    if-eqz v1, :cond_3

    .line 134
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 6057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->t:Landroid/os/Message;

    .line 134
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0

    .line 135
    :cond_3
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 7057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->u:Landroid/widget/Button;

    .line 135
    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 8057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->w:Landroid/os/Message;

    .line 135
    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lcom/im/av/view/WxAlertController$1;->a:Lcom/im/av/view/WxAlertController;

    .line 9057
    iget-object v1, v1, Lcom/im/av/view/WxAlertController;->w:Landroid/os/Message;

    .line 136
    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    goto :goto_0
.end method
