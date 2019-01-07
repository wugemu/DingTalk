.class final Lbbo$14;
.super Ljava/lang/Object;
.source "DingDataCenter.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(ILjava/util/List;Lcma;)V
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
        "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcma;

.field final synthetic d:Lbbo;


# direct methods
.method constructor <init>(Lbbo;ILjava/util/List;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbo;

    .prologue
    .line 2067
    iput-object p1, p0, Lbbo$14;->d:Lbbo;

    iput p2, p0, Lbbo$14;->a:I

    iput-object p3, p0, Lbbo$14;->b:Ljava/util/List;

    iput-object p4, p0, Lbbo$14;->c:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2067
    check-cast p1, Ljava/util/List;

    .line 3070
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3071
    iget-object v0, p0, Lbbo$14;->d:Lbbo;

    .line 3139
    iget-object v0, v0, Lbbo;->f:Lbgp;

    .line 3071
    invoke-interface {v0, p1}, Lbgp;->a(Ljava/util/List;)I

    .line 3072
    iget-object v0, p0, Lbbo$14;->d:Lbbo;

    .line 4139
    iget-object v0, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 3072
    invoke-virtual {v0, p1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->addToOrderlyOrOrderless(Ljava/util/List;)Z

    .line 3074
    :cond_0
    iget-object v0, p0, Lbbo$14;->d:Lbbo;

    iget v1, p0, Lbbo$14;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbbo$14;->b:Ljava/util/List;

    iget-object v3, p0, Lbbo$14;->c:Lcma;

    .line 5139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(ILjava/util/List;Lcma;)V

    .line 2067
    return-void
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 2083
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "[DataCenter] getDingsFromServer failed, code:"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, ", reason:"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 2084
    iget-object v0, p0, Lbbo$14;->d:Lbbo;

    iget v1, p0, Lbbo$14;->a:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lbbo$14;->b:Ljava/util/List;

    iget-object v3, p0, Lbbo$14;->c:Lcma;

    .line 2139
    invoke-virtual {v0, v1, v2, v3}, Lbbo;->a(ILjava/util/List;Lcma;)V

    .line 2085
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 2079
    return-void
.end method
