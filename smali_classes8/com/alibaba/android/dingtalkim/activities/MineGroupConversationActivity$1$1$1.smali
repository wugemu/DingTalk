.class final Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;
.super Ljava/lang/Object;
.source "MineGroupConversationActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Z

.field final synthetic d:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;Ljava/util/List;Ljava/util/List;Z)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->d:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->b:Ljava/util/List;

    iput-boolean p4, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 120
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->d:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->d:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->b:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;Ljava/util/List;Ljava/util/List;)V

    .line 124
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->c:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1$1;->d:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity$1;->c:Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/MineGroupConversationActivity;)Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/JKViewPager;->setCurrentItem(IZ)V

    goto :goto_0
.end method
