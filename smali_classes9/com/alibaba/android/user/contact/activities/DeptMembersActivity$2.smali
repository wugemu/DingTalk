.class final Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$2;
.super Ljava/lang/Object;
.source "DeptMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/DeptMembersActivity$2;->a:Lcom/alibaba/android/user/contact/activities/DeptMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1134
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 126
    return-object v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2129
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Lhda;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    return-object v0
.end method
