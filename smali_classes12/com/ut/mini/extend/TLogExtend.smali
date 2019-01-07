.class public Lcom/ut/mini/extend/TLogExtend;
.super Ljava/lang/Object;
.source "TLogExtend.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerTLog()V
    .locals 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/ut/mini/extend/UTExtendSwitch;->bTlogExtend:Z

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Lcom/ut/mini/internal/LogAdapter;

    invoke-direct {v0}, Lcom/ut/mini/internal/LogAdapter;-><init>()V

    invoke-static {v0}, Lamu;->a(Lams;)V

    .line 17
    :cond_0
    return-void
.end method
