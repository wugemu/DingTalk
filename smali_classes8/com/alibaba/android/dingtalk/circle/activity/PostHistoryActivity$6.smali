.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$6;
.super Ljava/lang/Object;
.source "PostHistoryActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

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
    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$6;->a:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->e(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Lbnp;

    move-result-object v0

    .line 1091
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbnp;->b:Z

    .line 1092
    invoke-virtual {v0}, Lbnp;->notifyDataSetChanged()V

    .line 181
    return-void
.end method
