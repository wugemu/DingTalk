.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;
.super Ljava/lang/Object;
.source "ConversationMembersWithRobotFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;II)V
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
        "Lcom/alibaba/wukong/im/Member;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 1

    .prologue
    .line 33
    check-cast p1, Ljava/util/List;

    .line 1049
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1050
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onProgress(Ljava/lang/Object;I)V

    .line 33
    :cond_0
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 33
    check-cast p1, Ljava/util/List;

    .line 2037
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment$1;->b:Lcom/alibaba/wukong/Callback;

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersWithRobotFragment;Ljava/util/List;Ljava/lang/String;Lcom/alibaba/wukong/Callback;)V

    .line 33
    return-void
.end method
