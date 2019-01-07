.class final Lfgo$c;
.super Lfgo$h;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V
    .locals 7
    .param p2, "orgApplyObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .prologue
    .line 684
    iput-object p1, p0, Lfgo$c;->a:Lfgo;

    .line 685
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v1

    new-instance v2, Lfgo$c$1;

    invoke-direct {v2, p1}, Lfgo$c$1;-><init>(Lfgo;)V

    .line 699
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-static {p1}, Lfgo;->c(Lfgo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v6, p2

    .line 685
    invoke-direct/range {v0 .. v6}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;)V

    .line 700
    return-void
.end method
