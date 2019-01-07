.class final Ldvf$1;
.super Landroid/content/BroadcastReceiver;
.source "ForwardCombineSelectHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldvf;


# direct methods
.method constructor <init>(Ldvf;)V
    .locals 0
    .param p1, "this$0"    # Ldvf;

    .prologue
    .line 59
    iput-object p1, p0, Ldvf$1;->a:Ldvf;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "com.workapp.conversation.FORWARD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    iget-object v1, p0, Ldvf$1;->a:Ldvf;

    invoke-virtual {v1, p2}, Ldvf;->a(Landroid/content/Intent;)V

    .line 70
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    const-string/jumbo v1, "intent_action_dialog_confirm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    iget-object v1, p0, Ldvf$1;->a:Ldvf;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ldvf;->a(Z)V

    goto :goto_0

    .line 67
    :cond_2
    const-string/jumbo v1, "intent_action_dialog_cancel"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v1, p0, Ldvf$1;->a:Ldvf;

    iget-object v1, v1, Ldvf;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method
