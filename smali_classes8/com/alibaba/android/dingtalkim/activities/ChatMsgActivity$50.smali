.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;
.super Ljava/lang/Object;
.source "ChatMsgActivity.java"

# interfaces
.implements Lcom/alibaba/doraemon/image/ImageEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    .prologue
    .line 9065
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadProgressListener(Landroid/view/View;ILjava/lang/String;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "progress"    # I
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 9114
    return-void
.end method

.method public final onError(ILjava/lang/String;Ljava/lang/String;Landroid/view/View;)V
    .locals 7
    .param p1, "errCode"    # I
    .param p2, "errDes"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 9069
    if-eqz p4, :cond_0

    instance-of v5, p4, Lcom/alibaba/android/dingtalkbase/widgets/MakeupImageView;

    if-eqz v5, :cond_0

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    instance-of v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    if-eqz v5, :cond_0

    .line 9070
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 9106
    :cond_0
    :goto_0
    return-void

    .line 9073
    :cond_1
    new-instance v0, Lhzu;

    invoke-direct {v0}, Lhzu;-><init>()V

    .line 9074
    .local v0, "alarm":Lhzu;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 9075
    .local v1, "dt":Ljava/util/HashMap;
    invoke-static {p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9077
    .local v2, "mediaId":Ljava/lang/String;
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9078
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 9079
    .local v4, "uri":Landroid/net/Uri;
    if-eqz v4, :cond_2

    .line 9080
    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 9082
    .local v3, "path":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 9083
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v2

    .line 9090
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "uri":Landroid/net/Uri;
    :cond_2
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 9091
    const-string/jumbo v5, "mediaId"

    invoke-virtual {v1, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9093
    :cond_3
    const-string/jumbo v5, "errDes"

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9094
    const-string/jumbo v5, "errCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9095
    iget-object v5, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v5, v5, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v5, :cond_4

    .line 9096
    const-string/jumbo v5, "cid"

    iget-object v6, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity$50;->a:Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;

    iget-object v6, v6, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;->C:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v6}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9099
    :cond_4
    const-string/jumbo v5, "im"

    iput-object v5, v0, Lhzu;->a:Ljava/lang/String;

    .line 9100
    iput-object v1, v0, Lhzu;->b:Ljava/util/Map;

    .line 9101
    const/16 v5, 0xcb

    iput v5, v0, Lhzu;->c:I

    .line 9102
    const-string/jumbo v5, "\u7f29\u7565\u56fe\u5904\u7406\u5931\u8d25"

    iput-object v5, v0, Lhzu;->d:Ljava/lang/String;

    .line 9103
    invoke-static {}, Lhzr;->c()Lhzr;

    move-result-object v5

    invoke-virtual {v5, v0}, Lhzr;->a(Lhzu;)V

    goto :goto_0

    .line 9084
    .restart local v3    # "path":Ljava/lang/String;
    .restart local v4    # "uri":Landroid/net/Uri;
    :cond_5
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 9086
    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-static {v5, v6}, Lhv;->b([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public final onImageProcessListener(ILandroid/view/View;Ljava/lang/String;J)V
    .locals 0
    .param p1, "event"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "size"    # J

    .prologue
    .line 9110
    return-void
.end method

.method public final onMemoryOverflow(JJ[Ljava/lang/String;)V
    .locals 0
    .param p1, "maxSize"    # J
    .param p3, "currentSize"    # J
    .param p5, "activityStr"    # [Ljava/lang/String;

    .prologue
    .line 9118
    return-void
.end method
