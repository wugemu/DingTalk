.class final Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;
.super Ljava/lang/Object;
.source "NameCardOrgsActivity.java"

# interfaces
.implements Lftb$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

.field final synthetic b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .param p1, "orgName"    # Ljava/lang/String;
    .param p2, "orgId"    # Ljava/lang/Long;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->title:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;J)J

    .line 207
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->b(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;->orgAuthed:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Z)Z

    .line 209
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->b:Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity$3;->a:Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;->a(Lcom/alibaba/android/user/namecard/create/activity/NameCardOrgsActivity;Lcom/alibaba/android/dingtalk/userbase/model/CardOrgInfoObject;)V

    .line 210
    return-void
.end method
