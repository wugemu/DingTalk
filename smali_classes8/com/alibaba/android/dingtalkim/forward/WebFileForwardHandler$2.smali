.class final Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;
.super Ljava/lang/Object;
.source "WebFileForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->sendWebFile(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 103
    :cond_0
    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_1

    move-object v5, p1

    .line 104
    check-cast v5, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 105
    .local v5, "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v8, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    new-instance v0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$200(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$300(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$400(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)I

    move-result v6

    iget-object v4, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v4}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$500(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)I

    move-result v7

    move v4, v1

    invoke-direct/range {v0 .. v7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;-><init>(ZLcom/alibaba/wukong/im/Message;Ljava/lang/String;ZLcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;II)V

    invoke-static {v8, v0}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$102(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;)Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .line 106
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->mMsgForwardStatistics:Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->setMsgForwardStatistics(Lcom/alibaba/android/dingtalkim/forward/MsgForwardStatistics;)V

    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->d:Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler;)Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->share2SingleConversationWithAppend(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;)V

    .line 109
    .end local v5    # "spaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    :cond_1
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/WebFileForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 121
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    sget v0, Lctk$i;->send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 129
    :goto_0
    return-void

    .line 123
    :cond_1
    const-string/jumbo v0, "13026000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 114
    return-void
.end method
