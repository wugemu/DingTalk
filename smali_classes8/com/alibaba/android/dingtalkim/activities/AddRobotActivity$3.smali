.class final Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$3;
.super Ljava/lang/Object;
.source "AddRobotActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 266
    const-string/jumbo v1, "intent_key_group_selection_do_logic"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 268
    const-string/jumbo v1, "intent_key_group_selection_show_search_action_bar"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    new-instance v0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$3;->a:Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;

    .line 271
    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;->c(Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity;)Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;-><init>(Lcom/alibaba/android/dingtalkim/base/model/BotTemplateModelObject;)V

    .line 272
    .local v0, "injector":Lcom/alibaba/android/dingtalkim/activities/AddRobotActivity$ConversationGroupSelectorInjector;
    const-string/jumbo v1, "choose_people_from_contact_logic"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 274
    return-object p1
.end method
