.class final Lhpw$1$3;
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
    .line 170
    iput-object p1, p0, Lhpw$1$3;->a:Lhpw$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 173
    iget-object v3, p0, Lhpw$1$3;->a:Lhpw$1;

    iget-object v3, v3, Lhpw$1;->f:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lhpw$1$3;->a:Lhpw$1;

    iget-object v3, v3, Lhpw$1;->f:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 174
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-static {}, Lhrm;->a()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 175
    .local v1, "date":Ljava/util/Date;
    invoke-static {}, Lhpw;->b()Ljava/text/SimpleDateFormat;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "curDateStr":Ljava/lang/String;
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v3

    const-string/jumbo v4, "sw_checkin_pop_window_close_date"

    invoke-virtual {v3, v4, v0}, Lcnh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v0    # "curDateStr":Ljava/lang/String;
    .end local v1    # "date":Ljava/util/Date;
    :cond_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 181
    .local v2, "utArgs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "org_id"

    iget-object v4, p0, Lhpw$1$3;->a:Lhpw$1;

    iget-wide v4, v4, Lhpw$1;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    const/4 v3, 0x6

    iget-object v4, p0, Lhpw$1$3;->a:Lhpw$1;

    iget v4, v4, Lhpw$1;->h:I

    if-ne v3, v4, :cond_2

    .line 183
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "oa_cloud_attendance_fast_check_suc_danmu_close"

    invoke-interface {v3, v6, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "oa_cloud_attendance_fast_check_fail_danmu_close"

    invoke-interface {v3, v6, v4, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
