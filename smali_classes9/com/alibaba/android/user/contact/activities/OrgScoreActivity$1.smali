.class final Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;
.super Ljava/lang/Object;
.source "OrgScoreActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 160
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v6, "org_management_improve_click"

    invoke-interface {v3, v6}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 162
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 163
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v3, "https://h5.dingtalk.com/efficiency/index.html?dd_nav_bgcolor=FF38ADFF&showMenu=false&dd_progress=false&"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 164
    const-string/jumbo v3, "orgId="

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 165
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 166
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v3

    iget-object v6, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v6}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "corpId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    const-string/jumbo v3, "&corpId="

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 169
    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 171
    :cond_0
    const-string/jumbo v3, "&isAdmin="

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 172
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 173
    const-string/jumbo v3, "&isTeam="

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 174
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Z

    move-result v3

    if-nez v3, :cond_3

    :goto_1
    invoke-virtual {v0, v4}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 175
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 176
    const-string/jumbo v3, "&industryId="

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 177
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v3

    iget v3, v3, Lcom/alibaba/android/user/model/OrgTrendDataObject;->industryCode:I

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 179
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$1;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-void

    .end local v2    # "url":Ljava/lang/String;
    :cond_2
    move v3, v5

    .line 172
    goto :goto_0

    :cond_3
    move v4, v5

    .line 174
    goto :goto_1
.end method
