.class public final Ldkn;
.super Ljava/lang/Object;
.source "SendNameAppenderImpl.java"

# interfaces
.implements Lcom/alibaba/wukong/im/SendNameAppender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSendName(Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/Callback;)V
    .locals 8
    .param p1, "conversation"    # Lcom/alibaba/wukong/im/Conversation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/im/Conversation;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 19
    .local p2, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 49
    :goto_0
    return-void

    .line 23
    :cond_0
    if-nez p1, :cond_1

    .line 24
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1330
    :cond_1
    if-nez p1, :cond_2

    .line 1331
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_SINGLE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    .line 29
    .local v6, "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    :goto_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a()Lcom/alibaba/android/dingtalk/userbase/NameInterface;

    move-result-object v0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Ldjl;->r(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v2

    .line 30
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    new-instance v7, Ldkn$1;

    invoke-direct {v7, p0, p2}, Ldkn$1;-><init>(Ldkn;Lcom/alibaba/wukong/Callback;)V

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/alibaba/android/dingtalk/userbase/NameInterface;->a(Ljava/lang/String;JJLcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0

    .line 1333
    .end local v6    # "nameScheme":Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;
    :cond_2
    const/4 v0, 0x1

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x3

    .line 1334
    invoke-interface {p1}, Lcom/alibaba/wukong/im/Conversation;->type()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 1335
    :cond_3
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->CHAT_SINGLE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_1

    .line 1337
    :cond_4
    invoke-static {p1}, Ldjl;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_NORMAL:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_1

    .line 1339
    :cond_5
    invoke-static {p1}, Ldjl;->l(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_ENTERPRISE_ONLY_REAL_NAME:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_1

    :cond_6
    sget-object v6, Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;->AT_CONTENT_GROUP_ENTERPRISE:Lcom/alibaba/android/dingtalkbase/utils/DingtalkBaseConsts$NAME_SCHEME;

    goto :goto_1
.end method
