.class final Lbwv$1;
.super Landroid/os/Handler;
.source "FullPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbwv;


# direct methods
.method constructor <init>(Lbwv;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lbwv;
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 140
    iput-object p1, p0, Lbwv$1;->a:Lbwv;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 143
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 145
    :pswitch_0
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    .line 1439
    iget-object v2, v2, Lbwv;->p:Landroid/app/Activity;

    .line 145
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->a(Lbwv;)Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicCallingDialog;

    if-eqz v2, :cond_1

    .line 147
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->a(Lbwv;)Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    .line 149
    :cond_1
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->b(Lbwv;)Lbwt$a;

    move-result-object v2

    invoke-interface {v2}, Lbwt$a;->d()V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    .line 2439
    iget-object v2, v2, Lbwv;->p:Landroid/app/Activity;

    .line 153
    invoke-static {v2}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->a(Lbwv;)Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    move-result-object v2

    instance-of v2, v2, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicWaitingDialog;

    if-eqz v2, :cond_0

    .line 155
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->a(Lbwv;)Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/live/ui/linkmic/dialog/LinkMicDialog;->dismiss()V

    goto :goto_0

    .line 160
    :pswitch_2
    const/4 v0, 0x0

    .line 161
    .local v0, "loop":Z
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 162
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 164
    :cond_2
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->c(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 165
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->c(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->increaseFavorCount()V

    .line 167
    :cond_3
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->d(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 168
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->d(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorFrame;

    move-result-object v2

    invoke-static {}, Lbwr;->a()Lbwr;

    move-result-object v3

    invoke-virtual {v3}, Lbwr;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/taobao/taolive/sdk/ui/component/FavorFrame;->sendFavor(Ljava/lang/String;Z)V

    .line 170
    :cond_4
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->c(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 171
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->c(Lbwv;)Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/taobao/taolive/sdk/ui/component/FavorCountFrame;->startAnimator(Z)V

    .line 173
    :cond_5
    if-eqz v0, :cond_0

    .line 174
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 175
    .local v1, "msg1":Landroid/os/Message;
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    .line 176
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lbwv$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 182
    .end local v0    # "loop":Z
    .end local v1    # "msg1":Landroid/os/Message;
    :pswitch_3
    iget-object v2, p0, Lbwv$1;->a:Lbwv;

    invoke-static {v2}, Lbwv;->e(Lbwv;)V

    goto/16 :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
