.class public final Leqb;
.super Ljava/lang/Object;
.source "OldSearchStatisticUtils.java"


# static fields
.field private static a:Lcom/alibaba/doraemon/statistics/Statistics;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "STATISTICS"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/statistics/Statistics;

    sput-object v0, Leqb;->a:Lcom/alibaba/doraemon/statistics/Statistics;

    .line 92
    const/4 v0, 0x0

    sput-boolean v0, Leqb;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public static b()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method
