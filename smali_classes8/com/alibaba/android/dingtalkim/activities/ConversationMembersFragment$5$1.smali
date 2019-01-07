.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;
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
        "Ljava/util/List",
        "<",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/util/ArrayList;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    .prologue
    .line 1283
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->a:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1291
    const-string/jumbo v0, "STATISTICS"

    .line 1292
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    const/16 v1, 0x332d

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->commitFaultEvent(I)V

    .line 1294
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->E(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 1295
    invoke-static {}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->a()Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;

    invoke-static {p1, p2}, Lcom/alibaba/android/dingtalkim/imtools/ConversationTools;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1283
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1283
    .line 2286
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$5$1;->a:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;Ljava/util/List;Ljava/util/ArrayList;)V

    .line 1283
    return-void
.end method
