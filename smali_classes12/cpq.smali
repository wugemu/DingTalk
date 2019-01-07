.class public abstract Lcpq;
.super Ljava/lang/Object;
.source "Singleton.java"


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
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    .local p0, "this":Lcpq;, "Lcpq<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public final b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcpq;, "Lcpq<TT;>;"
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 15
    invoke-virtual {p0}, Lcpq;->a()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    .line 17
    :cond_0
    iget-object v0, p0, Lcpq;->a:Ljava/lang/Object;

    monitor-exit p0

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
