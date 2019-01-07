.class public final Llkj;
.super Ljava/lang/Object;
.source "Subscribers.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Llgy;)Llgy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Llgy",
            "<-TT;>;)",
            "Llgy",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, "subscriber":Llgy;, "Llgy<-TT;>;"
    new-instance v0, Llkj$2;

    invoke-direct {v0, p0, p0}, Llkj$2;-><init>(Llgy;Llgy;)V

    return-object v0
.end method
