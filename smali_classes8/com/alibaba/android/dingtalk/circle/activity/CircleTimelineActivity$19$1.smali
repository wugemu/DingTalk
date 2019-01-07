.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;->a(Landroid/widget/TextView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;

    iput p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 549
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->d(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;->a:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 550
    return-void
.end method
