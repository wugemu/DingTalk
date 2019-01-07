.class final Lbxo$9;
.super Lbtv;
.source "AnchorPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbxo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbxo;


# direct methods
.method constructor <init>(Lbxo;)V
    .locals 0
    .param p1, "this$0"    # Lbxo;

    .prologue
    .line 284
    iput-object p1, p0, Lbxo$9;->a:Lbxo;

    invoke-direct {p0}, Lbtv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/wukong/im/Conversation$ConversationStatus;)V
    .locals 5
    .param p1, "status"    # Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 325
    if-nez p1, :cond_0

    .line 345
    :goto_0
    return-void

    .line 328
    :cond_0
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v0

    invoke-virtual {v0}, Lbtq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 330
    const-string/jumbo v0, "receiveEndMessage, live uuid is empty"

    .line 9013
    const-string/jumbo v1, "live"

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 333
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "receiveConversationStatus="

    aput-object v1, v0, v3

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10013
    const-string/jumbo v1, "live"

    invoke-static {v1, v4, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    sget-object v0, Lbxo$3;->a:[I

    invoke-virtual {p1}, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 336
    :pswitch_0
    iget-object v0, p0, Lbxo$9;->a:Lbxo;

    .line 10059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 336
    sget v1, Lbtp$g;->dt_lv_live_stop_by_disbanded:I

    invoke-interface {v0, v1, v3}, Lbxn$b;->a(IZ)V

    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lbxo$9;->a:Lbxo;

    .line 11059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 339
    sget v1, Lbtp$g;->dt_lv_live_stop_by_kicked_out:I

    invoke-interface {v0, v1, v3}, Lbxn$b;->a(IZ)V

    goto :goto_0

    .line 342
    :pswitch_2
    iget-object v0, p0, Lbxo$9;->a:Lbxo;

    .line 12059
    iget-object v0, v0, Lbxo;->a:Lbxn$b;

    .line 342
    sget v1, Lbtp$g;->dt_lv_live_stop_by_quit:I

    invoke-interface {v0, v1, v3}, Lbxn$b;->a(IZ)V

    goto :goto_0

    .line 334
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)V
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "message"    # Lcom/alibaba/wukong/im/Message;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 287
    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    if-nez v3, :cond_1

    .line 321
    :cond_0
    :goto_0
    return-void

    .line 290
    :cond_1
    invoke-static {}, Lbtq;->a()Lbtq;

    move-result-object v3

    invoke-virtual {v3}, Lbtq;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 292
    const-string/jumbo v2, "receiveEndMessage, live uuid is empty"

    .line 1013
    const-string/jumbo v3, "live"

    invoke-static {v3, v6, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 295
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 296
    .local v0, "context":Landroid/content/Context;
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    .line 297
    .local v1, "msgCid":Ljava/lang/String;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "receiveEndMessage, action="

    aput-object v5, v3, v2

    aput-object p1, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2013
    const-string/jumbo v5, "live"

    invoke-static {v5, v6, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v3, p0, Lbxo$9;->e:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 300
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_3
    move v2, v3

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 308
    iget-object v2, p0, Lbxo$9;->a:Lbxo;

    .line 4059
    iget-object v2, v2, Lbxo;->a:Lbxn$b;

    .line 308
    invoke-interface {v2, v6, v4}, Lbxn$b;->a(Lcom/alibaba/android/dingtalk/livebase/model/LiveStatisticsObject;Z)V

    goto :goto_0

    .line 300
    :sswitch_0
    const-string/jumbo v5, "5"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "9"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    goto :goto_1

    .line 302
    :pswitch_0
    iget-object v2, p0, Lbxo$9;->a:Lbxo;

    .line 2059
    iget-object v2, v2, Lbxo;->a:Lbxn$b;

    .line 302
    sget v3, Lbtp$g;->dt_lv_group_owner_has_stop_live:I

    invoke-interface {v2, v3, v4}, Lbxn$b;->a(IZ)V

    goto :goto_0

    .line 305
    :pswitch_1
    iget-object v2, p0, Lbxo$9;->a:Lbxo;

    .line 3059
    iget-object v2, v2, Lbxo;->a:Lbxn$b;

    .line 305
    sget v3, Lbtp$g;->dt_lv_live_stop_by_violation:I

    invoke-interface {v2, v3, v4}, Lbxn$b;->a(IZ)V

    goto/16 :goto_0

    .line 312
    :cond_4
    iget-object v3, p0, Lbxo$9;->a:Lbxo;

    .line 5059
    iget-object v3, v3, Lbxo;->a:Lbxn$b;

    .line 312
    invoke-interface {v3}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 313
    iget-object v3, p0, Lbxo$9;->a:Lbxo;

    .line 6059
    iget-object v3, v3, Lbxo;->a:Lbxn$b;

    .line 313
    invoke-interface {v3}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLiveLinkCids()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 314
    iget-object v3, p0, Lbxo$9;->a:Lbxo;

    .line 7059
    iget-object v3, v3, Lbxo;->a:Lbxn$b;

    .line 314
    invoke-interface {v3}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v3

    invoke-virtual {v3}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLiveLinkCids()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 317
    :cond_5
    iget-object v3, p0, Lbxo$9;->a:Lbxo;

    .line 8059
    iget-object v3, v3, Lbxo;->a:Lbxn$b;

    .line 317
    invoke-interface {v3}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v3

    sget v5, Lbtp$g;->dt_lv_link_live_end:I

    new-array v4, v4, [Ljava/lang/Object;

    .line 318
    invoke-interface {p2}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v6

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    .line 317
    invoke-virtual {v0, v5, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/taobao/taolive/sdk/component/ChatFrame;->addMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    nop

    :sswitch_data_0
    .sparse-switch
        0x35 -> :sswitch_0
        0x39 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 2
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 349
    iget-object v1, p0, Lbxo$9;->a:Lbxo;

    .line 13059
    iget-object v1, v1, Lbxo;->a:Lbxn$b;

    .line 349
    invoke-interface {v1}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 351
    .local v0, "linkCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v1, p0, Lbxo$9;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 349
    .end local v0    # "linkCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lbxo$9;->a:Lbxo;

    .line 14059
    iget-object v1, v1, Lbxo;->a:Lbxn$b;

    .line 350
    invoke-interface {v1}, Lbxn$b;->f()Lcom/taobao/taolive/sdk/component/ChatFrame;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taobao/taolive/sdk/component/ChatFrame;->getLiveLinkCids()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 351
    .restart local v0    # "linkCids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
