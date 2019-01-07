.class final Lcuw$2;
.super Ljava/lang/Object;
.source "EncryptImageViewHolder.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcuw;->a(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V
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

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic d:Lcuw;


# direct methods
.method constructor <init>(Lcuw;Lcom/alibaba/wukong/im/Message;Landroid/app/Activity;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;)V
    .locals 0
    .param p1, "this$0"    # Lcuw;

    .prologue
    .line 302
    iput-object p1, p0, Lcuw$2;->d:Lcuw;

    iput-object p2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    iput-object p3, p0, Lcuw$2;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcuw$2;->c:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 302
    check-cast p1, Ljava/lang/String;

    .line 1305
    iget-object v0, p0, Lcuw$2;->d:Lcuw;

    invoke-virtual {v0}, Lcuw;->s()V

    .line 1306
    iget-object v0, p0, Lcuw$2;->d:Lcuw;

    iget-object v0, v0, Lcuw;->Y:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    iget-object v1, v1, Lcuw;->X:Lcom/alibaba/wukong/im/Message;

    if-ne v0, v1, :cond_1

    .line 1308
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "EncryptImageViewHolder"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "download Image onDataReceived msgId "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1310
    iget-object v0, p0, Lcuw$2;->d:Lcuw;

    invoke-static {v0, p1}, Lcuw;->a(Lcuw;Ljava/lang/String;)Ljava/lang/String;

    .line 2078
    new-instance v6, Lhcg$a;

    invoke-direct {v6}, Lhcg$a;-><init>()V

    .line 1312
    iget-object v0, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->messageContent()Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;

    .line 1313
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getOrientation()I

    move-result v1

    .line 2114
    iput v1, v6, Lhcg$a;->e:I

    .line 1314
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 1315
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicWidth()I

    move-result v1

    .line 2129
    iput v1, v6, Lhcg$a;->g:I

    .line 1316
    invoke-interface {v0}, Lcom/alibaba/wukong/im/MessageContent$EncryptImageContent;->getPicHeight()I

    move-result v0

    .line 2134
    iput v0, v6, Lhcg$a;->h:I

    .line 3109
    :cond_0
    iput-boolean v7, v6, Lhcg$a;->c:Z

    .line 1319
    const/16 v0, 0xa

    .line 3119
    iput v0, v6, Lhcg$a;->f:I

    .line 3124
    iput-boolean v7, v6, Lhcg$a;->d:Z

    .line 1322
    iget-object v0, p0, Lcuw$2;->d:Lcuw;

    iget-object v1, p0, Lcuw$2;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-virtual {v0, v1, v2}, Lcuw;->b(Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 1323
    iget-object v0, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcuw$2;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    iget-object v1, v1, Lcuw;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->localId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcuw$2;->d:Lcuw;

    invoke-static {v3}, Lcuw;->a(Lcuw;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcuw$2;->d:Lcuw;

    iget-object v4, v4, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcuw$2;->d:Lcuw;

    iget-object v5, v5, Lcuw;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    .line 1329
    :goto_0
    iget-object v0, p0, Lcuw$2;->d:Lcuw;

    invoke-static {v0}, Lcuw;->b(Lcuw;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcuw$2$1;

    invoke-direct {v1, p0, p1}, Lcuw$2$1;-><init>(Lcuw$2;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1339
    :cond_1
    :goto_1
    return-void

    .line 1326
    :cond_2
    iget-object v0, p0, Lcuw$2;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    iget-object v1, v1, Lcuw;->S:Landroid/widget/ImageView;

    iget-object v2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcuw$2;->d:Lcuw;

    invoke-static {v3}, Lcuw;->a(Lcuw;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcuw$2;->d:Lcuw;

    iget-object v4, v4, Lcuw;->b:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, p0, Lcuw$2;->d:Lcuw;

    iget-object v5, v5, Lcuw;->L:Landroid/view/View;

    check-cast v5, Landroid/widget/AbsListView;

    invoke-static/range {v0 .. v6}, Lhcg;->b(Landroid/app/Activity;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/image/ImageMagician;Landroid/widget/AbsListView;Lhcg$a;)V

    goto :goto_0

    .line 1340
    :cond_3
    const-string/jumbo v0, "crypto"

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "encrypt voice download file is null msgId"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 352
    const-string/jumbo v1, "13023000"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    iget-object v2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2}, Lcuw;->a(Lcuw;Lcom/alibaba/wukong/im/Message;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    invoke-static {v1}, Lcuw;->c(Lcuw;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    iget-object v2, p0, Lcuw$2;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-static {v1, v2, v3}, Lcuw;->a(Lcuw;Landroid/app/Activity;Lcom/alibaba/wukong/im/Message;)V

    .line 363
    :goto_0
    return-void

    .line 358
    :cond_0
    iget-object v1, p0, Lcuw$2;->d:Lcuw;

    invoke-virtual {v1}, Lcuw;->t()V

    .line 360
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v0

    .line 361
    .local v0, "ddStringBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "encrypt image download file failed "

    invoke-virtual {v0, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcuw$2;->a:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(J)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 362
    const-string/jumbo v1, "crypto"

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 348
    return-void
.end method
