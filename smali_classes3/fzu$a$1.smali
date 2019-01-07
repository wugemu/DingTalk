.class final Lfzu$a$1;
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
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfzu$a;


# direct methods
.method constructor <init>(Lfzu$a;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$a;

    .prologue
    .line 2614
    iput-object p1, p0, Lfzu$a$1;->a:Lfzu$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2614
    check-cast p1, Ljava/lang/String;

    .line 3617
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3618
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfzu$a$1;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3619
    :goto_0
    return-void

    .line 3621
    :cond_0
    iget-object v0, p0, Lfzu$a$1;->a:Lfzu$a;

    .line 4638
    new-instance v1, Lfzu$a$2;

    invoke-direct {v1, v0, p1}, Lfzu$a$2;-><init>(Lfzu$a;Ljava/lang/String;)V

    .line 4657
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    invoke-static {v1}, Lfzu;->a(Lgqq;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2630
    iget-object v0, p0, Lfzu$a$1;->a:Lfzu$a;

    const-string/jumbo v1, "checkConversationSpaceId"

    invoke-static {v0, v1, p1, p2}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    iget-object v0, p0, Lfzu$a$1;->a:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2632
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2626
    return-void
.end method
