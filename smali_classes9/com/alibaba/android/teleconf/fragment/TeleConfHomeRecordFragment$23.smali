.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Lcom/alibaba/doraemon/navigator/IntentRewriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->a:Ljava/util/List;

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
    .line 391
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->a:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 392
    .local v0, "confRecordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v0, :cond_1

    .line 393
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    .line 394
    .local v1, "uidsStr":Ljava/lang/String;
    const/4 v2, 0x4

    iget v3, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v2, v3, :cond_0

    .line 395
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v2, v0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 397
    :cond_0
    const-string/jumbo v2, "friend_new_request_ids"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    .end local v1    # "uidsStr":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "conversation_id"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->f(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string/jumbo v3, "conf_records_item_list"

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->a:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 401
    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->g(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v2}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 402
    const-string/jumbo v2, "conf_call_biz_call_info"

    iget-object v3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$23;->b:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;

    invoke-static {v3}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 404
    :cond_2
    const/high16 v2, 0x10000000

    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 405
    return-object p1
.end method
