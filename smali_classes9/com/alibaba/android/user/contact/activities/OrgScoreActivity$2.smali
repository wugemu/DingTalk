.class final Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;
.super Ljava/lang/Object;
.source "OrgScoreActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d()V
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
        "Lcom/alibaba/android/user/model/OrgTrendDataObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 194
    check-cast p1, Lcom/alibaba/android/user/model/OrgTrendDataObject;

    .line 1197
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->dismissLoadingDialog()V

    .line 1198
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0, p1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Lcom/alibaba/android/user/model/OrgTrendDataObject;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    .line 1200
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/contact/view/LineChartView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1201
    :cond_0
    :goto_0
    return-void

    .line 1204
    :cond_1
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 1205
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v0

    iget-object v3, v0, Lcom/alibaba/android/user/model/OrgTrendDataObject;->today:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    .line 1206
    if-eqz v3, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    if-eqz v0, :cond_5

    .line 1207
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->f(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v1

    .line 2125
    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->today:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iput-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    .line 3089
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    if-eqz v1, :cond_4

    .line 3091
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    if-eqz v1, :cond_2

    .line 3092
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-wide v4, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_8

    .line 3093
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    const-string/jumbo v4, "--"

    invoke-virtual {v1, v4}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3101
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreStr:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3102
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->b:Landroid/widget/TextView;

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-object v4, v4, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreStr:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3105
    :cond_3
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->a:Lcom/alibaba/android/user/contact/view/CircleView;

    if-eqz v1, :cond_4

    .line 3106
    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 3107
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3108
    new-instance v4, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;

    invoke-direct {v4, v0}, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment$1;-><init>(Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3118
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 1208
    :cond_4
    const-string/jumbo v0, "Total:"

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1209
    iget-wide v0, v3, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1212
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->recentTrendList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;Ljava/util/List;)Ljava/util/List;

    .line 1213
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 1214
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/contact/view/LineChartView;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/LineChartView;->setList(Ljava/util/List;)V

    .line 1215
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_2
    if-lez v1, :cond_6

    .line 1216
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-wide v4, v0, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-lez v0, :cond_c

    .line 1217
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/contact/view/LineChartView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/android/user/contact/view/LineChartView;->setTouchPosition(I)V

    .line 1221
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->e(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/contact/view/LineChartView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/view/LineChartView;->invalidate()V

    .line 1222
    const-string/jumbo v0, "size:"

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->g(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(I)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1226
    :cond_7
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgAuthLeve:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->a(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)I

    .line 1227
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->h(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)V

    .line 1229
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->d(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)Lcom/alibaba/android/user/model/OrgTrendDataObject;

    move-result-object v1

    iget v1, v1, Lcom/alibaba/android/user/model/OrgTrendDataObject;->orgRightLevel:I

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)I

    .line 1230
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->c(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;I)V

    .line 1232
    invoke-static {}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->b()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "org score info, auth: %d, right: %d, %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->j(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-static {v5}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->i(Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v0, v1, v3}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3095
    :cond_8
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->d:Lcom/alibaba/android/user/model/OrgTrendItemObject;

    iget-wide v4, v4, Lcom/alibaba/android/user/model/OrgTrendItemObject;->scoreTotal:J

    long-to-int v4, v4

    .line 3150
    int-to-float v5, v4

    iput v5, v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->b:F

    .line 3151
    const/4 v5, 0x1

    iput v5, v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->e:I

    .line 3152
    const/16 v5, 0x3e8

    if-le v4, v5, :cond_9

    .line 3153
    int-to-float v5, v4

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    invoke-static {v4}, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a(I)I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    int-to-double v8, v4

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-float v4, v6

    sub-float v4, v5, v4

    iput v4, v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->c:F

    .line 3096
    :goto_3
    iget-object v1, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .line 3164
    const-wide/16 v4, 0x3e8

    iput-wide v4, v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    .line 3097
    iget-object v4, v0, Lcom/alibaba/android/user/contact/orgmanager/OrgCircleFragment;->c:Lcom/alibaba/android/user/widget/RiseNumberTextView;

    .line 5067
    iget v1, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_a

    const/4 v1, 0x1

    .line 4124
    :goto_4
    if-nez v1, :cond_2

    .line 4125
    const/4 v1, 0x1

    iput v1, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->a:I

    .line 4126
    iget v1, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->e:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_b

    .line 5091
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v5, 0x0

    iget v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->c:F

    float-to-int v6, v6

    aput v6, v1, v5

    const/4 v5, 0x1

    iget v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->b:F

    float-to-int v6, v6

    aput v6, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 5092
    iget-wide v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5094
    new-instance v5, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;

    invoke-direct {v5, v4}, Lcom/alibaba/android/user/widget/RiseNumberTextView$2;-><init>(Lcom/alibaba/android/user/widget/RiseNumberTextView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5106
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 3155
    :cond_9
    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iput v4, v1, Lcom/alibaba/android/user/widget/RiseNumberTextView;->c:F

    goto :goto_3

    .line 5067
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 6071
    :cond_b
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v5, 0x0

    iget v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->c:F

    aput v6, v1, v5

    const/4 v5, 0x1

    iget v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->b:F

    aput v6, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 6072
    iget-wide v6, v4, Lcom/alibaba/android/user/widget/RiseNumberTextView;->d:J

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6074
    new-instance v5, Lcom/alibaba/android/user/widget/RiseNumberTextView$1;

    invoke-direct {v5, v4}, Lcom/alibaba/android/user/widget/RiseNumberTextView$1;-><init>(Lcom/alibaba/android/user/widget/RiseNumberTextView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6088
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    .line 1215
    :cond_c
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto/16 :goto_2

    .line 3106
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity$2;->a:Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/user/contact/activities/OrgScoreActivity;->dismissLoadingDialog()V

    .line 244
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 239
    return-void
.end method
