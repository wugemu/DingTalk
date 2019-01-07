.class final Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;
.super Ljava/lang/Object;
.source "EncryptGridFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->a(Landroid/os/Bundle;)V
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
.field final synthetic a:Lcom/alibaba/wukong/im/Message;

.field final synthetic b:Z

.field final synthetic c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;Lcom/alibaba/wukong/im/Message;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    iput-object p2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->a:Lcom/alibaba/wukong/im/Message;

    iput-boolean p3, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 51
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 39
    check-cast p1, Ljava/util/List;

    .line 1042
    if-eqz p1, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    iget-object v1, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->a:Lcom/alibaba/wukong/im/Message;

    iget-boolean v2, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->b:Z

    invoke-static {v0, p1, v1, v2}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->a(Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;Ljava/util/List;Lcom/alibaba/wukong/im/Message;Z)V

    .line 1045
    iget-object v0, p0, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment$1;->c:Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;

    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/browser/EncryptGridFragment;->b()V

    .line 39
    :cond_0
    return-void
.end method
