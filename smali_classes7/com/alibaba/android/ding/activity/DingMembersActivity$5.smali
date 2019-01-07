.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$5;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 236
    instance-of v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$5;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/alibaba/android/ding/activity/DingMembersActivity;->a(Lcom/alibaba/android/ding/activity/DingMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 239
    :cond_0
    return-void
.end method
