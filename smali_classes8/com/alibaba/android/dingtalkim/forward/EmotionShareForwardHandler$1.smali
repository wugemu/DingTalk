.class final Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;
.super Ljava/lang/Object;
.source "EmotionShareForwardHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->send2ConversationsImpl(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic b:Ldiz;

.field final synthetic c:Ldiz;

.field final synthetic d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Ldiz;Ldiz;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->b:Ldiz;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->c:Ldiz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 71
    invoke-static {}, Ldpt;->a()Ldpt;

    move-result-object v0

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    invoke-static {v2}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->access$000(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ligb;->g(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldpt;->e(J)Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;

    move-result-object v7

    .line 72
    .local v7, "emotionPackageObject":Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;
    if-nez v7, :cond_0

    .line 73
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->onFail(I)V

    .line 74
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0, v2, v5}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    .line 102
    :goto_0
    return-void

    .line 77
    :cond_0
    const/4 v4, 0x0

    .line 79
    .local v4, "picUrl":Ljava/lang/String;
    :try_start_0
    iget-object v0, v7, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->iconMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 83
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "https://qr.dingtalk.com/page/emotion?pkgId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, v7, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->packageId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "emotionShareUrl":Ljava/lang/String;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->b:Ldiz;

    new-instance v2, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1$1;-><init>(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;)V

    .line 1131
    iput-object v2, v0, Ldiz;->b:Ldiz$a;

    .line 100
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->b:Ldiz;

    iget-object v2, v7, Lcom/alibaba/android/dingtalkim/models/EmotionPackageObject;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->access$100(Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v0 .. v5}, Ldiz;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 101
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->d:Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler$1;->a:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkim/forward/EmotionShareForwardHandler;->checkComplete(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Z)V

    goto :goto_0

    .line 80
    .end local v1    # "emotionShareUrl":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 81
    .local v6, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v6}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
