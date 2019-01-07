.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Ldqq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;Lcom/alibaba/wukong/im/Message;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    .prologue
    .line 4923
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->a:Lcom/alibaba/wukong/im/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/Object;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "anchorPosition"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 4958
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    if-eqz v0, :cond_0

    .line 4959
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v2, v2, v1}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->a(IIZZ)V

    .line 4960
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->v:Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ChatMsgListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4977
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;)V
    .locals 3
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 4927
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    .line 4928
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->unreadMessageCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->d(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;I)I

    .line 4929
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->resetUnreadCount()V

    .line 4930
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->localExtras()Ljava/util/Map;

    move-result-object v0

    .line 4931
    .local v0, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 4932
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "anchorType"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4933
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    const-string/jumbo v1, "anchorMessageId"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 4934
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131$1;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$131;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->c(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 4937
    .end local v0    # "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public final a(ILjava/lang/Object;Z)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "should"    # Z

    .prologue
    .line 4943
    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4947
    invoke-static {p2, p3}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4948
    return-void
.end method

.method public final b(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4953
    return-void
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 0
    .param p1, "mode"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .prologue
    .line 4982
    return-void
.end method
