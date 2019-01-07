.class public final Lclv;
.super Ljava/lang/Object;
.source "SoftReferenceProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lclv$a;
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
.field a:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Lclv$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lclv$a",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lclv;, "Lclv<TT;>;"
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lclv;->a:Ljava/lang/ref/SoftReference;

    .line 26
    iput-object v0, p0, Lclv;->b:Lclv$a;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 68
    .local p0, "this":Lclv;, "Lclv<TT;>;"
    const/4 v0, 0x0

    .line 70
    .local v0, "ret":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lclv;->b:Lclv$a;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lclv;->b:Lclv$a;

    invoke-interface {v1}, Lclv$a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 74
    .end local v0    # "ret":Ljava/lang/Object;, "TT;"
    :cond_0
    return-object v0
.end method
