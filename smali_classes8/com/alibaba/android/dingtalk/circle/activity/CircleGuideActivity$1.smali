.class final Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;
.super Ljava/lang/Object;
.source "CircleGuideActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->setResult(I)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity$1;->a:Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalk/circle/activity/CircleGuideActivity;->finish()V

    .line 69
    return-void
.end method
