.class final Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;
.super Ljava/lang/Object;
.source "BurnChatIntroActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

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

    .line 64
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_bathhouse_entry_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Ldbw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->b(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Ldbw;

    move-result-object v0

    invoke-virtual {v0}, Ldbw;->a()V

    .line 69
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v0, v5}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Ldbw;)Ldbw;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v7, v0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {}, Ldqm;->a()Ldqm;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->c(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->d(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1$1;

    invoke-direct {v6, p0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity$1$1$1;)V

    invoke-virtual/range {v0 .. v6}, Ldqm;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Ljava/lang/String;Ldbw$a;)Ldbw;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;->a(Lcom/alibaba/android/dingtalkim/activities/BurnChatIntroActivity;Ldbw;)Ldbw;

    .line 82
    return-void
.end method
