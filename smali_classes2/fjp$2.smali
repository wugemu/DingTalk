.class final Lfjp$2;
.super Ljava/lang/Object;
.source "LocalContactPresenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfjp;
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
        "Ljava/util/List",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lfjp;


# direct methods
.method constructor <init>(Lfjp;)V
    .locals 0
    .param p1, "this$0"    # Lfjp;

    .prologue
    .line 218
    iput-object p1, p0, Lfjp$2;->a:Lfjp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 218
    check-cast p1, Ljava/util/List;

    .line 1221
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1222
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->b(Lfjp;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, v0}, Lflw;->b(Ljava/util/List;Ljava/util/Map;)V

    .line 1223
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->d(Lfjp;)V

    .line 1224
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1225
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v2

    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 218
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 1225
    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->d(Lfjp;)V

    .line 237
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->c(Lfjp;)Lfir;

    move-result-object v2

    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfjp$2;->a:Lfjp;

    invoke-static {v0}, Lfjp;->a(Lfjp;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    invoke-interface {v2, v1, v0}, Lfir;->a(ZI)V

    .line 240
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 238
    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 232
    return-void
.end method
