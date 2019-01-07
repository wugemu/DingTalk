.class final Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;
.super Ljava/lang/Object;
.source "UserBusinessProfileSubActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->a(JLjava/lang/String;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;)Lcom/alibaba/android/user/profile/v2/UserInfoItemObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;Ljava/lang/String;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    .prologue
    .line 1339
    iput-object p1, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->a:Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    iput-object p3, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1342
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1343
    .local v0, "property":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "uid"

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;->e(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "profile_dept_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 1345
    const-string/jumbo v1, "NAVIGATOR"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/navigator/Navigator;

    iget-object v2, p0, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;->d:Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/org_contact.html"

    new-instance v3, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13$1;-><init>(Lcom/alibaba/android/user/profile/namecard/UserBusinessProfileSubActivity$13;)V

    .line 1346
    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 1361
    return-void
.end method
