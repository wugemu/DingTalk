.class final Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$12;
.super Ljava/lang/Object;
.source "ConversationMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;


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
    .line 558
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 562
    instance-of v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;

    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 565
    :cond_0
    return-void
.end method
