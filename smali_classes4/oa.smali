.class public final Loa;
.super Ljava/lang/Object;
.source "ASTEnumerator.java"

# interfaces
.implements Lnz;


# instance fields
.field a:Lod;

.field b:I


# direct methods
.method public constructor <init>(Loc;)V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Loa;->b:I

    .line 23
    new-instance v0, Lod;

    invoke-direct {v0, p1}, Lod;-><init>(Loc;)V

    iput-object v0, p0, Loa;->a:Lod;

    .line 24
    return-void
.end method
