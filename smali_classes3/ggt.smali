.class public final Lggt;
.super Lggs;
.source "UnKnowException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Lggs;-><init>()V

    .line 9
    const-string/jumbo v0, "0"

    iput-object v0, p0, Lggt;->a:Ljava/lang/String;

    .line 10
    const-string/jumbo v0, "\u672a\u77e5\u9519\u8bef"

    iput-object v0, p0, Lggt;->b:Ljava/lang/String;

    .line 11
    return-void
.end method
