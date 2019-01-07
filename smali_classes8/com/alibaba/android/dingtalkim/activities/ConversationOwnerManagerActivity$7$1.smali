.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7$1;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;

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
    .line 804
    const-string/jumbo v0, "conversation"

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7$1;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$7;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .line 805
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    .line 804
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 806
    return-object p1
.end method
