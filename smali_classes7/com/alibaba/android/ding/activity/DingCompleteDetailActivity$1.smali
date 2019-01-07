.class final Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;
.super Ljava/lang/Object;
.source "DingCompleteDetailActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lbjg;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->a(Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;)Lbjg;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity$1;->a:Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;

    sget v2, Laxp$i;->ding_add_task_participant_user:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/activity/DingCompleteDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbjg;->a(Ljava/lang/String;)V

    .line 129
    :cond_0
    return-void
.end method
