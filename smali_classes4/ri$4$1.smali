.class final Lri$4$1;
.super Ljava/lang/Object;
.source "MailEventDetailActivityPresenter.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lri$4;->run()V
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
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lri$4;


# direct methods
.method constructor <init>(Lri$4;)V
    .locals 0
    .param p1, "this$1"    # Lri$4;

    .prologue
    .line 731
    iput-object p1, p0, Lri$4$1;->a:Lri$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lri$4$1;->a:Lri$4;

    iget-object v0, v0, Lri$4;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 742
    iget-object v0, p0, Lri$4$1;->a:Lri$4;

    iget-object v0, v0, Lri$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/wukong/Callback;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    :cond_0
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 731
    return-void
.end method

.method public final bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 731
    check-cast p1, Ljava/util/List;

    .line 1734
    iget-object v0, p0, Lri$4$1;->a:Lri$4;

    iget-object v0, v0, Lri$4;->b:Lcom/alibaba/wukong/Callback;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Lri$4$1;->a:Lri$4;

    iget-object v0, v0, Lri$4;->b:Lcom/alibaba/wukong/Callback;

    invoke-interface {v0, p1}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    .line 731
    :cond_0
    return-void
.end method
