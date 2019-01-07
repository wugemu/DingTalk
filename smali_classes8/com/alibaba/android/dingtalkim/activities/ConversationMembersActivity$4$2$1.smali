.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;Ljava/util/List;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    .prologue
    .line 796
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 799
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView;->a(Ljava/util/List;)V

    .line 800
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->w(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 801
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->x(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V

    .line 802
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->c:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2$1;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$4$2;->b:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->dismiss()V

    .line 806
    return-void
.end method
