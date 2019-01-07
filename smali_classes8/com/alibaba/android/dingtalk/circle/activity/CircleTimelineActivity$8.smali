.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$8;
.super Ljava/lang/Object;
.source "CircleTimelineActivity.java"

# interfaces
.implements Lcov;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcov",
        "<",
        "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    .prologue
    .line 747
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$8;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 747
    .line 1750
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity$8;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;->i(Lcom/alibaba/android/dingtalk/circle/activity/CircleTimelineActivity;)Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;

    move-result-object v0

    invoke-static {}, Lbnm;->a()I

    move-result v1

    invoke-static {}, Lbnm;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/android/dingtalk/circle/ui/ScrollControlLinearlLayoutManager;->scrollToPositionWithOffset(II)V

    .line 747
    return-void
.end method
