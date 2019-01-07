.class final Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$1;
.super Ljava/lang/Object;
.source "ConversationSearchActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

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
    .line 508
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity$12;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;->e(Lcom/alibaba/android/dingtalkim/activities/ConversationSearchActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 509
    return-object p1
.end method
