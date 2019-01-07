.class final Lbbo$24;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbo;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lbhf$a;

.field final synthetic c:Lcma;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;ILbhf$a;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 3021
    iput-object p1, p0, Lbbo$24;->d:Lbbo;

    iput p2, p0, Lbbo$24;->a:I

    iput-object p3, p0, Lbbo$24;->b:Lbhf$a;

    iput-object p4, p0, Lbbo$24;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3055
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "check limit"

    aput-object v2, v1, v3

    .line 3056
    new-array v1, v4, [Ljava/lang/String;

    const-string/jumbo v2, "check limit"

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 3057
    iget-object v1, p0, Lbbo$24;->d:Lbbo;

    .line 3139
    iget-object v1, v1, Lbbo;->f:Lbgp;

    .line 3057
    invoke-interface {v1}, Lbgp;->b()I

    move-result v0

    .line 3058
    .local v0, "total":I
    const/16 v1, 0x3e8

    if-gt v0, v1, :cond_0

    .line 3059
    iget-object v1, p0, Lbbo$24;->d:Lbbo;

    rsub-int v2, v0, 0x3e8

    new-instance v3, Lbbj;

    iget-object v4, p0, Lbbo$24;->c:Lcma;

    invoke-direct {v3, v4}, Lbbj;-><init>(Lcma;)V

    invoke-static {v1, v2, v3}, Lbbo;->a(Lbbo;ILcma;)V

    .line 3063
    :goto_0
    return-void

    .line 3061
    :cond_0
    iget-object v1, p0, Lbbo$24;->c:Lcma;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 3021
    .line 4025
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "forwardCompletedListener onDataReceived"

    aput-object v2, v1, v0

    .line 4026
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "forwardCompletedListener onDataReceived"

    aput-object v2, v1, v0

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 4027
    iget-object v1, p0, Lbbo$24;->d:Lbbo;

    .line 4139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4027
    if-eqz v1, :cond_0

    iget-object v1, p0, Lbbo$24;->d:Lbbo;

    .line 5139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4027
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->size()I

    move-result v1

    iget v2, p0, Lbbo$24;->a:I

    if-ge v1, v2, :cond_0

    .line 4029
    const/4 v2, 0x0

    .line 4030
    iget-object v1, p0, Lbbo$24;->d:Lbbo;

    .line 6139
    iget-object v1, v1, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4030
    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4031
    iget-object v0, p0, Lbbo$24;->d:Lbbo;

    .line 7139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4031
    invoke-virtual {v0}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->size()I

    move-result v1

    .line 4032
    iget-object v0, p0, Lbbo$24;->d:Lbbo;

    .line 8139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 4032
    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object v2, v0

    move v4, v1

    .line 4034
    :goto_0
    iget-object v0, p0, Lbbo$24;->d:Lbbo;

    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v3, p0, Lbbo$24;->b:Lbhf$a;

    iget-object v3, v3, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iget v6, p0, Lbbo$24;->a:I

    sub-int v4, v6, v4

    new-instance v6, Lbbj;

    new-instance v7, Lbbo$24$1;

    invoke-direct {v7, p0}, Lbbo$24$1;-><init>(Lbbo$24;)V

    invoke-direct {v6, v7}, Lbbj;-><init>(Lcma;)V

    .line 9139
    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    .line 4049
    :goto_1
    return-void

    .line 4050
    :cond_0
    invoke-virtual {p0}, Lbbo$24;->a()V

    goto :goto_1

    :cond_1
    move v4, v0

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3071
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "forwardCompletedListener onException"

    aput-object v1, v0, v2

    .line 3072
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "forwardCompletedListener onException"

    aput-object v1, v0, v2

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 3073
    iget-object v0, p0, Lbbo$24;->c:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 3074
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 3067
    return-void
.end method
