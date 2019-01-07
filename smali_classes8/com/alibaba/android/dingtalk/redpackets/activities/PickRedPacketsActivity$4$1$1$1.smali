.class final Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;
.super Ljava/lang/Object;
.source "PickRedPacketsActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

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
    .line 376
    const-string/jumbo v0, "cluster"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 378
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    .line 376
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 379
    const-string/jumbo v0, "pick_status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 381
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v1

    .line 379
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 382
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 384
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    .line 382
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 385
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1$1;->b:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4$1;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity$4;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;

    .line 387
    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/PickRedPacketsActivity;)Ljava/lang/String;

    move-result-object v1

    .line 385
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 388
    return-object p1
.end method
