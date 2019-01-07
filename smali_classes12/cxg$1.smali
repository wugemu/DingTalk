.class final Lcxg$1;
.super Ljava/lang/Object;
.source "SessionItemHolder.java"

# interfaces
.implements Lcnq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

.field final synthetic b:Lcxg;


# direct methods
.method constructor <init>(Lcxg;Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;)V
    .locals 0
    .param p1, "this$0"    # Lcxg;

    .prologue
    .line 451
    iput-object p1, p0, Lcxg$1;->b:Lcxg;

    iput-object p2, p0, Lcxg$1;->a:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcxg$1;->b:Lcxg;

    iget-object v0, v0, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcxg$1;->b:Lcxg;

    iget-object v0, v0, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    .line 456
    :cond_0
    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcxg$1;->b:Lcxg;

    iget-object v0, v0, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()Lcns;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 465
    const/4 v1, 0x0

    .line 466
    .local v1, "object":Lcns;
    iget-object v2, p0, Lcxg$1;->b:Lcxg;

    iget-object v2, v2, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    if-eqz v2, :cond_0

    .line 467
    iget-object v2, p0, Lcxg$1;->b:Lcxg;

    iget-object v2, v2, Lcxg;->z:Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v2}, Leat;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/util/Map;

    move-result-object v0

    .line 468
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcxg$1;->a:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    sget-object v3, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->CHAT_GUIDE:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    if-ne v2, v3, :cond_1

    .line 469
    const-string/jumbo v2, "spm-url"

    const-string/jumbo v3, "a2o5v.12290059"

    const-string/jumbo v4, "welcome_icon"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    new-instance v1, Lcns;

    .end local v1    # "object":Lcns;
    const-string/jumbo v2, "a2o5v.12290059"

    const-string/jumbo v3, "Expose-welcome_icon"

    invoke-direct {v1, v2, v3, v0}, Lcns;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 476
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "object":Lcns;
    :cond_0
    :goto_0
    return-object v1

    .line 471
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v2, p0, Lcxg$1;->a:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    sget-object v3, Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;->BIRTH_DAY:Lcom/alibaba/android/dingtalkim/chat/notify/util/SessionNotifyEnum;

    if-ne v2, v3, :cond_0

    .line 472
    const-string/jumbo v2, "spm-url"

    const-string/jumbo v3, "a2o5v.12290059"

    const-string/jumbo v4, "birthday_icon"

    invoke-static {v3, v4}, Leat;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    new-instance v1, Lcns;

    .end local v1    # "object":Lcns;
    const-string/jumbo v2, "a2o5v.12290059"

    const-string/jumbo v3, "Expose-birthday_icon"

    invoke-direct {v1, v2, v3}, Lcns;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v1    # "object":Lcns;
    goto :goto_0
.end method
