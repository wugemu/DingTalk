.class final Ldeq$1;
.super Ljava/lang/Object;
.source "ChatGuidePresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldeq;


# direct methods
.method constructor <init>(Ldeq;)V
    .locals 0
    .param p1, "this$0"    # Ldeq;

    .prologue
    .line 92
    iput-object p1, p0, Ldeq$1;->a:Ldeq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0xa29

    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    .line 92
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/GuideChatEmotionObject;

    .line 1095
    iget-object v7, p0, Ldeq$1;->a:Ldeq;

    .line 2128
    if-eqz p1, :cond_0

    .line 2131
    iget-object v0, v7, Ldeq;->a:Ldep$b;

    invoke-interface {v0}, Ldep$b;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v8

    .line 2132
    if-eqz v8, :cond_0

    .line 2137
    invoke-static {p1}, Lckw;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2138
    const-class v0, Lcom/alibaba/wukong/im/MessageBuilder;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageBuilder;

    .line 2139
    const-wide/16 v4, 0x0

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/alibaba/wukong/im/MessageBuilder;->buildCustomMessageContent(IILjava/lang/String;JLjava/util/Map;)Lcom/alibaba/wukong/im/MessageContent$CustomMessageContent;

    move-result-object v1

    .line 2141
    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageBuilder;->buildMessage(Lcom/alibaba/wukong/im/MessageContent;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    .line 2143
    :try_start_0
    const-class v0, Lcom/alibaba/wukong/im/message/MessageImpl;

    const-string/jumbo v2, "mConversation"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2144
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 2145
    invoke-virtual {v0, v1, v8}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2151
    instance-of v0, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 2152
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    sget-object v2, Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;->AdsChatStyle:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    iput-object v2, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->msgDisplayType:Lcom/alibaba/android/dingtalkim/base/model/MsgDisplayType;

    move-object v0, v1

    .line 2153
    check-cast v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;

    iput-object p1, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkMessage;->mThirdPartyDo:Ljava/lang/Object;

    .line 2156
    invoke-interface {v1, v8, v10, v3}, Lcom/alibaba/wukong/im/Message;->sendToLocal(Lcom/alibaba/wukong/im/Conversation;ZLcom/alibaba/wukong/Callback;)V

    .line 2158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2159
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2160
    iget-object v1, v7, Ldeq;->a:Ldep$b;

    invoke-interface {v1}, Ldep$b;->I()Lcom/alibaba/wukong/im/MessageListener;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/MessageListener$DataType;->NORMAL:Lcom/alibaba/wukong/im/MessageListener$DataType;

    invoke-interface {v1, v0, v2}, Lcom/alibaba/wukong/im/MessageListener;->onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 2161
    iput-boolean v9, v7, Ldeq;->b:Z

    .line 2164
    invoke-static {v8}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 2165
    const-string/jumbo v1, "spm-url"

    const-string/jumbo v2, "a2o5v.12290095"

    const-string/jumbo v3, "welcome_card"

    invoke-static {v2, v3}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2166
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "Page_Chat_Detail"

    const-string/jumbo v3, "Expose-welcome_card"

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->exposureManual(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 2149
    :cond_0
    :goto_0
    return-void

    .line 2146
    :catch_0
    move-exception v0

    .line 2147
    const-string/jumbo v1, "im"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v4, "error="

    aput-object v4, v2, v10

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v9

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2148
    const-class v1, Ldfm;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3022
    const-string/jumbo v2, "im"

    invoke-static {v1, v0, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 105
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "handleGuide failed, code="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ", reason="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 101
    return-void
.end method
