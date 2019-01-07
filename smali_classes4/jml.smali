.class public final Ljml;
.super Ljava/lang/Object;
.source "HotPatchMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljml$a;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "fromVersion"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "toVersion"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "stage"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "success"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "error_code"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "error_msg"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "url"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v2

    const-string/jumbo v3, "disk_size"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;->addDimension(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    move-result-object v0

    .line 38
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    const-string/jumbo v3, "elapsed_time"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 41
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "hotpatch"

    const-string/jumbo v3, "efficiency"

    invoke-static {v2, v3, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    return-void
.end method

.method public static a(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "success"    # Z
    .param p1, "stage"    # Ljava/lang/String;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;
    .param p4, "fromVersion"    # Ljava/lang/String;
    .param p5, "toVersion"    # Ljava/lang/String;
    .param p6, "url"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v0, Ljml$a;

    invoke-direct {v0}, Ljml$a;-><init>()V

    .line 46
    .local v0, "updateData":Ljml$a;
    iput-boolean p0, v0, Ljml$a;->a:Z

    .line 47
    iput-object p1, v0, Ljml$a;->b:Ljava/lang/String;

    .line 48
    iput-object p2, v0, Ljml$a;->c:Ljava/lang/String;

    .line 49
    iput-object p3, v0, Ljml$a;->d:Ljava/lang/String;

    .line 50
    iput-object p4, v0, Ljml$a;->e:Ljava/lang/String;

    .line 51
    iput-object p5, v0, Ljml$a;->f:Ljava/lang/String;

    .line 52
    iput-object p6, v0, Ljml$a;->g:Ljava/lang/String;

    .line 1058
    if-nez v0, :cond_0

    .line 1059
    :goto_0
    return-void

    .line 1062
    :cond_0
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "fromVersion"

    iget-object v3, v0, Ljml$a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "toVersion"

    iget-object v3, v0, Ljml$a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "stage"

    iget-object v3, v0, Ljml$a;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v2

    const-string/jumbo v3, "success"

    iget-boolean v1, v0, Ljml$a;->a:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    :goto_1
    invoke-virtual {v2, v3, v1}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "error_code"

    iget-object v3, v0, Ljml$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "error_msg"

    iget-object v3, v0, Ljml$a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "url"

    iget-object v3, v0, Ljml$a;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    const-string/jumbo v2, "disk_size"

    iget-object v3, v0, Ljml$a;->h:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;->setValue(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;

    move-result-object v1

    .line 1073
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    const-string/jumbo v3, "elapsed_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 1076
    const-string/jumbo v3, "hotpatch"

    const-string/jumbo v4, "efficiency"

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto :goto_0

    .line 1062
    :cond_1
    const-string/jumbo v1, "false"

    goto :goto_1
.end method
