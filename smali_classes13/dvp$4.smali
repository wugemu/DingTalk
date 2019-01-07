.class final Ldvp$4;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvp;->b()V
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
        "Lcom/alibaba/android/dingtalkim/models/BusinessItemObject;",
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
    .line 261
    iput-object p1, p0, Ldvp$4;->a:Ldvp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 261
    check-cast p1, Ljava/util/List;

    .line 1265
    if-eqz p1, :cond_3

    .line 1266
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 2056
    iget-object v1, v1, Ldvp;->c:Ljava/util/List;

    .line 1266
    if-nez v1, :cond_0

    .line 1267
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3056
    iput-object v2, v1, Ldvp;->c:Ljava/util/List;

    .line 1269
    :cond_0
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 4056
    iget-object v1, v1, Ldvp;->c:Ljava/util/List;

    .line 1269
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1271
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    invoke-static {v1, p1}, Ldvp;->a(Ldvp;Ljava/util/List;)V

    .line 1272
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 5056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1272
    if-eqz v1, :cond_2

    .line 1273
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 6056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, p1, v0}, Ldvy;->a(Ljava/util/List;Z)V

    :cond_2
    :goto_0
    return-void

    .line 1276
    :cond_3
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 7056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1276
    if-eqz v1, :cond_2

    .line 1277
    iget-object v1, p0, Ldvp$4;->a:Ldvp;

    .line 8056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1277
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ldvy;->a(Ljava/util/List;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 285
    return-void
.end method
