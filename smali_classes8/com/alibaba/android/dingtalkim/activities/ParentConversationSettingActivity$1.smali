.class final Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;
.super Ljava/lang/Object;
.source "ParentConversationSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

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
    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->status()Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    move-result-object v0

    sget-object v1, Lcom/alibaba/wukong/im/Conversation$ConversationStatus;->HIDE:Lcom/alibaba/wukong/im/Conversation$ConversationStatus;

    if-ne v0, v1, :cond_0

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->updateToVisible()V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->b(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Lcom/alibaba/wukong/im/Conversation;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity$1;->a:Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ParentConversationSettingActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Conversation;->stayOnTop(ZLcom/alibaba/wukong/Callback;)V

    .line 60
    :cond_1
    return-void
.end method
