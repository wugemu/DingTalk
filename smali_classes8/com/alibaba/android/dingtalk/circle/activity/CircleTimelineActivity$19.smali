.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/widgets/ExpandableTextView$a;


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
    .line 530
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/TextView;Z)V
    .locals 6
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "isCollapsed"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 537
    sget v4, Lbpu$d;->ll_tag:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    .line 538
    .local v3, "tag":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_1

    .line 553
    .end local v3    # "tag":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 542
    .restart local v3    # "tag":Ljava/lang/Object;
    :cond_1
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "tag":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 543
    .local v0, "currentItemPosition":I
    invoke-static {}, Lbnm;->a()I

    move-result v2

    .line 544
    .local v2, "scrollPosition":I
    invoke-static {}, Lbnm;->b()I

    move-result v1

    .line 545
    .local v1, "offset":I
    if-lt v2, v0, :cond_0

    if-gez v1, :cond_0

    .line 546
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v4

    new-instance v5, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;

    invoke-direct {v5, p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$19;I)V

    invoke-virtual {v4, v5}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(ZI)V
    .locals 0
    .param p1, "isCollapsed"    # Z
    .param p2, "visibility"    # I

    .prologue
    .line 558
    return-void
.end method
