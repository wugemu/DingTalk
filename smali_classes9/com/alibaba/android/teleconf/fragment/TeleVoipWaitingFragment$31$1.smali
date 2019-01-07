.class final Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;
.super Ljava/lang/Object;
.source "TeleVoipWaitingFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    .prologue
    .line 516
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 519
    new-instance v7, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;

    invoke-direct {v7}, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;-><init>()V

    .line 520
    .local v7, "sendMessageObject":Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;
    iput v5, v7, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageType:I

    .line 521
    packed-switch p2, :pswitch_data_0

    .line 566
    :goto_0
    return-void

    .line 523
    :pswitch_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_voip_callee_sendmsg1_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_tele_msg_reply_one:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 525
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 526
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalInconvenience:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    goto :goto_0

    .line 529
    :pswitch_1
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_voip_callee_sendmsg2_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_tele_msg_reply_two:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 532
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 533
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalArriveImmediately:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    goto :goto_0

    .line 536
    :pswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_voip_callee_sendmsg3_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 538
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Leuj$l;->dt_tele_msg_reply_three:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;->messageData:Ljava/lang/Object;

    .line 539
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    invoke-static {v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v7, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(JLcom/alibaba/android/dingtalkim/base/IMInterface$SendMessageObject;Lcma;)V

    .line 540
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_SignalCallbackLater:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    goto/16 :goto_0

    .line 543
    :pswitch_3
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_voip_callee_sendmsg4_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 545
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    sget-object v1, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Err_NoErr:Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;

    invoke-virtual {v1}, Lcom/alibaba/wukong/openav/external/AVError$ErrorCode;->Value()I

    move-result v1

    invoke-static {v0, v9, v1}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;ZI)V

    .line 546
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v1, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;)V

    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    new-array v6, v5, [Ljava/lang/Long;

    iget-object v8, p0, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31$1;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;

    iget-object v8, v8, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment$31;->a:Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;

    .line 563
    invoke-static {v8}, Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;->u(Lcom/alibaba/android/teleconf/fragment/TeleVoipWaitingFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v9

    .line 546
    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/ConversationService;->createConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;I[Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
