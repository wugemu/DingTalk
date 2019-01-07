.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;
.super Ljava/lang/Object;
.source "ConversationMembersFragment.java"

# interfaces
.implements Lcjo$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    .prologue
    .line 168
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcjo$b;)V
    .locals 2
    .param p1, "messageEvent"    # Lcjo$b;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 171
    if-eqz p1, :cond_0

    iget v0, p1, Lcjo$b;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->g:Lcwe;

    invoke-virtual {v0}, Lcwe;->notifyDataSetChanged()V

    .line 174
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersFragment;)V

    .line 177
    :cond_0
    return-void
.end method
