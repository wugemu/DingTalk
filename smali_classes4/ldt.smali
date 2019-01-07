.class public abstract Lldt;
.super Ljava/lang/Object;
.source "BlockStart.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static varargs a([Lldr;)Lldt;
    .locals 1
    .param p0, "blockParsers"    # [Lldr;

    .prologue
    .line 18
    new-instance v0, Llbq;

    invoke-direct {v0, p0}, Llbq;-><init>([Lldr;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Lldt;
.end method

.method public abstract a(I)Lldt;
.end method

.method public abstract b(I)Lldt;
.end method
