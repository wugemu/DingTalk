.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;II)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->c:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;

    iput p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->a:I

    iput p3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1093
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->c:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->a:I

    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$10$1;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->scrollToPositionWithOffset(II)V

    .line 1094
    return-void
.end method
