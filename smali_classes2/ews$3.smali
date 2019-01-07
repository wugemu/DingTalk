.class final Lews$3;
.super Landroid/content/BroadcastReceiver;
.source "TeleFloatingConfManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lews;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lews;


# direct methods
.method constructor <init>(Lews;)V
    .locals 0
    .param p1, "this$0"    # Lews;

    .prologue
    .line 172
    iput-object p1, p0, Lews$3;->a:Lews;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 175
    if-nez p2, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "com.workapp.teleonf.hangup"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 180
    const-string/jumbo v2, "calling_operation"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 181
    .local v1, "state":I
    if-nez v1, :cond_2

    .line 182
    iget-object v2, p0, Lews$3;->a:Lews;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lews;->a(Lews;Z)V

    goto :goto_0

    .line 183
    :cond_2
    if-ne v1, v4, :cond_0

    .line 184
    iget-object v2, p0, Lews$3;->a:Lews;

    invoke-static {v2, v4}, Lews;->a(Lews;Z)V

    goto :goto_0

    .line 186
    .end local v1    # "state":I
    :cond_3
    const-string/jumbo v2, "com.workapp.teleonf.phonecall.ringing"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lews$3;->a:Lews;

    invoke-static {v2, v4}, Lews;->a(Lews;Z)V

    goto :goto_0
.end method
