.class Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$CreateOrgPublicGroupAction;
.super Ljava/lang/Object;
.source "Chat.java"

# interfaces
.implements Lcom/alibaba/android/dingtalkbase/utils/ActivityLogicInjecter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/plugin/biz/Chat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CreateOrgPublicGroupAction"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$1;

    .prologue
    .line 718
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/biz/Chat$CreateOrgPublicGroupAction;-><init>()V

    return-void
.end method


# virtual methods
.method public doLogic(Landroid/app/Activity;[Ljava/lang/Object;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "objects"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 721
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    array-length v2, p2

    if-lez v2, :cond_0

    aget-object v2, p2, v3

    instance-of v2, v2, Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_0

    .line 722
    aget-object v0, p2, v3

    check-cast v0, Lcom/alibaba/wukong/im/Conversation;

    .line 723
    .local v0, "conversation":Lcom/alibaba/wukong/im/Conversation;
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "jsapi_create_public_group_success"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 724
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "conversation_id"

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 725
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 726
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 728
    .end local v0    # "conversation":Lcom/alibaba/wukong/im/Conversation;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 733
    return-void
.end method
