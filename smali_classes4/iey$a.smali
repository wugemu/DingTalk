.class final Liey$a;
.super Landroid/content/BroadcastReceiver;
.source "AVDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Liey;


# direct methods
.method constructor <init>(Liey;)V
    .locals 0
    .param p1, "this$0"    # Liey;

    .prologue
    .line 545
    iput-object p1, p0, Liey$a;->a:Liey;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 548
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 549
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    const/4 v1, 0x0

    .line 553
    .local v1, "isEarphone":Z
    const-string/jumbo v3, "state"

    invoke-virtual {p2, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 554
    .local v2, "state":I
    if-ne v2, v6, :cond_3

    .line 555
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3, v6}, Liey;->b(Liey;Z)Z

    .line 556
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-virtual {v3}, Liey;->c()V

    .line 557
    const/4 v1, 0x1

    .line 573
    :cond_2
    :goto_1
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 574
    move v0, v1

    .line 575
    .local v0, "earPhone":Z
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3}, Liey;->j(Liey;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Liey$a$1;

    invoke-direct {v4, p0, v0}, Liey$a$1;-><init>(Liey$a;Z)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 559
    .end local v0    # "earPhone":Z
    :cond_3
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3}, Liey;->h(Liey;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 561
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3}, Liey;->i(Liey;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3}, Liey;->i(Liey;)Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    move-result-object v3

    sget-object v4, Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;->EarPhone:Lcom/alibaba/wukong/openav/external/utils/VoiceModeManager$VoiceMode;

    if-ne v3, v4, :cond_4

    .line 562
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-virtual {v3}, Liey;->c()V

    .line 563
    const/4 v1, 0x1

    .line 569
    :goto_2
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-static {v3, v5}, Liey;->b(Liey;Z)Z

    goto :goto_1

    .line 565
    :cond_4
    iget-object v3, p0, Liey$a;->a:Liey;

    invoke-virtual {v3}, Liey;->d()V

    .line 566
    const/4 v1, 0x0

    goto :goto_2
.end method
