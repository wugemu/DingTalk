.class final Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;
.super Ljava/lang/Object;
.source "EncryptPhotoFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/wukong/im/Message;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 67
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 55
    check-cast p1, Ljava/util/List;

    .line 1058
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v0, p1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Ljava/util/List;)Ljava/util/List;

    .line 1060
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-static {v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;)Lcom/alibaba/wukong/im/Message;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;Ljava/util/List;Lcom/alibaba/wukong/im/Message;)V

    .line 1061
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment$1;->a:Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptPhotoFragment;->h()V

    .line 55
    :cond_0
    return-void
.end method
