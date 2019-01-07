.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    .prologue
    .line 1983
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;)V
    .locals 8
    .param p1, "orgMicroAPPObject"    # Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 1986
    if-nez p1, :cond_0

    .line 1999
    :goto_0
    return-void

    .line 1989
    :cond_0
    iget-wide v0, p1, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    .line 1991
    .local v0, "orgId":J
    :try_start_0
    const-string/jumbo v2, "oa"

    const-string/jumbo v3, ""

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "switchOA menu_work_info orgId "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 1992
    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, " orgIdFromIntent="

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    iget-object v6, v6, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v6}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->p(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1991
    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1997
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2, v0, v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;J)V

    .line 1998
    iget-object v2, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    iget-object v2, v2, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v2}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public final a(Lgts;)V
    .locals 6
    .param p1, "orgMicroAPPObjectWrapper"    # Lgts;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2003
    if-nez p1, :cond_0

    .line 2009
    :goto_0
    return-void

    .line 2006
    :cond_0
    const-string/jumbo v0, "oa"

    const-string/jumbo v1, ""

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "switchWorkTab showChooseOrgDialog orgId "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lgts;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2007
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;Lgts;)V

    .line 2008
    iget-object v0, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32$1;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;

    iget-object v0, v0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$32;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v0}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->q(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V

    goto :goto_0
.end method
