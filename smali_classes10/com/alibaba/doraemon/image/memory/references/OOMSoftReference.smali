.class public Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;
.super Ljava/lang/Object;
.source "OOMSoftReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field softRef1:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field softRef2:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field softRef3:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;, "Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference<TT;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    .line 44
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef2:Ljava/lang/ref/SoftReference;

    .line 45
    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef3:Ljava/lang/ref/SoftReference;

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;, "Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference<TT;>;"
    const/4 v1, 0x0

    .line 59
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 61
    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef2:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef2:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 65
    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef2:Ljava/lang/ref/SoftReference;

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef3:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef3:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->clear()V

    .line 69
    iput-object v1, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef3:Ljava/lang/ref/SoftReference;

    .line 71
    :cond_2
    return-void
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;, "Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference<TT;>;"
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;, "Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference<TT;>;"
    .local p1, "hardReference":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef1:Ljava/lang/ref/SoftReference;

    .line 50
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef2:Ljava/lang/ref/SoftReference;

    .line 51
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/doraemon/image/memory/references/OOMSoftReference;->softRef3:Ljava/lang/ref/SoftReference;

    .line 52
    return-void
.end method
