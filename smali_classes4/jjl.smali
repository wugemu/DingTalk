.class public final Ljjl;
.super Ljava/io/ByteArrayOutputStream;
.source "MessageStreamBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 13
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 8
    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 9
    return-void
.end method


# virtual methods
.method public final a(S)Ljjl;
    .locals 1
    .param p1, "s"    # S

    .prologue
    .line 21
    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljjl;->write(I)V

    .line 22
    invoke-virtual {p0, p1}, Ljjl;->write(I)V

    .line 23
    return-object p0
.end method
