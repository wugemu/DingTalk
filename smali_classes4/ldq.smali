.class public Lldq;
.super Ljava/lang/Object;
.source "BlockContinue.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method

.method public static a(I)Lldq;
    .locals 3
    .param p0, "newIndex"    # I

    .prologue
    .line 18
    new-instance v0, Llbo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Llbo;-><init>(IIZ)V

    return-object v0
.end method

.method public static b(I)Lldq;
    .locals 3
    .param p0, "newColumn"    # I

    .prologue
    .line 22
    new-instance v0, Llbo;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Llbo;-><init>(IIZ)V

    return-object v0
.end method
