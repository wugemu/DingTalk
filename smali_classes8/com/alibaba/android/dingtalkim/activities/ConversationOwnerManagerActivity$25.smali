.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;
.super Ljava/lang/Object;
.source "ConversationOwnerManagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 596
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 599
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    .line 600
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversation:Lcom/alibaba/wukong/im/Conversation;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$25;->a:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->m(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->setOnlyOwnerModifiable(ZLcom/alibaba/wukong/Callback;)V

    .line 602
    :cond_0
    return-void
.end method
