.class final Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;
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
.field final synthetic a:Landroid/widget/ToggleButton;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;Landroid/widget/ToggleButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;->a:Landroid/widget/ToggleButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 892
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;->a:Landroid/widget/ToggleButton;

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v0, "1"

    .line 893
    .local v0, "value":Ljava/lang/String;
    :goto_0
    invoke-static {}, Ldyn;->a()Ldyn;

    move-result-object v1

    invoke-virtual {v1}, Ldyn;->c()Ldxx;

    move-result-object v2

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;)V

    const-class v4, Lcma;

    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity$11;->b:Lcom/alibaba/android/dingtalkim/activities/ConversationOwnerManagerActivity;

    .line 894
    invoke-static {v1, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    .line 893
    invoke-interface {v2, v3, v0, v1}, Ldxx;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 910
    return-void

    .line 892
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method
