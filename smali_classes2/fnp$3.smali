.class final Lfnp$3;
.super Landroid/content/BroadcastReceiver;
.source "AddExternalMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfnp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfnp;


# direct methods
.method constructor <init>(Lfnp;)V
    .locals 0
    .param p1, "this$0"    # Lfnp;

    .prologue
    .line 157
    iput-object p1, p0, Lfnp$3;->a:Lfnp;

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
    .line 160
    iget-object v4, p0, Lfnp$3;->a:Lfnp;

    invoke-static {v4}, Lfnp;->e(Lfnp;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "activity_identify"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 165
    .local v1, "flag":Ljava/lang/String;
    invoke-static {}, Lfnp;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const-string/jumbo v4, "com.workapp.recognize.card.from.camera"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    const-string/jumbo v4, "recognize_card_result"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "result":Ljava/lang/String;
    const-string/jumbo v4, "media_id"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 169
    .local v2, "mediaId":Ljava/lang/String;
    iget-object v4, p0, Lfnp$3;->a:Lfnp;

    invoke-static {v4, v3, v2}, Lfnp;->a(Lfnp;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
