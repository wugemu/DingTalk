.class public Lcom/alibaba/doraemon/performance/SoftReferenceProxy;
.super Ljava/lang/Object;
.source "SoftReferenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mTLReference:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    .local p0, "this":Lcom/alibaba/doraemon/performance/SoftReferenceProxy;, "Lcom/alibaba/doraemon/performance/SoftReferenceProxy<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mTLReference:Ljava/lang/ThreadLocal;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    return-void
.end method

.method private create()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    .local p0, "this":Lcom/alibaba/doraemon/performance/SoftReferenceProxy;, "Lcom/alibaba/doraemon/performance/SoftReferenceProxy<TT;>;"
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    invoke-interface {v1}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;->create()Ljava/lang/Object;

    move-result-object v0

    .line 88
    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    .local p0, "this":Lcom/alibaba/doraemon/performance/SoftReferenceProxy;, "Lcom/alibaba/doraemon/performance/SoftReferenceProxy<TT;>;"
    const/4 v2, 0x0

    .line 46
    .local v2, "ret":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mTLReference:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 48
    .local v1, "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    if-eqz v1, :cond_0

    .line 49
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .line 53
    .end local v2    # "ret":Ljava/lang/Object;, "TT;"
    :cond_0
    if-eqz v2, :cond_2

    .line 55
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    if-eqz v3, :cond_1

    .line 57
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    invoke-interface {v3, v2}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;->validate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "check":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_1

    .line 59
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mTLReference:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->remove()V

    .line 60
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mTLReference:Ljava/lang/ThreadLocal;

    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 61
    move-object v2, v0

    .line 74
    .end local v0    # "check":Ljava/lang/Object;, "TT;"
    :cond_1
    :goto_0
    return-object v2

    .line 67
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->create()Ljava/lang/Object;

    move-result-object v2

    .line 68
    .restart local v2    # "ret":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 69
    new-instance v1, Ljava/lang/ref/SoftReference;

    .end local v1    # "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    invoke-direct {v1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 70
    .restart local v1    # "reference":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<TT;>;"
    iget-object v3, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mTLReference:Ljava/lang/ThreadLocal;

    invoke-virtual {v3, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setCreator(Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;)V
    .locals 0
    .param p1, "creator"    # Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    .prologue
    .line 36
    .local p0, "this":Lcom/alibaba/doraemon/performance/SoftReferenceProxy;, "Lcom/alibaba/doraemon/performance/SoftReferenceProxy<TT;>;"
    iput-object p1, p0, Lcom/alibaba/doraemon/performance/SoftReferenceProxy;->mCreator:Lcom/alibaba/doraemon/performance/SoftReferenceProxy$Creator;

    .line 37
    return-void
.end method
