.class final Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;
.super Ljava/lang/Object;
.source "GroupRobotListFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 309
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 310
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 311
    const-string/jumbo v0, "intent_key_show_robot_guide"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    const-string/jumbo v0, "intent_key_current_robot_count"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$3;->a:Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment;)Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkim/fragments/GroupRobotListFragment$a;->a()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 315
    :cond_0
    return-object p1
.end method
