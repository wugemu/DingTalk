.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->run()V
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
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    .prologue
    .line 1136
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 1189
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1136
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1136
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 2139
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    const-string/jumbo v1, "EVENTBUTLER"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 2184
    invoke-virtual {v4}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    .line 2139
    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$4;->b:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2184
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    .line 2139
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/alibaba/wukong/im/ConversationService;->removeMembers(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Lcom/alibaba/wukong/im/Message;[Ljava/lang/Long;)V

    .line 1136
    return-void
.end method
