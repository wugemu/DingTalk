.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 358
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->finish()V

    .line 360
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 340
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 1343
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;

    .line 1345
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1346
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->finish()V

    .line 1347
    :goto_0
    return-void

    .line 1349
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->i(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->getOwnerId()J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->c()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Z)Z

    .line 1350
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1351
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 1353
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->supportInvalidateOptionsMenu()V

    goto :goto_0

    .line 1349
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
