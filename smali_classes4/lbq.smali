.class public final Llbq;
.super Lldt;
.source "BlockStartImpl.java"


# instance fields
.field final a:[Lldr;

.field b:I

.field c:I

.field d:Z


# direct methods
.method public varargs constructor <init>([Lldr;)V
    .locals 1
    .param p1, "blockParsers"    # [Lldr;

    .prologue
    const/4 v0, -0x1

    .line 13
    invoke-direct {p0}, Lldt;-><init>()V

    .line 9
    iput v0, p0, Llbq;->b:I

    .line 10
    iput v0, p0, Llbq;->c:I

    .line 11
    const/4 v0, 0x0

    iput-boolean v0, p0, Llbq;->d:Z

    .line 14
    iput-object p1, p0, Llbq;->a:[Lldr;

    .line 15
    return-void
.end method


# virtual methods
.method public final a()Lldt;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Llbq;->d:Z

    .line 48
    return-object p0
.end method

.method public final a(I)Lldt;
    .locals 0
    .param p1, "newIndex"    # I

    .prologue
    .line 35
    iput p1, p0, Llbq;->b:I

    .line 36
    return-object p0
.end method

.method public final b(I)Lldt;
    .locals 0
    .param p1, "newColumn"    # I

    .prologue
    .line 41
    iput p1, p0, Llbq;->c:I

    .line 42
    return-object p0
.end method
