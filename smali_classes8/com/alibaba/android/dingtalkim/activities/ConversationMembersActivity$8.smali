.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 391
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$8;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->k(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->d(Landroid/content/Context;J)V

    .line 392
    return-void
.end method
