.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lboy$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 731
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method public final b()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$7;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    return-object v0
.end method

.method public final c()Landroid/widget/ScrollView;
    .locals 1

    .prologue
    .line 744
    const/4 v0, 0x0

    return-object v0
.end method
