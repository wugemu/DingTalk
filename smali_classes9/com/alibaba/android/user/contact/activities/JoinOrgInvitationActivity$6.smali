.class final Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;
.super Ljava/lang/Object;
.source "JoinOrgInvitationActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 245
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;

    .line 1248
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1249
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->values:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iget-boolean v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->hasMore:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 1254
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    iget-wide v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObjectList;->nextCursor:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;J)J

    .line 1255
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->d(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;)Landroid/widget/BaseAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    return-void

    .line 1257
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 1258
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->b(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 269
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity$6;->a:Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;->a(Lcom/alibaba/android/user/contact/activities/JoinOrgInvitationActivity;Z)Z

    .line 270
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 265
    return-void
.end method
