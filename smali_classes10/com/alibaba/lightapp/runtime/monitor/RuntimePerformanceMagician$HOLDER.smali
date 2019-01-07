.class Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$HOLDER;
.super Ljava/lang/Object;
.source "RuntimePerformanceMagician.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HOLDER"
.end annotation


# static fields
.field static INSTANCE:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    invoke-direct {v0}, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;-><init>()V

    sput-object v0, Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician$HOLDER;->INSTANCE:Lcom/alibaba/lightapp/runtime/monitor/RuntimePerformanceMagician;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
