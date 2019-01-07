.class public abstract Llkr;
.super Ljava/lang/Object;
.source "RxJavaSingleExecutionHook.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p0, "e"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 111
    return-object p0
.end method

.method public static a(Llgs$a;)Llgs$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs$a",
            "<TT;>;)",
            "Llgs$a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 75
    .local p0, "onSubscribe":Llgs$a;, "Llgs$a<TT;>;"
    return-object p0
.end method

.method public static a(Llgs$b;)Llgs$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Llgs$b",
            "<+TR;-TT;>;)",
            "Llgs$b",
            "<+TR;-TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 130
    .local p0, "lift":Llgs$b;, "Llgs$b<+TR;-TT;>;"
    return-object p0
.end method

.method public static a(Llgw$a;)Llgw$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgw$a",
            "<TT;>;)",
            "Llgw$a",
            "<TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 56
    .local p0, "f":Llgw$a;, "Llgw$a<TT;>;"
    return-object p0
.end method

.method public static a(Llgz;)Llgz;
    .locals 0
    .param p0, "subscription"    # Llgz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgz;",
            ")",
            "Llgz;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 94
    return-object p0
.end method
