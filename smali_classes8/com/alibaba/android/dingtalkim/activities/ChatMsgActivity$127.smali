.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lblc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lblc",
        "<",
        "Lblg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 4647
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4647
    check-cast p1, Lblg;

    .line 5650
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6035
    iget-object v0, p1, Lblg;->a:Ljava/lang/String;

    .line 5651
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->Z()Lcug;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7035
    iget-object v0, p1, Lblg;->a:Ljava/lang/String;

    .line 5652
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7043
    iget-object v2, p1, Lblg;->b:Ljava/lang/String;

    .line 5654
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7051
    iget-object v0, p1, Lblg;->c:Ljava/lang/String;

    .line 5656
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 7059
    iget-object v0, p1, Lblg;->d:Ljava/lang/String;

    .line 5657
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 5658
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8051
    iget-object v3, p1, Lblg;->c:Ljava/lang/String;

    .line 5659
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 5660
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v3, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 5661
    invoke-interface {v0, v1, v3}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    .line 5663
    new-instance v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;-><init>()V

    .line 5664
    new-array v0, v6, [Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    iput-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    .line 5665
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    new-instance v4, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;-><init>()V

    aput-object v4, v0, v5

    .line 5666
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->loc:I

    .line 5667
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    .line 9051
    iget-object v2, p1, Lblg;->c:Ljava/lang/String;

    .line 5667
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->len:I

    .line 9059
    iget-object v0, p1, Lblg;->d:Ljava/lang/String;

    .line 5668
    const-string/jumbo v2, "dingtalk://dingtalkclient/page/group_invite"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5669
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    const/16 v2, 0x2714

    iput v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    .line 5674
    :goto_0
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    .line 10059
    iget-object v2, p1, Lblg;->d:Ljava/lang/String;

    .line 5674
    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->url:Ljava/lang/String;

    .line 5675
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    const-string/jumbo v2, "#1fa3ff"

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->color:Ljava/lang/String;

    .line 10067
    iget-boolean v0, p1, Lblg;->e:Z

    .line 5676
    if-eqz v0, :cond_3

    .line 5677
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    const-wide/16 v4, 0x0

    .line 5679
    invoke-static {v3}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    .line 5678
    invoke-interface {v0, v1, v4, v5, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;JLjava/util/Map;)Lcom/alibaba/wukong/im/Message;

    .line 11067
    :cond_0
    :goto_1
    iget-boolean v0, p1, Lblg;->e:Z

    .line 5699
    if-eqz v0, :cond_5

    .line 5700
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V

    :cond_1
    :goto_2
    return-void

    .line 5671
    :cond_2
    iget-object v0, v3, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkDo;->links:[Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;

    aget-object v0, v0, v5

    iput v6, v0, Lcom/alibaba/android/dingtalkim/base/model/SystemLinkElementDo;->action:I

    goto :goto_0

    .line 5681
    :cond_3
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    .line 5683
    :try_start_0
    const-class v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    const-string/jumbo v2, "mThirdPartyDo"

    .line 5684
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5685
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5686
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5687
    :catch_0
    move-exception v0

    .line 5688
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 5693
    :cond_4
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 5694
    invoke-interface {v0, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->buildTextMessage(Ljava/lang/String;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 5695
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    sget-object v2, Lcom/alibaba/wukong/im/Message$CreatorType;->SYSTEM:Lcom/alibaba/wukong/im/Message$CreatorType;

    .line 5696
    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/MessageBuilder;->appendAttributes(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/im/Message$CreatorType;)Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 5703
    :cond_5
    :try_start_1
    const-class v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v2, "mConversation"

    .line 5704
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 5705
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 5706
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 5710
    :goto_3
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 5711
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->System:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    .line 5713
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_1

    .line 5714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5715
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5716
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$127;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->p:Lcom/alibaba/wukong/im/MessageListener;

    sget-object v2, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    goto :goto_2

    .line 5707
    :catch_1
    move-exception v0

    .line 5708
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method
