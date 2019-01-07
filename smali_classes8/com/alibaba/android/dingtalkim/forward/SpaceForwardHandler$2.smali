.class final Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;
.super Ljava/lang/Object;
.source "SpaceForwardHandler.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->sendSpace2IM(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    .prologue
    .line 667
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDataReceived(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 670
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    if-eqz v0, :cond_1

    move-object v3, p1

    .line 673
    check-cast v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 674
    .local v3, "resultSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;)Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    move-result-object v0

    iget v0, v0, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-ne v0, v5, :cond_0

    iget v0, v3, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->isEncrypt:I

    if-nez v0, :cond_0

    move v4, v5

    .line 675
    .local v4, "decryptBeforeSend":Z
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->e:Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->c:Ljava/lang/String;

    move v7, v5

    invoke-static/range {v0 .. v7}, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;->access$700(Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;ZZLjava/lang/String;Z)V

    .line 684
    .end local v3    # "resultSpaceDo":Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;
    .end local v4    # "decryptBeforeSend":Z
    :goto_0
    return-void

    .line 678
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 679
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 681
    :cond_2
    sget v0, Lctk$i;->space_send_fail:I

    invoke-static {v0}, Lcms;->a(I)V

    .line 682
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "SpaceForwardHandler"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v6, "SpaceInterface.sendSpace2IM return null : spaceId="

    aput-object v6, v2, v4

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->spaceId:Ljava/lang/String;

    aput-object v6, v2, v5

    const/4 v5, 0x2

    const-string/jumbo v6, ", fileId="

    aput-object v6, v2, v5

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->d:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;->fileId:Ljava/lang/String;

    aput-object v6, v2, v5

    .line 683
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 682
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 693
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 694
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 696
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 697
    invoke-static {p2}, Lcms;->a(Ljava/lang/String;)V

    .line 702
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 703
    .local v1, "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v2, :cond_1

    .line 704
    const-string/jumbo v2, "cid"

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/SpaceForwardHandler$2;->b:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_1
    const-string/jumbo v2, "code"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    const-string/jumbo v2, "desc"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 710
    .local v0, "alarm":Lhzu;
    const-string/jumbo v2, "file"

    iput-object v2, v0, Lhzu;->a:Ljava/lang/String;

    .line 711
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 712
    const/16 v2, 0x6a7

    iput v2, v0, Lhzu;->c:I

    .line 713
    const-string/jumbo v2, "\u53d1\u9001\u7ed9\u8054\u7cfb\u4eba\u5931\u8d25"

    iput-object v2, v0, Lhzu;->d:Ljava/lang/String;

    .line 714
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v2

    invoke-virtual {v2, v0}, Lhzr;->a(Lhzu;)V

    .line 715
    return-void

    .line 699
    .end local v0    # "alarm":Lhzu;
    .end local v1    # "dt":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 689
    return-void
.end method
