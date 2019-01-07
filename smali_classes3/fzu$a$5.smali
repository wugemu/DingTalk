.class final Lfzu$a$5;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

.field final synthetic b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

.field final synthetic c:Lfzu$a;


# direct methods
.method constructor <init>(Lfzu$a;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$a;

    .prologue
    .line 2736
    iput-object p1, p0, Lfzu$a$5;->c:Lfzu$a;

    iput-object p2, p0, Lfzu$a$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iput-object p3, p0, Lfzu$a$5;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2740
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lfzu$a$5;->c:Lfzu$a;

    iget-object v2, v2, Lfzu$a;->d:Lcom/alibaba/wukong/im/Message;

    iget-object v3, p0, Lfzu$a$5;->a:Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;

    iget-object v4, p0, Lfzu$a$5;->b:Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Message;Lcom/alibaba/android/dingtalkbase/models/dos/space/SpaceDo;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)Lcom/alibaba/wukong/im/MessageContent;

    move-result-object v0

    .line 2741
    .local v0, "encryptMessageContent":Lcom/alibaba/wukong/im/MessageContent;
    iget-object v1, p0, Lfzu$a$5;->c:Lfzu$a;

    iget-object v1, v1, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v1, v0}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onSuccess(Ljava/lang/Object;)V

    .line 2742
    return-void
.end method
