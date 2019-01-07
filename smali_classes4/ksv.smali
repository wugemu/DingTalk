.class public final Lksv;
.super Ljava/lang/Object;
.source "RawEntity.java"

# interfaces
.implements Lkso;


# instance fields
.field private final a:Ljava/io/InputStream;

.field private b:I


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lksv;->a:Ljava/io/InputStream;

    .line 38
    const/4 v0, 0x2

    iput v0, p0, Lksv;->b:I

    .line 39
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lksv;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 0
    .param p1, "recursionMode"    # I

    .prologue
    .line 49
    return-void
.end method

.method public final e()Lksl;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public final f()Lksw;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public final g()Lkso;
    .locals 1

    .prologue
    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lksv;->b:I

    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lksv;->a:Ljava/io/InputStream;

    return-object v0
.end method
