.class final Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;
.super Ljava/lang/Object;
.source "GroupNameSettingActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0
    .param p1, "this$2"    # Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;->b:Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

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
    .line 206
    const-string/jumbo v0, "conversation_id"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/GroupNameSettingActivity$ChoosePeopleFromContactLogic$1$1$1;->a:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    const-string/jumbo v0, "to_page"

    const-string/jumbo v1, "to_chat"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 208
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    return-object p1
.end method
