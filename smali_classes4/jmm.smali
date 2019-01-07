.class public final Ljmm;
.super Ljava/lang/Object;
.source "HotPatchUniqueMonitor.java"


# static fields
.field public static a:Z

.field public static b:Landroid/content/Context;

.field public static c:Landroid/content/SharedPreferences;

.field public static d:Landroid/content/SharedPreferences$Editor;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 29
    const/4 v2, 0x1

    sput-boolean v2, Ljmm;->a:Z

    .line 35
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

    .line 45
    .local v0, "dimensionSet":Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v2

    const-string/jumbo v3, "elapsed_time"

    invoke-virtual {v2, v3}, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;->addMeasure(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    move-result-object v1

    .line 48
    .local v1, "measureSet":Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    const-string/jumbo v2, "hotpatch_unique"

    const-string/jumbo v3, "efficiency"

    invoke-static {v2, v3, v1, v0}, Lcom/alibaba/mtl/appmonitor/AppMonitor;->register(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;)V

    .line 49
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v2

    .line 2368
    iget-boolean v2, v2, Ljoz;->e:Z

    .line 49
    sput-boolean v2, Ljmm;->a:Z

    .line 50
    invoke-static {}, Ljoz;->a()Ljoz;

    move-result-object v2

    .line 2372
    iget-object v2, v2, Ljoz;->a:Landroid/app/Application;

    .line 51
    sput-object v2, Ljmm;->b:Landroid/content/Context;

    const-string/jumbo v3, "hotpatch_unique"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 52
    sput-object v2, Ljmm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    sput-object v2, Ljmm;->d:Landroid/content/SharedPreferences$Editor;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 113
    sget-object v0, Ljmm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 114
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
    .line 57
    sget-boolean v1, Ljmm;->a:Z

    if-nez v1, :cond_1

    .line 2077
    :cond_0
    :goto_0
    return-void

    .line 1104
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1105
    sget-object v2, Ljmm;->c:Landroid/content/SharedPreferences;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 1106
    if-nez v2, :cond_2

    .line 1107
    sget-object v3, Ljmm;->c:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 60
    :cond_2
    if-nez v2, :cond_0

    .line 61
    new-instance v0, Ljml$a;

    invoke-direct {v0}, Ljml$a;-><init>()V

    .line 62
    .local v0, "updateData":Ljml$a;
    iput-boolean p0, v0, Ljml$a;->a:Z

    .line 63
    iput-object p1, v0, Ljml$a;->b:Ljava/lang/String;

    .line 64
    iput-object p2, v0, Ljml$a;->c:Ljava/lang/String;

    .line 65
    iput-object p3, v0, Ljml$a;->d:Ljava/lang/String;

    .line 66
    iput-object p4, v0, Ljml$a;->e:Ljava/lang/String;

    .line 67
    iput-object p5, v0, Ljml$a;->f:Ljava/lang/String;

    .line 68
    iput-object p6, v0, Ljml$a;->g:Ljava/lang/String;

    .line 2076
    if-eqz v0, :cond_0

    .line 2080
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

    if-eqz v1, :cond_3

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

    .line 2091
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->create()Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    const-string/jumbo v3, "elapsed_time"

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;->setValue(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;

    move-result-object v2

    .line 2094
    const-string/jumbo v3, "hotpatch_unique"

    const-string/jumbo v4, "efficiency"

    invoke-static {v3, v4, v1, v2}, Lcom/alibaba/mtl/appmonitor/AppMonitor$Stat;->commit(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/DimensionValueSet;Lcom/alibaba/mtl/appmonitor/model/MeasureValueSet;)V

    goto/16 :goto_0

    .line 2080
    :cond_3
    const-string/jumbo v1, "false"

    goto :goto_1
.end method
