.class public Lcom/taobao/weex/utils/Trace;
.super Ljava/lang/Object;
.source "Trace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/utils/Trace$TraceDummy;,
        Lcom/taobao/weex/utils/Trace$TraceJBMR2;,
        Lcom/taobao/weex/utils/Trace$AbstractTrace;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Weex_Trace"

.field private static final sEnabled:Z

.field private static final sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 53
    const/4 v0, 0x0

    .line 55
    sput-boolean v0, Lcom/taobao/weex/utils/Trace;->sEnabled:Z

    .line 58
    new-instance v0, Lcom/taobao/weex/utils/Trace$TraceDummy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/weex/utils/Trace$TraceDummy;-><init>(Lcom/taobao/weex/utils/Trace$1;)V

    sput-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method public static beginSection(Ljava/lang/String;)V
    .locals 2
    .param p0, "sectionName"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "beginSection() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0, p0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->beginSection(Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static endSection()V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/taobao/weex/utils/Trace;->sTrace:Lcom/taobao/weex/utils/Trace$AbstractTrace;

    invoke-virtual {v0}, Lcom/taobao/weex/utils/Trace$AbstractTrace;->endSection()V

    .line 89
    return-void
.end method

.method public static final getTraceEnabled()Z
    .locals 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/taobao/weex/utils/Trace;->sEnabled:Z

    return v0
.end method
