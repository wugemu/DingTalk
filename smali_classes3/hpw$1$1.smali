.class final Lhpw$1$1;
.super Ljava/lang/Object;
.source "DakaPopupWindowUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpw$1;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpw$1;


# direct methods
.method constructor <init>(Lhpw$1;)V
    .locals 0
    .param p1, "this$1"    # Lhpw$1;

    .prologue
    .line 120
    iput-object p1, p0, Lhpw$1$1;->a:Lhpw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lhrm;->a()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 124
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Lhpw;->b()Ljava/text/SimpleDateFormat;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "curDateStr":Ljava/lang/String;
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v4

    const-string/jumbo v5, "sw_checkin_pop_window_close_date"

    invoke-virtual {v4, v5, v0}, Lcnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v4

    const-string/jumbo v5, "https://attend.dingtalk.com/attend/index.html?corpId=$CORPID$&showmenu=false&dd_share=false&dd_progress=false&dd_web_timestamp=1483623237051.809&&swtrace=oa_cloud_attendance_flashcheck_to_home"

    iget-object v6, p0, Lhpw$1$1;->a:Lhpw$1;

    iget-object v6, v6, Lhpw$1;->i:Lhpw;

    invoke-static {v6}, Lhpw;->a(Lhpw;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    .local v2, "url":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/oabase/OAInterface;->i()Lcom/alibaba/dingtalk/oabase/OAInterface;

    move-result-object v5

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v5, v4, v2, v8}, Lcom/alibaba/dingtalk/oabase/OAInterface;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 133
    .local v3, "utArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "org_id"

    iget-object v5, p0, Lhpw$1$1;->a:Lhpw$1;

    iget-wide v6, v5, Lhpw$1;->g:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const/4 v4, 0x6

    iget-object v5, p0, Lhpw$1$1;->a:Lhpw$1;

    iget v5, v5, Lhpw$1;->h:I

    if-ne v4, v5, :cond_0

    .line 135
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "oa_cloud_attendance_fast_check_suc_danmu_click"

    invoke-interface {v4, v8, v5, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v4

    const-string/jumbo v5, "oa_cloud_attendance_fast_check_fail_danmu_click"

    invoke-interface {v4, v8, v5, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
