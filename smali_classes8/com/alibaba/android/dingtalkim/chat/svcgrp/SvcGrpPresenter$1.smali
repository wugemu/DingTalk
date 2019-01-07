.class public final Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpPresenter$1;
.super Landroid/content/BroadcastReceiver;
.source "SvcGrpPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldfk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Ldfk;


# direct methods
.method public constructor <init>(Ldfk;)V
    .locals 0
    .param p1, "this$0"    # Ldfk;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpPresenter$1;->a:Ldfk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const-wide/16 v8, -0x1

    const/4 v2, -0x1

    .line 185
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1211
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    const-string/jumbo v1, "ServiceGroupResultAction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string/jumbo v1, "result_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 192
    .local v4, "type":I
    const-string/jumbo v1, "result_content"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "text":Ljava/lang/String;
    const-string/jumbo v1, "result_msg_id"

    invoke-virtual {p2, v1, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    .line 195
    .local v6, "msgId":J
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v4, v2, :cond_0

    cmp-long v1, v6, v8

    if-eqz v1, :cond_0

    .line 197
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/chat/svcgrp/SvcGrpPresenter$1;->a:Ldfk;

    .line 1209
    iget-object v1, v2, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    if-nez v1, :cond_2

    .line 1210
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "SvcGrpPresenter"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "doSvcGrpAction while conversation = null, msgId = "

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1213
    :cond_2
    iget-object v8, v2, Ldfk;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v9

    new-instance v1, Ldfk$1;

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Ldfk$1;-><init>(Ldfk;Landroid/content/Intent;ILjava/lang/String;J)V

    const-class v3, Lcom/alibaba/wukong/Callback;

    iget-object v2, v2, Ldfk;->a:Landroid/app/Activity;

    invoke-interface {v9, v1, v3, v2}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/Callback;

    invoke-interface {v8, v6, v7, v1}, Lcom/alibaba/wukong/im/Conversation;->getMessage(JLcom/alibaba/wukong/Callback;)V

    goto :goto_0
.end method
