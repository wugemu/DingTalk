.class final Leep$5;
.super Landroid/content/BroadcastReceiver;
.source "OAExpandHeaderDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Leep;


# direct methods
.method constructor <init>(Leep;)V
    .locals 0
    .param p1, "this$0"    # Leep;

    .prologue
    .line 331
    iput-object p1, p0, Leep$5;->a:Leep;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 334
    iget-object v0, p0, Leep$5;->a:Leep;

    iget-object v1, p0, Leep$5;->a:Leep;

    invoke-static {v1}, Leep;->b(Leep;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Leep;->a(J)V

    .line 335
    return-void
.end method
