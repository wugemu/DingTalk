.class final Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;
.super Ljava/lang/Object;
.source "GreetingCardActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 226
    const-string/jumbo v0, "cluster"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->f(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "package_name"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .line 227
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "pick_status"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .line 228
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "conversation"

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;

    .line 229
    invoke-static {v2}, Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;->c(Lcom/alibaba/android/dingtalk/redpackets/activities/GreetingCardActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 230
    return-object p1
.end method
