.class final Ldrr$2;
.super Landroid/content/BroadcastReceiver;
.source "MessagePickMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldrr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldrr;


# direct methods
.method constructor <init>(Ldrr;)V
    .locals 0
    .param p1, "this$0"    # Ldrr;

    .prologue
    .line 118
    iput-object p1, p0, Ldrr$2;->a:Ldrr;

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
    .line 121
    if-nez p2, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "action_ding_create_result"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "key_ding_create_result_from"

    const/4 v1, -0x1

    .line 125
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string/jumbo v0, "key_ding_create_result_seed"

    const-wide/16 v2, -0x1

    .line 126
    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iget-object v2, p0, Ldrr$2;->a:Ldrr;

    .line 1033
    iget-wide v2, v2, Ldrr;->b:J

    .line 126
    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Ldrr$2;->a:Ldrr;

    .line 2033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Ldrr$2;->a:Ldrr;

    .line 3033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 128
    invoke-virtual {v0}, Ldru;->d()V

    .line 129
    iget-object v0, p0, Ldrr$2;->a:Ldrr;

    .line 4033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 4079
    iget-object v0, v0, Ldru;->a:Landroid/app/Activity;

    .line 129
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Ldrr$2;->a:Ldrr;

    .line 5033
    iget-object v0, v0, Ldrr;->a:Ldru;

    .line 5079
    iget-object v0, v0, Ldru;->a:Landroid/app/Activity;

    .line 130
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
