.class final Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;
.super Ljava/lang/Object;
.source "DocScanForwardHandler.java"

# interfaces
.implements Lgqt;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/LinkedList;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;Ljava/util/LinkedList;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    iput-boolean p3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 196
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "MsgForward"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "uploadFile2Space onFailed time:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 199
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 203
    :goto_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 204
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    new-instance v3, Ldiz;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v3, v4}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 205
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    .line 232
    :cond_0
    :goto_1
    return-void

    .line 201
    :cond_1
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "im"

    const-string/jumbo v3, "MsgForward"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "MsgForward upload exception "

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    new-instance v3, Ldiz;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v3, v4}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v4, v4, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 229
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    goto :goto_1

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, p0

    .line 209
    .local v1, "that":Lgqt;
    :try_start_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;

    invoke-direct {v3, p0, v1}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$2;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;Lgqt;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public final onProgress(JJ)V
    .locals 0
    .param p1, "l"    # J
    .param p3, "l1"    # J

    .prologue
    .line 145
    return-void
.end method

.method public final onSuccess(Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 12
    .param p1, "spaceDo"    # Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 149
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "DocScanForwardHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "uploadFile2Space onSuccess time:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    if-eqz p1, :cond_0

    .line 152
    const/4 v1, 0x0

    :try_start_0
    iput v1, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->privateTag:I

    .line 153
    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;-><init>(ZLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;II)V

    .line 154
    .local v0, "spaceForwardHandler":Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;Z)V

    .line 157
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    new-instance v2, Ldiz;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, v3}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 163
    .end local v0    # "spaceForwardHandler":Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    new-instance v2, Ldiz;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, v3}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    .line 192
    :cond_1
    :goto_1
    return-void

    .line 160
    .restart local v0    # "spaceForwardHandler":Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpaceMessage(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;ZLjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v0    # "spaceForwardHandler":Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;
    :catch_0
    move-exception v8

    .line 186
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "MsgForward"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v4, "MsgForward upload exception "

    aput-object v4, v3, v10

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-static {v3}, Lhda;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->a:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    new-instance v2, Ldiz;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {v2, v3}, Ldiz;-><init>(Lcom/alibaba/wukong/im/Conversation;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->sendText(Ldiz;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->e:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;->c:Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-static {v1, v2}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler;Landroid/app/Activity;)V

    goto :goto_1

    .line 168
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_3
    move-object v9, p0

    .line 169
    .local v9, "that":Lgqt;
    :try_start_1
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$1;

    invoke-direct {v2, p0, v9}, Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/DocScanForwardHandler$1$1;Lgqt;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method
