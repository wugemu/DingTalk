.class final Lfbw$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplayLatestPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfbw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lfbw;


# direct methods
.method constructor <init>(Lfbw;)V
    .locals 0
    .param p1, "this$0"    # Lfbw;

    .prologue
    .line 74
    iput-object p1, p0, Lfbw$2;->a:Lfbw;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 77
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const-string/jumbo v2, "circle_on_receive_notice_num"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 83
    const-string/jumbo v2, "circle_on_receive_notice_num"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 84
    .local v1, "num":I
    iget-object v2, p0, Lfbw$2;->a:Lfbw;

    .line 1025
    iget-object v2, v2, Lfbw;->b:Lfby;

    .line 84
    invoke-interface {v2, v1}, Lfby;->a(I)V

    goto :goto_0

    .line 85
    .end local v1    # "num":I
    :cond_2
    const-string/jumbo v2, "circle_on_clear_notice_num"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    iget-object v2, p0, Lfbw$2;->a:Lfbw;

    .line 2025
    iget-object v2, v2, Lfbw;->b:Lfby;

    .line 86
    invoke-interface {v2}, Lfby;->b()V

    goto :goto_0

    .line 87
    :cond_3
    const-string/jumbo v2, "User_On_Clear_Latest_Red_Dot"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    iget-object v2, p0, Lfbw$2;->a:Lfbw;

    .line 3025
    iget-object v2, v2, Lfbw;->b:Lfby;

    .line 88
    invoke-interface {v2}, Lfby;->a()V

    goto :goto_0
.end method
