.class final Lbtw$3;
.super Landroid/content/BroadcastReceiver;
.source "ViewerFloatWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtw;


# direct methods
.method constructor <init>(Lbtw;)V
    .locals 0
    .param p1, "this$0"    # Lbtw;

    .prologue
    .line 199
    iput-object p1, p0, Lbtw$3;->a:Lbtw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 202
    invoke-static {}, Lbws;->a()Lbws;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbws;->c(Z)V

    .line 203
    return-void
.end method
