.class Lcom/taobao/taolive/TaoLive$EventHandler;
.super Landroid/os/Handler;
.source "TaoLive.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/taolive/TaoLive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventHandler"
.end annotation


# instance fields
.field private mTaoLive:Lcom/taobao/taolive/TaoLive;

.field final synthetic this$0:Lcom/taobao/taolive/TaoLive;


# direct methods
.method public constructor <init>(Lcom/taobao/taolive/TaoLive;Lcom/taobao/taolive/TaoLive;Landroid/os/Looper;)V
    .locals 0
    .param p2, "tl"    # Lcom/taobao/taolive/TaoLive;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    .line 185
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    iput-object p2, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->mTaoLive:Lcom/taobao/taolive/TaoLive;

    .line 187
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown message type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    const-string/jumbo v1, "MEDIA_PREPARED"

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$100(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$100(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->mTaoLive:Lcom/taobao/taolive/TaoLive;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/taobao/taolive/TaoLive$OnPreparedListener;->onPrepared(Lcom/taobao/taolive/TaoLive;Z)V

    goto :goto_0

    .line 199
    :pswitch_2
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    const-string/jumbo v1, "MEDIA_PREPARE_FAILED"

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$100(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$100(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnPreparedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->mTaoLive:Lcom/taobao/taolive/TaoLive;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/taobao/taolive/TaoLive$OnPreparedListener;->onPrepared(Lcom/taobao/taolive/TaoLive;Z)V

    goto :goto_0

    .line 205
    :pswitch_3
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Error ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 206
    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x13

    if-eq v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/16 v1, 0x12

    if-ne v0, v1, :cond_2

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$200(Lcom/taobao/taolive/TaoLive;)V

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$300(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$300(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnErrorListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->mTaoLive:Lcom/taobao/taolive/TaoLive;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/taolive/TaoLive$OnErrorListener;->onError(Lcom/taobao/taolive/TaoLive;II)Z

    goto/16 :goto_0

    .line 216
    :pswitch_4
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Info ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taobao/taolive/TaoLive;->access$000(Lcom/taobao/taolive/TaoLive;Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$400(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$400(Lcom/taobao/taolive/TaoLive;)Lcom/taobao/taolive/TaoLive$OnInfoListener;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->mTaoLive:Lcom/taobao/taolive/TaoLive;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2, v3}, Lcom/taobao/taolive/TaoLive$OnInfoListener;->onInfo(Lcom/taobao/taolive/TaoLive;II)Z

    goto/16 :goto_0

    .line 223
    :pswitch_5
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$500(Lcom/taobao/taolive/TaoLive;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$500(Lcom/taobao/taolive/TaoLive;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v1}, Lcom/taobao/taolive/TaoLive;->access$600(Lcom/taobao/taolive/TaoLive;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/taobao/taolive/TaoLive$EventHandler;->this$0:Lcom/taobao/taolive/TaoLive;

    invoke-static {v0}, Lcom/taobao/taolive/TaoLive;->access$500(Lcom/taobao/taolive/TaoLive;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/16 :goto_0

    .line 191
    nop

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
