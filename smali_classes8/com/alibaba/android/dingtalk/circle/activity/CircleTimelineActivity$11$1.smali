.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11$1;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;Ljava/util/List;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11$1;->a:Ljava/util/List;

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
    .line 1160
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11$1;->b:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$11$1;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->a(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;Ljava/util/List;)V

    .line 1161
    return-void
.end method
