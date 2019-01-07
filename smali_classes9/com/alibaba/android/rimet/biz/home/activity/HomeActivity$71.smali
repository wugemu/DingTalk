.class final Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;
.super Ljava/lang/Object;
.source "HomeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    .prologue
    .line 4175
    iput-object p1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 4178
    iget-object v1, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    invoke-static {v1}, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->l(Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/oa/fragment/OAFragment;

    .line 4359
    iget-wide v2, v1, Lcom/alibaba/android/oa/fragment/OAFragment;->c:J

    .line 4179
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/oabase/OAInterface;->b(J)Ljava/lang/String;

    move-result-object v0

    .line 4180
    .local v0, "corpId":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 4181
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v1

    iget-object v4, p0, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity$71;->a:Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;

    const-string/jumbo v5, "https://h5.dingtalk.com/appcenter/index.html?showmenu=false&dd_share=false&dd_progress=false&corpId=%s&from=work"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    .line 4182
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 4181
    invoke-virtual {v1, v4, v5, v8}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 4185
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    sget-object v4, Lcom/alibaba/android/rimet/biz/home/activity/HomeActivity;->a:Ljava/lang/String;

    const-string/jumbo v5, "work_appcenter_click"

    invoke-interface {v1, v4, v5, v8}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 4186
    return-void
.end method
