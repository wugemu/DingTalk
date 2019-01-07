.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;
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
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1151
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1142
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1142
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2145
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->z(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->a:Ljava/util/List;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/util/List;Ljava/util/List;Z)V

    .line 1142
    return-void
.end method
