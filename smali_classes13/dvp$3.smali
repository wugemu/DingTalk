.class final Ldvp$3;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvp;->c(J)V
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
        "Lcom/alibaba/android/dingtalkim/models/WorkItemObject;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ldvp;


# direct methods
.method constructor <init>(Ldvp;)V
    .locals 0
    .param p1, "this$0"    # Ldvp;

    .prologue
    .line 204
    iput-object p1, p0, Ldvp$3;->a:Ldvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 204
    check-cast p1, Ljava/util/List;

    .line 2208
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 3056
    iput-boolean v0, v1, Ldvp;->g:Z

    .line 2209
    if-eqz p1, :cond_3

    .line 2210
    const-string/jumbo v1, "im"

    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getAllOAWorkList, size:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2211
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    invoke-static {v1, p1}, Ldvp;->b(Ldvp;Ljava/util/List;)V

    .line 2212
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 4056
    iget-object v1, v1, Ldvp;->b:Ljava/util/List;

    .line 2212
    if-nez v1, :cond_0

    .line 2213
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5056
    iput-object v2, v1, Ldvp;->b:Ljava/util/List;

    .line 2215
    :cond_0
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 6056
    iget-object v1, v1, Ldvp;->b:Ljava/util/List;

    .line 2215
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2217
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 7056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 2217
    if-eqz v1, :cond_2

    .line 2218
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 8056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 2218
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, p1, v0}, Ldvy;->b(Ljava/util/List;Z)V

    :cond_2
    :goto_0
    return-void

    .line 2221
    :cond_3
    const-string/jumbo v1, "im"

    const-string/jumbo v2, ""

    const-string/jumbo v3, "getAllOAWorkList, size:0"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 9056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 2222
    if-eqz v1, :cond_2

    .line 2223
    iget-object v1, p0, Ldvp$3;->a:Ldvp;

    .line 10056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 2223
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ldvy;->b(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 235
    iget-object v0, p0, Ldvp$3;->a:Ldvp;

    .line 1056
    const/4 v1, 0x0

    iput-boolean v1, v0, Ldvp;->g:Z

    .line 236
    const-string/jumbo v0, "onebox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2022
    const-string/jumbo v2, "im"

    invoke-static {v0, v1, v2}, Lhzt;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 231
    return-void
.end method
