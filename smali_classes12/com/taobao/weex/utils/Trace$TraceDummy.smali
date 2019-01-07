.class final Lcom/taobao/weex/utils/Trace$TraceDummy;
.super Lcom/taobao/weex/utils/Trace$AbstractTrace;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/utils/Trace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TraceDummy"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/taobao/weex/utils/Trace$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/taobao/weex/utils/Trace$1;

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>()V

    return-void
.end method


# virtual methods
.method final beginSection(Ljava/lang/String;)V
    .locals 0
    .param p1, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method final endSection()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method
