.class final Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;
.super Ljava/lang/Object;
.source "CPUTimeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "JiffesPair"
.end annotation


# instance fields
.field public mJiffesJiffes:J

.field public mJiffiesNow:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffiesNow:J

    .line 314
    iput-wide v0, p0, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;->mJiffesJiffes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$1;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/alibaba/doraemon/impl/health/Statistics/power/CPUTimeUtils$JiffesPair;-><init>()V

    return-void
.end method
