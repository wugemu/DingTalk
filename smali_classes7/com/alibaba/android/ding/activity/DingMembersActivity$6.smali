.class final Lcom/alibaba/android/ding/activity/DingMembersActivity$6;
.super Ljava/lang/Object;
.source "DingMembersActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/views/AvatorHorizontalListView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingMembersActivity;
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
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingMembersActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingMembersActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingMembersActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingMembersActivity$6;->a:Lcom/alibaba/android/ding/activity/DingMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1252
    if-nez p1, :cond_0

    .line 1253
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1255
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    goto :goto_0
.end method

.method public final synthetic b(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2244
    if-nez p1, :cond_0

    .line 2245
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2247
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-static {v0}, Lhda;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
