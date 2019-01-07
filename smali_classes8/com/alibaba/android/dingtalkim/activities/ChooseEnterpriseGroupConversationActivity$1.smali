.class final Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "ChooseEnterpriseGroupConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 57
    const-string/jumbo v1, "choose_enterprise_group_conversation"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 58
    const-string/jumbo v1, "conversation"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    .line 59
    .local v0, "conversationObject":Ljava/io/Serializable;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChooseEnterpriseGroupConversationActivity;Ljava/lang/Object;)V

    .line 61
    .end local v0    # "conversationObject":Ljava/io/Serializable;
    :cond_0
    return-void
.end method
