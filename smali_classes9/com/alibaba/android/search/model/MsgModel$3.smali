.class final Lcom/alibaba/android/search/model/MsgModel$3;
.super Ljava/lang/Object;
.source "MsgModel.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/search/model/MsgModel;->onClick(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/search/model/MsgModel;


# direct methods
.method constructor <init>(Lcom/alibaba/android/search/model/MsgModel;ILandroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/search/model/MsgModel;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    iput p2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->a:I

    iput-object p3, p0, Lcom/alibaba/android/search/model/MsgModel$3;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIntentRewrite(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 451
    const-string/jumbo v1, "title"

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/MsgModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 452
    const-string/jumbo v1, "keyword"

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    iget-object v2, v2, Lcom/alibaba/android/search/model/MsgModel;->mKeyword:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 453
    const-string/jumbo v1, "cid"

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/MsgModel;->getCid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->access$100(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->access$100(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 455
    const-string/jumbo v2, "intent_key_search_table"

    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->access$100(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v1

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->mConversationMap:Ljava/util/Map;

    const-string/jumbo v3, "tableName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 457
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-static {v1}, Lcom/alibaba/android/search/model/MsgModel;->access$200(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 458
    const-string/jumbo v1, "intent_key_search_narrow"

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-static {v2}, Lcom/alibaba/android/search/model/MsgModel;->access$200(Lcom/alibaba/android/search/model/MsgModel;)Lcom/alibaba/android/dingtalk/search/base/model/MsgNarrowModel;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 460
    :cond_1
    const-string/jumbo v1, "intent_key_search_uuid"

    iget-object v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->c:Lcom/alibaba/android/search/model/MsgModel;

    invoke-virtual {v2}, Lcom/alibaba/android/search/model/MsgModel;->getLogUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string/jumbo v1, "intent_key_search_count"

    iget v2, p0, Lcom/alibaba/android/search/model/MsgModel$3;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 464
    iget-object v1, p0, Lcom/alibaba/android/search/model/MsgModel$3;->b:Landroid/app/Activity;

    instance-of v1, v1, Lenw;

    if-eqz v1, :cond_2

    .line 465
    iget-object v0, p0, Lcom/alibaba/android/search/model/MsgModel$3;->b:Landroid/app/Activity;

    check-cast v0, Lenw;

    .line 466
    .local v0, "watcher":Lenw;
    const-string/jumbo v1, "extra_menu_watcher"

    invoke-interface {v0}, Lenw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 469
    .end local v0    # "watcher":Lenw;
    :cond_2
    return-object p1
.end method
