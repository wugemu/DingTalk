.class final Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;
.super Liak;
.source "ConversationBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-direct {p0}, Liak;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/wukong/im/Conversation;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 56
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/wukong/im/Conversation;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 61
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    if-eqz v0, :cond_2

    .line 64
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 65
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationBaseActivity;->a(Lcom/alibaba/wukong/im/Conversation;)V

    goto :goto_0
.end method
