.class final Ldvp$5;
.super Ljava/lang/Object;
.source "BoxPresenterImpl.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldvp;->c()V
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
    .line 298
    iput-object p1, p0, Ldvp$5;->a:Ldvp;

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

    .line 298
    check-cast p1, Ljava/util/List;

    .line 1302
    if-eqz p1, :cond_4

    .line 1303
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    invoke-static {v1, p1}, Ldvp;->b(Ldvp;Ljava/util/List;)V

    .line 1304
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 2056
    iget-object v1, v1, Ldvp;->b:Ljava/util/List;

    .line 1304
    if-nez v1, :cond_0

    .line 1305
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3056
    iput-object v2, v1, Ldvp;->b:Ljava/util/List;

    .line 1307
    :cond_0
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 4056
    iget-object v1, v1, Ldvp;->i:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    .line 1307
    sget-object v2, Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;->PULL_FROM_DOWN:Lcom/alibaba/android/dingtalkim/onebox/LoadMoreDataType;

    if-ne v1, v2, :cond_3

    .line 1308
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 5056
    iget-object v1, v1, Ldvp;->b:Ljava/util/List;

    .line 1308
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1313
    :goto_0
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 7056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1313
    if-eqz v1, :cond_2

    .line 1314
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 8056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-lt v2, v3, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-interface {v1, p1, v0}, Ldvy;->b(Ljava/util/List;Z)V

    :cond_2
    :goto_1
    return-void

    .line 1310
    :cond_3
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 1311
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 6056
    iget-object v1, v1, Ldvp;->b:Ljava/util/List;

    .line 1311
    invoke-interface {v1, v0, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 1317
    :cond_4
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 9056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1317
    if-eqz v1, :cond_2

    .line 1318
    iget-object v1, p0, Ldvp$5;->a:Ldvp;

    .line 10056
    iget-object v1, v1, Ldvp;->a:Ldvy;

    .line 1318
    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ldvy;->b(Ljava/util/List;Z)V

    goto :goto_1
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 330
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 326
    return-void
.end method
