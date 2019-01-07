.class final Lfgo$k;
.super Lfgo$h;
.source "NewRequestAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfgo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field final synthetic a:Lfgo;


# direct methods
.method public constructor <init>(Lfgo;)V
    .locals 8

    .prologue
    .line 765
    iput-object p1, p0, Lfgo$k;->a:Lfgo;

    .line 766
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v1

    new-instance v2, Lfgo$k$1;

    invoke-direct {v2, p1}, Lfgo$k$1;-><init>(Lfgo;)V

    .line 780
    invoke-static {p1}, Lfgo;->b(Lfgo;)Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;

    move-result-object v0

    iget-object v3, v0, Lcom/alibaba/android/user/contact/activities/FriendAndGroupRequestActivity;->b:Landroid/widget/ListView;

    invoke-static {p1}, Lfgo;->c(Lfgo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    .line 766
    invoke-direct/range {v0 .. v7}, Lfgo$h;-><init>(Landroid/app/Activity;Lfgo$h$a;Landroid/widget/ListView;Ljava/lang/String;ZLcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;Z)V

    .line 781
    return-void
.end method
