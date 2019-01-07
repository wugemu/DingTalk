.class final Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;
.super Ljava/lang/Object;
.source "EncryptPhotoFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 708
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    sget v1, Liff$f;->pic_save_fail:I

    invoke-virtual {v0, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Ljava/lang/String;)V

    .line 711
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 698
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 698
    check-cast p1, Ljava/lang/String;

    .line 1701
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a$2;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;

    iget-object v1, v1, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$a;->h:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    sget v2, Liff$f;->pic_save_success:I

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lhcn;->a(Ljava/lang/String;)V

    .line 698
    :cond_0
    return-void
.end method
