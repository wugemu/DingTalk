.class final Lfzu$26;
.super Ljava/lang/Object;
.source "SpaceNavigator.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfzu;->a(Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgrc;Lgpe$b;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic a:Lgrc;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lgpe$b;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;


# direct methods
.method constructor <init>(Lgrc;Landroid/content/Context;Lgpe$b;Lcom/alibaba/wukong/im/Conversation;)V
    .locals 0

    .prologue
    .line 2534
    iput-object p1, p0, Lfzu$26;->a:Lgrc;

    iput-object p2, p0, Lfzu$26;->b:Landroid/content/Context;

    iput-object p3, p0, Lfzu$26;->c:Lgpe$b;

    iput-object p4, p0, Lfzu$26;->d:Lcom/alibaba/wukong/im/Conversation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2534
    check-cast p1, Ljava/lang/String;

    .line 4537
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4538
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfzu$26;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    :goto_0
    return-void

    .line 4541
    :cond_0
    iget-object v0, p0, Lfzu$26;->a:Lgrc;

    .line 5060
    iput-object p1, v0, Lgrc;->a:Ljava/lang/String;

    .line 4542
    iget-object v0, p0, Lfzu$26;->b:Landroid/content/Context;

    iget-object v1, p0, Lfzu$26;->a:Lgrc;

    const/4 v2, 0x0

    iget-object v3, p0, Lfzu$26;->c:Lgpe$b;

    invoke-static {v0, v1, v2, v3}, Lfzu;->a(Landroid/content/Context;Lgrc;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgpe$b;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 2551
    .line 3558
    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v2, "uploadFile2Space"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string/jumbo v2, ", conversationId = "

    aput-object v2, v1, v0

    const/4 v2, 0x2

    iget-object v0, p0, Lfzu$26;->d:Lcom/alibaba/wukong/im/Conversation;

    if-nez v0, :cond_1

    const-string/jumbo v0, "null"

    .line 3559
    :goto_0
    aput-object v0, v1, v2

    .line 3558
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3560
    const-string/jumbo v1, "CSpace"

    sget-object v2, Lfzu;->c:Ljava/lang/String;

    .line 3561
    invoke-static {v0, p1, p2, v4}, Lgot;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 3560
    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2552
    iget-object v0, p0, Lfzu$26;->c:Lgpe$b;

    if-eqz v0, :cond_0

    .line 2553
    iget-object v0, p0, Lfzu$26;->c:Lgpe$b;

    const-wide/16 v2, -0x1

    invoke-interface {v0, v2, v3, v4, v4}, Lgpe$b;->a(JLcom/alibaba/alimei/cspace/model/DentryModel;Lggs;)V

    .line 2555
    :cond_0
    return-void

    .line 3558
    :cond_1
    iget-object v0, p0, Lfzu$26;->d:Lcom/alibaba/wukong/im/Conversation;

    .line 3559
    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->conversationId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2547
    return-void
.end method
