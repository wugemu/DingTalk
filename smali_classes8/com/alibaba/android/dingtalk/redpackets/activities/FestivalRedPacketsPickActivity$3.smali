.class final Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;
.super Ljava/lang/Object;
.source "FestivalRedPacketsPickActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    .prologue
    .line 874
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

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
    .line 877
    const-string/jumbo v0, "cluster"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->a(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 878
    const-string/jumbo v0, "pick_status"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->b(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/android/dingtalk/redpackets/models/RedPacketsClusterPickingStatus;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 879
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->d(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 880
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-result-object v0

    iget-object v0, v0, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->h(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;

    move-result-object v1

    iget-object v1, v1, Lcom/aliaba/android/dingtalk/redpackets/base/models/FestivalRedPacketsResource;->title:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 885
    :goto_0
    return-object p1

    .line 883
    :cond_0
    const-string/jumbo v0, "package_name"

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity$3;->a:Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;->e(Lcom/alibaba/android/dingtalk/redpackets/activities/FestivalRedPacketsPickActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
