.class final Lfzu$a$3;
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
        "Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lfzu$a;


# direct methods
.method constructor <init>(Lfzu$a;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lfzu$a;

    .prologue
    .line 2661
    iput-object p1, p0, Lfzu$a$3;->b:Lfzu$a;

    iput-object p2, p0, Lfzu$a$3;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 2661
    check-cast p1, Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;

    .line 3664
    if-nez p1, :cond_0

    .line 3665
    const-string/jumbo v0, "null result"

    sget v1, Lfzs$h;->dt_cspace_invalid_result_tip:I

    invoke-static {v1}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfzu$a$3;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 5075
    :goto_0
    return-void

    .line 3668
    :cond_0
    iget-object v0, p0, Lfzu$a$3;->b:Lfzu$a;

    iget-object v1, p0, Lfzu$a$3;->a:Ljava/lang/String;

    .line 4687
    new-instance v2, Lfzu$a$4;

    invoke-direct {v2, v0, p1}, Lfzu$a$4;-><init>(Lfzu$a;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;)V

    .line 4731
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lglo;->a(Landroid/content/Context;)Lglo;

    move-result-object v0

    .line 5073
    if-eqz p1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5074
    :cond_1
    const-string/jumbo v0, "10600"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v3, Lfzs$h;->space_save_param_error:I

    invoke-virtual {v1, v3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5078
    :cond_2
    invoke-static {}, Lfzu;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lgoj;->a(Ljava/lang/String;)Lgoj;

    move-result-object v3

    new-instance v4, Lglo$1;

    invoke-direct {v4, v0, v1, p1, v2}, Lglo$1;-><init>(Lglo;Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lcma;)V

    invoke-virtual {v3, v1, p1, v4}, Lgoj;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalkim/base/model/CryptionDo;Lgoi;)V

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
    .line 2678
    iget-object v0, p0, Lfzu$a$3;->b:Lfzu$a;

    const-string/jumbo v1, "encryptBeforeUpload"

    invoke-static {v0, v1, p1, p2}, Lfzu$a;->a(Lfzu$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2679
    iget-object v0, p0, Lfzu$a$3;->b:Lfzu$a;

    iget-object v0, v0, Lfzu$a;->a:Lcom/alibaba/wukong/im/Uploader$UploadListener;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/im/Uploader$UploadListener;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2680
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2674
    return-void
.end method
