.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 1077
    invoke-static {}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->q()Lcom/alibaba/android/dingtalk/livebase/LiveInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalk/livebase/LiveInterface;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1078
    sget v2, Lctk$i;->dt_live_audio_in_focused:I

    invoke-static {v2}, Lcms;->a(I)V

    .line 1092
    :goto_0
    return-void

    .line 1081
    :cond_0
    const-string/jumbo v2, "STATISTICS"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v3, "chat_call_button_click"

    invoke-interface {v2, v3}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 1082
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfc;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1083
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->j(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldfc;

    move-result-object v2

    invoke-interface {v2}, Ldfc;->b()Z

    move-result v0

    .line 1084
    .local v0, "ret":Z
    if-eqz v0, :cond_1

    .line 1085
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    goto :goto_0

    .line 1089
    .end local v0    # "ret":Z
    :cond_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    .line 1090
    .local v1, "telConfInterface":Lcom/alibaba/dingtalk/telebase/TelConfInterface;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1091
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$46;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->b(Z)V

    goto :goto_0
.end method
