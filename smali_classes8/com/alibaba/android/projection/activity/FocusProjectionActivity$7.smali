.class final Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;
.super Ljava/lang/Object;
.source "FocusProjectionActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/projection/activity/FocusProjectionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    .prologue
    .line 1080
    iput-object p1, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 1084
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 1085
    .local v0, "builder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 1086
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->c(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Lcom/alibaba/android/projection/data/FocusDeviceObject;

    move-result-object v3

    iget-wide v4, v3, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1089
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1090
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->e(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;

    .line 1091
    .local v2, "dev":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    if-eqz v2, :cond_1

    .line 1092
    const-string/jumbo v3, ":"

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1093
    iget-wide v4, v2, Lcom/alibaba/android/projection/data/FocusDeviceObject;->deviceUid:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1096
    .end local v2    # "dev":Lcom/alibaba/android/projection/data/FocusDeviceObject;
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1097
    .local v1, "content":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1098
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1099
    iget-object v3, p0, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;->a:Lcom/alibaba/android/projection/activity/FocusProjectionActivity;

    invoke-static {v3}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity;->z(Lcom/alibaba/android/projection/activity/FocusProjectionActivity;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1101
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7$1;-><init>(Lcom/alibaba/android/projection/activity/FocusProjectionActivity$7;)V

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1109
    :cond_2
    return v8
.end method
