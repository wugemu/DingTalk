.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/im/MessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1947
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAdded(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V
    .locals 13
    .param p2, "dataType"    # Lcom/alibaba/wukong/im/MessageListener$DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;",
            "Lcom/alibaba/wukong/im/MessageListener$DataType;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x0

    .line 1952
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1953
    invoke-interface {p1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 1954
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    if-eqz v0, :cond_1

    .line 1955
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 1956
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1957
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    if-eq v1, v12, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v1

    const/16 v2, 0xfc

    if-ne v1, v2, :cond_1

    .line 1958
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    .line 1960
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1961
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a()V

    .line 1962
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 1965
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V

    .line 1966
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->b()Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v3

    .line 2171
    iget-boolean v1, v2, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->c:Z

    if-eqz v1, :cond_7

    .line 2174
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 2175
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/Message;

    .line 2176
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/wukong/im/Message;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2184
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;Lcom/alibaba/wukong/im/Message;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2187
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;

    move-result-object v5

    .line 2188
    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->senderId()J

    move-result-wide v6

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v8

    invoke-virtual {v8}, Lccr;->c()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 2309
    iget v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    .line 3309
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 2190
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-ne v1, v6, :cond_3

    .line 2191
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V

    .line 6266
    :cond_3
    :goto_1
    if-eqz v5, :cond_2

    .line 6309
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 6269
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->init:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-ne v1, v6, :cond_5

    .line 7309
    iget v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->b:I

    .line 8309
    iget v6, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    .line 6270
    add-int/2addr v1, v6

    .line 6271
    if-le v1, v11, :cond_2

    .line 6272
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 9309
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    goto :goto_0

    .line 4309
    :cond_4
    iget v6, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->b:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->b:I

    .line 5309
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->e:Lcom/alibaba/wukong/im/Message;

    goto :goto_1

    .line 10309
    :cond_5
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 6274
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-ne v1, v6, :cond_6

    .line 11309
    iget v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->d:I

    .line 6275
    if-lt v1, v12, :cond_2

    .line 6276
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->ignore:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 12309
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 13309
    iput v10, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    .line 14309
    iput v10, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->b:I

    .line 6279
    const/4 v1, 0x0

    .line 15309
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->e:Lcom/alibaba/wukong/im/Message;

    .line 6280
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager;->a(Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;)V

    goto :goto_0

    .line 16309
    :cond_6
    iget-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 6282
    sget-object v6, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->ignore:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    if-ne v1, v6, :cond_2

    .line 17309
    iget v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->c:I

    .line 6283
    if-lt v1, v11, :cond_2

    .line 6284
    sget-object v1, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;->compete:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    .line 18309
    iput-object v1, v5, Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$b;->a:Lcom/alibaba/android/dingtalkim/imtools/CompeteEmotionStateManager$Status;

    goto/16 :goto_0

    .line 1967
    :cond_7
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v1, :cond_a

    .line 1968
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    new-instance v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80$1;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;Ljava/util/List;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 2006
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f()J

    move-result-wide v4

    const-string/jumbo v6, "add"

    move-object v2, p1

    .line 1968
    invoke-virtual/range {v1 .. v6}, Ldqq;->a(Ljava/util/List;Ldqq$d;JLjava/lang/Object;)V

    .line 2007
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V

    .line 2008
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1, p1, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 2009
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldmg;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 2010
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->y(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldmg;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ldmg;->a(Ljava/util/List;Lcom/alibaba/wukong/im/MessageListener$DataType;)V

    .line 2013
    :cond_8
    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_DEBUG:I

    if-eq v1, v2, :cond_9

    invoke-static {}, Lcom/alibaba/doraemon/Doraemon;->getRunningMode()I

    move-result v1

    sget v2, Lcom/alibaba/doraemon/Doraemon;->MODE_GRAY:I

    if-ne v1, v2, :cond_a

    :cond_9
    if-eqz p1, :cond_a

    .line 2015
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 2016
    invoke-static {}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->K()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Receive message "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->z(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2019
    :cond_a
    return-void
.end method

.method public final onChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2034
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2035
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2036
    .local v0, "m":Lcom/alibaba/wukong/im/Message;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->B(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2037
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->status()Lcom/alibaba/wukong/im/Message$MessageStatus;

    move-result-object v1

    sget-object v2, Lcom/alibaba/wukong/im/Message$MessageStatus;->SENT:Lcom/alibaba/wukong/im/Message$MessageStatus;

    if-ne v1, v2, :cond_0

    .line 2038
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2039
    invoke-static {}, Lder;->a()Lder;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .line 2040
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->T()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->createdAt()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lder;->b(Lcom/alibaba/wukong/im/Conversation;J)V

    .line 2045
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V

    .line 2047
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v1, :cond_1

    .line 2048
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    const-string/jumbo v2, "change"

    invoke-virtual {v1, p1, v6, v2}, Ldqq;->b(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    .line 2051
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Ljava/util/List;)V

    .line 2052
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2053
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v1, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->f(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/util/List;)V

    .line 2056
    if-eqz p1, :cond_4

    .line 2057
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 2058
    .restart local v0    # "m":Lcom/alibaba/wukong/im/Message;
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->recallStatus()I

    move-result v2

    if-eq v2, v5, :cond_3

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->shieldStatus()I

    move-result v2

    if-ne v2, v5, :cond_2

    .line 2059
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    if-eqz v2, :cond_2

    .line 2060
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F:Ldru;

    invoke-virtual {v2, v0, v4}, Ldru;->a(Lcom/alibaba/wukong/im/Message;Z)V

    goto :goto_0

    .line 2065
    .end local v0    # "m":Lcom/alibaba/wukong/im/Message;
    :cond_4
    return-void
.end method

.method public final onRemoved(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Message;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 2023
    .local p1, "messages":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Message;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    if-eqz v0, :cond_0

    .line 2024
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->t:Ldqq;

    const/4 v1, 0x0

    const-string/jumbo v2, "remove"

    invoke-virtual {v0, p1, v1, v2}, Ldqq;->a(Ljava/util/List;Ldqq$d;Ljava/lang/Object;)V

    .line 2026
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Ljava/util/List;)V

    .line 2027
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$80;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V

    .line 2029
    return-void
.end method
