.class public final Llew$y;
.super Llew$n;
.source "Evaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "y"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "a"    # I
    .param p2, "b"    # I

    .prologue
    .line 447
    invoke-direct {p0, p1, p2}, Llew$n;-><init>(II)V

    .line 448
    return-void
.end method


# virtual methods
.method protected final a(Lleh;)I
    .locals 1
    .param p1, "element"    # Lleh;

    .prologue
    .line 451
    invoke-virtual {p1}, Lleh;->k()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    const-string/jumbo v0, "nth-child"

    return-object v0
.end method
