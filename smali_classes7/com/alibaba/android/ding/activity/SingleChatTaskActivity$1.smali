.class final Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$1;
.super Ljava/lang/Object;
.source "SingleChatTaskActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1908
    const-string/jumbo v0, "chat_task_list_create_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity$1;->a:Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;

    invoke-static {v0}, Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;->a(Lcom/alibaba/android/ding/activity/SingleChatTaskActivity;)Lbbf;

    move-result-object v0

    .line 2074
    iget-object v1, v0, Lbbf;->a:Lbbe$b;

    invoke-interface {v1}, Lbbe$b;->e()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2077
    new-instance v1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v1}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 2078
    new-array v2, v7, [Ljava/lang/Long;

    iget-wide v4, v0, Lbbf;->b:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(Ljava/util/List;)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2079
    invoke-virtual {v1, v7}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2080
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->c(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2081
    invoke-virtual {v1, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(Z)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 2802
    iget-object v2, v1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    invoke-static {v2, v6}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->access$2002(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;Z)Z

    .line 2083
    iget-object v0, v0, Lbbf;->a:Lbbe$b;

    invoke-interface {v0}, Lbbe$b;->e()Landroid/app/Activity;

    move-result-object v0

    .line 2922
    iget-object v1, v1, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 3786
    invoke-static {v0, v1, v6}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 71
    :cond_0
    return-void
.end method
