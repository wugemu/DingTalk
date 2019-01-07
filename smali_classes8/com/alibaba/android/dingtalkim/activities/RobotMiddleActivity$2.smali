.class final Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;
.super Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;
.source "RobotMiddleActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;
    .param p2, "context"    # Landroid/app/Activity;
    .param p3, "conversation"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;

    invoke-direct {p0, p2, p3}, Lcom/alibaba/android/dingtalkim/receiver/ImRobotConversationReceiver;-><init>(Landroid/app/Activity;Lcom/alibaba/wukong/im/Conversation;)V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;)V
    .locals 4
    .param p1, "object"    # Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 191
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->a(Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalkim/base/model/BotModelObject;->botId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity$2;->a:Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkim/activities/RobotMiddleActivity;->finish()V

    .line 194
    :cond_0
    return-void
.end method
