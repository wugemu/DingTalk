.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;
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
        "Lcgc;",
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
    .line 1324
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iput-boolean p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->a:Z

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->b:Ljava/util/List;

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
    .line 1324
    check-cast p1, Ljava/util/List;

    .line 2327
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2330
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2331
    if-eqz p1, :cond_1

    .line 2332
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 2333
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)J

    move-result-wide v2

    .line 3097
    const/4 v4, 0x1

    invoke-static {v2, v3, v0, v4}, Ldqw;->a(JLcgc;Z)Ldqw;

    move-result-object v0

    .line 2334
    if-eqz v0, :cond_0

    .line 2335
    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2339
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->a:Z

    if-eqz v0, :cond_3

    .line 2340
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->b:Ljava/util/List;

    invoke-static {v0, v1, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void

    .line 2342
    :cond_3
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->t(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)J

    move-result-wide v2

    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 2343
    invoke-static {v7, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const-string/jumbo v8, "EVENTBUTLER"

    .line 2344
    invoke-static {v8}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v10, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6$1;

    invoke-direct {v10, p0, v9}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;Ljava/util/ArrayList;)V

    const-class v9, Lcom/alibaba/wukong/Callback;

    iget-object v11, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .line 2367
    invoke-virtual {v11}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v11

    .line 2344
    invoke-interface {v8, v10, v9, v11}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/wukong/Callback;

    .line 2342
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a(Ljava/lang/String;JJILjava/util/List;Lcom/alibaba/wukong/Callback;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 1378
    sget v0, Lctk$i;->add_member_failed:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 1379
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$6;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 1380
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 1374
    return-void
.end method
