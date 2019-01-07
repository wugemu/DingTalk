.class final Lcom/alibaba/android/ding/widget/DingAttachmentView$5;
.super Landroid/content/BroadcastReceiver;
.source "DingAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ding/widget/DingAttachmentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/widget/DingAttachmentView;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/widget/DingAttachmentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/ding/widget/DingAttachmentView;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 354
    if-eqz p2, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->c(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_1

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "choose_picture_ids"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 359
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v4, "send_origin_picture"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 360
    .local v1, "sendOrigin":Z
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 363
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 364
    .local v3, "url":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    const-string/jumbo v4, "[DingAttachmentView]chooseFromAlbum failed"

    const-string/jumbo v5, "-1"

    const-string/jumbo v6, "url is null"

    invoke-static {v4, v5, v6}, Lbkr;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 368
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4, v3, v1}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Ljava/lang/String;Z)V

    .line 369
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 370
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;->b()V

    goto :goto_0

    .line 372
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v1    # "sendOrigin":Z
    .end local v3    # "url":Ljava/lang/String;
    :cond_3
    if-eqz p2, :cond_0

    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->l(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 373
    const-string/jumbo v4, "msg_entity_list"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 374
    .local v2, "spaceDos":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;>;"
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 375
    iget-object v5, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {v5, v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->a(Lcom/alibaba/android/ding/widget/DingAttachmentView;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V

    .line 377
    :cond_4
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/alibaba/android/ding/widget/DingAttachmentView$5;->a:Lcom/alibaba/android/ding/widget/DingAttachmentView;

    invoke-static {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView;->k(Lcom/alibaba/android/ding/widget/DingAttachmentView;)Lcom/alibaba/android/ding/widget/DingAttachmentView$a;

    move-result-object v4

    invoke-interface {v4}, Lcom/alibaba/android/ding/widget/DingAttachmentView$a;->b()V

    goto/16 :goto_0
.end method
