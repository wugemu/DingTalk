.class final Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;
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
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    .prologue
    .line 276
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;->a:Ljava/util/List;

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
    .line 279
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;->b:Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;->e(Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity;)Lbnp;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/PostHistoryActivity$9;->a:Ljava/util/List;

    invoke-virtual {v0, v1}, Lbnp;->a(Ljava/util/List;)V

    .line 280
    return-void
.end method
