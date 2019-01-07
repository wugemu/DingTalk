.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    .prologue
    .line 453
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

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
    .line 456
    const-string/jumbo v0, "cluster"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 457
    const-string/jumbo v0, "pick_status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 458
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 459
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$5;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    return-object p1
.end method
