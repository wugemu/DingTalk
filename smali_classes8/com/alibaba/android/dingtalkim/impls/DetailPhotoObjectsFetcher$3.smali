.class final Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;
.super Ljava/lang/Object;
.source "DetailPhotoObjectsFetcher.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;->getPhotoUrl(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Lcom/alibaba/wukong/Callback;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic d:Lcom/alibaba/doraemon/image/ImageMagician;

.field final synthetic e:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;Lcom/alibaba/wukong/im/Message;Lcom/alibaba/wukong/Callback;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/doraemon/image/ImageMagician;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->e:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    iput-object p2, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->b:Lcom/alibaba/wukong/Callback;

    iput-object p4, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p5, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 107
    check-cast p1, Ljava/lang/String;

    .line 1110
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "MessageEncryptPhotoObjectsFetcher"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "downloadImage onDataReceived msgId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->a:Lcom/alibaba/wukong/im/Message;

    .line 1111
    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1110
    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1112
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1113
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 1114
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->e:Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;->access$000(Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3$1;-><init>(Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 134
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v1, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 137
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "encrypt image download file failed "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/impls/DetailPhotoObjectsFetcher$3;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    .line 138
    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 139
    const-string/jumbo v1, "crypto"

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 130
    return-void
.end method
