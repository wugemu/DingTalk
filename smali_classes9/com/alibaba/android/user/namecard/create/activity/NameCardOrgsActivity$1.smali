.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;
.super Ljava/lang/Object;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Lftb$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Ljava/lang/String;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 149
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;)Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ClearableEditText;->setCursorVisible(Z)V

    .line 150
    return-void
.end method

.method public final a(Lfsv;)V
    .locals 4
    .param p1, "org"    # Lfsv;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 143
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$1;->a:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .line 1060
    new-instance v1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;-><init>()V

    .line 1061
    if-eqz p1, :cond_0

    .line 1062
    iget-wide v2, p1, Lfsv;->c:J

    iput-wide v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgId:J

    .line 1063
    iget-object v2, p1, Lfsv;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgName:Ljava/lang/String;

    .line 143
    :cond_0
    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V

    .line 144
    return-void
.end method
