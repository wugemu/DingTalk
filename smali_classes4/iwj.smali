.class public final Liwj;
.super Liwk;
.source "AES256CBCImpl.java"

# interfaces
.implements Liwe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Liwk;-><init>()V

    .line 10
    const/16 v0, 0x20

    .line 1037
    iput v0, p0, Liwk;->a:I

    .line 1045
    const/16 v0, 0x10

    iput v0, p0, Liwk;->b:I

    .line 12
    return-void
.end method
