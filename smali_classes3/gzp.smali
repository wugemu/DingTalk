.class public final Lgzp;
.super Ljava/lang/Object;
.source "PhotoMagician.java"


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lgzm;
    .locals 1

    .prologue
    .line 59
    const-string/jumbo v0, "SENDER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzm;

    return-object v0
.end method

.method public static b()Lgzn;
    .locals 1

    .prologue
    .line 63
    const-string/jumbo v0, "SHOWER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgzn;

    return-object v0
.end method
