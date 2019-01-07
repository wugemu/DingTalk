.class final Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;
.super Ljava/lang/Object;
.source "ChatMsgBaseActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    .prologue
    .line 450
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    iput-wide p2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 469
    const-string/jumbo v0, "im"

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[getMarkdownMessageAndJump2Original] msgId:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-wide v4, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;->a:J

    .line 470
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, ",error, errCode:"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p1, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, ",errMsg:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p2, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 469
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 450
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 450
    check-cast p1, Lcom/alibaba/wukong/im/Message;

    .line 1454
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1455
    invoke-static {p1}, Ldma;->b(Lcom/alibaba/wukong/im/Message;)Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;

    move-result-object v0

    .line 1456
    if-eqz v0, :cond_0

    .line 1457
    iget-object v1, v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalCid:Ljava/lang/String;

    .line 1458
    iget-wide v2, v0, Lcom/alibaba/android/dingtalkim/base/model/MarkdownExtendDo;->originalMsgId:J

    .line 1459
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    .line 1460
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity$6;->b:Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgBaseActivity;->a(Ljava/lang/String;JZ)V

    .line 1461
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "chat_quote_markdown_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 450
    :cond_0
    return-void
.end method
