.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;ZLjava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 1261
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1261
    move-object v7, p1

    check-cast v7, Ljava/util/List;

    .line 2264
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 2279
    :goto_0
    return-void

    .line 2268
    :cond_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2270
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 2271
    if-eqz v0, :cond_2

    .line 2272
    invoke-static {v0}, Ldqw;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Ldqw;

    move-result-object v0

    .line 2273
    if-eqz v0, :cond_2

    .line 2274
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2278
    :cond_3
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->a:Z

    if-eqz v0, :cond_4

    .line 2279
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->b:Ljava/util/List;

    invoke-static {v0, v1, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 2281
    :cond_4
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)J

    move-result-wide v2

    .line 2282
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    const-string/jumbo v8, "EVENTBUTLER"

    .line 2283
    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;

    invoke-direct {v10, p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;Ljava/util/ArrayList;)V

    const-class v9, Lcom/alibaba/wukong/Callback;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 2302
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 2283
    invoke-interface {v8, v10, v9, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 2281
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1313
    sget v0, Lctk$i;->add_member_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1314
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 1315
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1309
    return-void
.end method
