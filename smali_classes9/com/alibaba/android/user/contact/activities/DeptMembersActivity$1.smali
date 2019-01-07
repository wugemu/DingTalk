.class final Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$1;
.super Ljava/lang/Object;
.source "DeptMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 120
    instance-of v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$1;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;->a(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;)V

    .line 123
    :cond_0
    return-void
.end method
