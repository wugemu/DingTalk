.class final Lfzu$a$4;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu$a;
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
        "Lgrj;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

.field final synthetic b:Lfzu$a;


# direct methods
.method constructor <init>(Lfzu$a;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$a;

    .prologue
    .line 2687
    iput-object p1, p0, Lfzu$a$4;->b:Lfzu$a;

    iput-object p2, p0, Lfzu$a$4;->a:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2687
    check-cast p1, Lgrj;

    .line 3690
    if-nez p1, :cond_1

    .line 3691
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    const-string/jumbo v1, "uploadEncryptFile: null result"

    const-string/jumbo v2, "10603"

    sget v3, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3692
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    const-string/jumbo v1, "10603"

    sget v2, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3712
    :cond_0
    :goto_0
    return-void

    .line 4078
    :cond_1
    iget v0, p1, Lgrj;->b:I

    .line 3696
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 6093
    :pswitch_0
    iget-wide v0, p1, Lgrj;->d:J

    .line 3702
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 7086
    iget-wide v0, p1, Lgrj;->c:J

    .line 7093
    iget-wide v2, p1, Lgrj;->d:J

    .line 3705
    div-long/2addr v0, v2

    const-wide/16 v2, 0x64

    mul-long/2addr v0, v2

    long-to-int v0, v0

    .line 3706
    iget-object v1, p0, Lfzu$a$4;->b:Lfzu$a;

    iget-object v1, v1, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    .line 8093
    iget-wide v2, p1, Lgrj;->d:J

    .line 3706
    long-to-int v2, v2

    .line 9086
    iget-wide v4, p1, Lgrj;->c:J

    .line 3706
    long-to-int v3, v4

    invoke-interface {v1, v2, v3, v0}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onProgress(III)V

    goto :goto_0

    .line 3698
    :pswitch_1
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    .line 5070
    iget-object v1, p1, Lgrj;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    .line 3698
    iget-object v2, p0, Lfzu$a$4;->a:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 5735
    const-string/jumbo v3, "buildMsg"

    invoke-static {v3}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v3

    new-instance v4, Lfzu$a$5;

    invoke-direct {v4, v0, v1, v2}, Lfzu$a$5;-><init>(Lfzu$a;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)V

    invoke-interface {v3, v4}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3710
    :pswitch_2
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    const-string/jumbo v1, "uploadEncryptFile: pause"

    const-string/jumbo v2, "10603"

    sget v3, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3711
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    const-string/jumbo v1, "10603"

    sget v2, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 3715
    :pswitch_3
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    const-string/jumbo v1, "uploadEncryptFile: failed"

    const-string/jumbo v2, "10603"

    sget v3, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3716
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    const-string/jumbo v1, "10603"

    sget v2, Lfzs$h;->msg_space_upload_failed:I

    invoke-static {v2}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2727
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    const-string/jumbo v1, "uploadEncryptFile"

    invoke-static {v0, v1, p1, p2}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2728
    iget-object v0, p0, Lfzu$a$4;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2729
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2723
    return-void
.end method
