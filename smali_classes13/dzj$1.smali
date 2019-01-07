.class final Ldzj$1;
.super Landroid/content/BroadcastReceiver;
.source "VoiceNotifyImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldzj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldzj;


# direct methods
.method constructor <init>(Ldzj;)V
    .locals 0
    .param p1, "this$0"    # Ldzj;

    .prologue
    .line 113
    iput-object p1, p0, Ldzj$1;->a:Ldzj;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 116
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v2, "im_action_click_voice_record_notify"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 119
    const-string/jumbo v2, "url"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "url":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 121
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v2

    iget-object v3, p0, Ldzj$1;->a:Ldzj;

    .line 1026
    iget-object v3, v3, Ldzj;->a:Landroid/content/Context;

    .line 121
    const-string/jumbo v4, ""

    invoke-virtual {v2, v3, v1, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-void
.end method
