.class final Lfzu$a$2;
.super Lgqq;
.source "SpaceNavigator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfzu$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfzu$a;


# direct methods
.method constructor <init>(Lfzu$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$a;

    .prologue
    .line 2638
    iput-object p1, p0, Lfzu$a$2;->b:Lfzu$a;

    iput-object p2, p0, Lfzu$a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lgqq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Void;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Void;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2641
    invoke-super {p0, p1}, Lgqq;->a(Ljava/lang/Void;)V

    .line 2642
    iget-object v0, p0, Lfzu$a$2;->b:Lfzu$a;

    iget-object v2, p0, Lfzu$a$2;->a:Ljava/lang/String;

    .line 3661
    new-instance v6, Lfzu$a$3;

    invoke-direct {v6, v0, v2}, Lfzu$a$3;-><init>(Lfzu$a;Ljava/lang/String;)V

    .line 3682
    iget-object v1, v0, Lfzu$a;->d:Lcom/alibaba/wukong/im/Message;

    invoke-interface {v1}, Lcom/alibaba/wukong/im/Message;->conversation()Lcom/alibaba/wukong/im/Conversation;

    move-result-object v1

    invoke-static {v1}, Lgpt;->c(Lcom/alibaba/wukong/im/Conversation;)J

    move-result-wide v4

    .line 3683
    invoke-static {}, Lglf;->a()Lglf;

    move-result-object v1

    iget-object v3, v0, Lfzu$a;->e:Ljava/lang/String;

    invoke-virtual/range {v1 .. v6}, Lglf;->a(Ljava/lang/String;Ljava/lang/String;JLcma;)V

    .line 2643
    return-void
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2638
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lfzu$a$2;->a(Ljava/lang/Void;)V

    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2652
    invoke-super {p0, p1, p2}, Lgqq;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2653
    iget-object v0, p0, Lfzu$a$2;->b:Lfzu$a;

    const-string/jumbo v1, "checkAccountLogin"

    invoke-static {v0, v1, p1, p2}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    iget-object v0, p0, Lfzu$a$2;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2647
    invoke-super {p0, p1, p2}, Lgqq;->onProgress(Ljava/lang/Object;I)V

    .line 2648
    return-void
.end method
