.class final Lfhk$1;
.super Ljava/lang/Object;
.source "OrgHomePageViewHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfhk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

.field final synthetic b:Lfhk;


# direct methods
.method constructor <init>(Lfhk;Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;)V
    .locals 0
    .param p1, "this$0"    # Lfhk;

    .prologue
    .line 152
    iput-object p1, p0, Lfhk$1;->b:Lfhk;

    iput-object p2, p0, Lfhk$1;->a:Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 155
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "homepage_contacts_app_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 156
    iget-object v1, p0, Lfhk$1;->b:Lfhk;

    invoke-static {v1}, Lfhk;->a(Lfhk;)Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsView;->setVisibility(I)V

    .line 157
    iget-object v1, p0, Lfhk$1;->b:Lfhk;

    invoke-static {v1}, Lfhk;->b(Lfhk;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    iget-object v1, p0, Lfhk$1;->a:Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    move-result-wide v2

    invoke-static {v2, v3, v5}, Lfls;->c(JZ)V

    .line 159
    iget-object v1, p0, Lfhk$1;->a:Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    invoke-virtual {v1}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    invoke-static {v4}, Lfls;->b(Z)V

    .line 160
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "action_user_org_homepage_reddot_changed"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/Intent;)Z

    .line 162
    invoke-static {}, Lfly;->a()Lfly;

    invoke-static {}, Lfly;->c()V

    .line 163
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "org_management_homepage_set_click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 164
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    iget-object v2, p0, Lfhk$1;->a:Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;

    invoke-virtual {v2}, Lcom/alibaba/android/user/contact/homepage/OrgHomePageItem;->getOrgId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "corpId":Ljava/lang/String;
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "https://h5.dingtalk.com/home/orgHome.html?corpId=%s&from=contacts"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    .line 166
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 165
    invoke-virtual {v1, v2, v3, v4}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method
