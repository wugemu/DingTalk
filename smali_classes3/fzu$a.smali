.class final Lfzu$a;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Lcom/alibaba/wukong/im/Uploader$UploadParams;Lcom/alibaba/wukong/im/Uploader$UploadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

.field final synthetic b:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic c:Lcom/alibaba/wukong/im/MessageContent;

.field final synthetic d:Lcom/alibaba/wukong/im/Message;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/im/Uploader$UploadListener;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/wukong/im/MessageContent;Lcom/alibaba/wukong/im/Message;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 2608
    iput-object p1, p0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    iput-object p2, p0, Lfzu$a;->b:Lcom/alibaba/wukong/im/Conversation;

    iput-object p3, p0, Lfzu$a;->c:Lcom/alibaba/wukong/im/MessageContent;

    iput-object p4, p0, Lfzu$a;->d:Lcom/alibaba/wukong/im/Message;

    iput-object p5, p0, Lfzu$a;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "x0"    # Lfzu$a;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 2608
    .line 3747
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "encryptFileUpload: "

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "filePath = "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lfzu$a;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "messageId = "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lfzu$a;->d:Lcom/alibaba/wukong/im/Message;

    .line 3749
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Message;->messageId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "conversationId = "

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lfzu$a;->b:Lcom/alibaba/wukong/im/Conversation;

    .line 3750
    invoke-interface {v2}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "messageContentType = "

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lfzu$a;->c:Lcom/alibaba/wukong/im/MessageContent;

    .line 3751
    invoke-interface {v2}, Lcom/alibaba/wukong/im/MessageContent;->type()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 3747
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3752
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    const/4 v3, 0x0

    .line 3753
    invoke-static {v0, p2, p3, v3}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3752
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    return-void
.end method
