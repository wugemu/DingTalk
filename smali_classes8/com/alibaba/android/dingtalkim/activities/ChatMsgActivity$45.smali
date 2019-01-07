.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;
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
    .line 8849
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 8852
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 8883
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 8854
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->E()V

    goto :goto_0

    .line 8857
    :pswitch_2
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_sunglass_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 8859
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->A()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ldqm;->a(Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8860
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldbw;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 8861
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->aV(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()V

    .line 8862
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ldbw;)Ldbw;

    .line 8864
    :cond_1
    iget-object v7, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->G(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->g(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;)V

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;Ldbw;)Ldbw;

    goto :goto_0

    .line 8877
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->F()V

    goto :goto_0

    .line 8880
    :pswitch_4
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$45;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "url"

    invoke-interface {v2, v3}, Lcom/alibaba/wukong/im/Conversation;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 8852
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
