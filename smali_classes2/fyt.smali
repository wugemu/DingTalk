.class public Lfyt;
.super Lakp;
.source "Metric.java"

# interfaces
.implements Lfzc;


# annotations
.annotation runtime Lcom/alibaba/analytics/core/db/annotation/TableName;
    value = "stat_register_temp"
.end annotation


# instance fields
.field public a:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "module"
    .end annotation
.end field

.field public b:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "monitor_point"
    .end annotation
.end field

.field public c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field public f:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private g:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "dimensions"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "measures"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Ingore;
    .end annotation
.end field

.field private j:Z
    .annotation runtime Lcom/alibaba/analytics/core/db/annotation/Column;
        value = "is_commit_detail"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Lakp;-><init>()V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/mtl/appmonitor/model/MeasureSet;Lcom/alibaba/mtl/appmonitor/model/DimensionSet;Z)V
    .locals 1
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;
    .param p3, "measureSet"    # Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .param p4, "dimensionSet"    # Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .param p5, "isCommitDetail"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Lakp;-><init>()V

    .line 51
    iput-object p1, p0, Lfyt;->a:Ljava/lang/String;

    .line 52
    iput-object p2, p0, Lfyt;->b:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 54
    iput-object p3, p0, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lfyt;->i:Ljava/lang/String;

    .line 56
    iput-boolean p5, p0, Lfyt;->j:Z

    .line 57
    if-eqz p4, :cond_0

    .line 58
    invoke-static {p4}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfyt;->g:Ljava/lang/String;

    .line 60
    :cond_0
    invoke-static {p3}, Lgxk;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfyt;->h:Ljava/lang/String;

    .line 61
    return-void
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfyt;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfyt;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfyt;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfyt;->f:Ljava/lang/String;

    .line 84
    :cond_0
    iget-object v0, p0, Lfyt;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lcom/alibaba/mtl/appmonitor/model/DimensionSet;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 129
    iget-object v0, p0, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfyt;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lfyt;->g:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    iput-object v0, p0, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 132
    :cond_0
    iget-object v0, p0, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    return-object v0
.end method

.method public clean()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 195
    iput-object v1, p0, Lfyt;->a:Ljava/lang/String;

    .line 196
    iput-object v1, p0, Lfyt;->b:Ljava/lang/String;

    .line 197
    iput-object v1, p0, Lfyt;->i:Ljava/lang/String;

    .line 198
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfyt;->j:Z

    .line 199
    iput-object v1, p0, Lfyt;->c:Lcom/alibaba/mtl/appmonitor/model/DimensionSet;

    .line 200
    iput-object v1, p0, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 201
    iput-object v1, p0, Lfyt;->f:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public final d()Lcom/alibaba/mtl/appmonitor/model/MeasureSet;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 136
    iget-object v0, p0, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    if-nez v0, :cond_0

    iget-object v0, p0, Lfyt;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lfyt;->h:Ljava/lang/String;

    const-class v1, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    invoke-static {v0, v1}, Lgxk;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    iput-object v0, p0, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    .line 139
    :cond_0
    iget-object v0, p0, Lfyt;->d:Lcom/alibaba/mtl/appmonitor/model/MeasureSet;

    return-object v0
.end method

.method public final declared-synchronized e()Z
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 144
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfyt;->j:Z

    if-nez v0, :cond_0

    invoke-static {}, Lfzf;->a()Lfzf;

    move-result-object v0

    iget-object v2, p0, Lfyt;->a:Ljava/lang/String;

    iget-object v3, p0, Lfyt;->b:Ljava/lang/String;

    .line 1311
    iget-object v0, v0, Lfzf;->a:Ljava/util/Map;

    sget-object v4, Lcom/alibaba/appmonitor/event/EventType;->STAT:Lcom/alibaba/appmonitor/event/EventType;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfze;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1312
    if-nez v0, :cond_1

    move v0, v1

    .line 144
    :goto_0
    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    .line 1315
    :cond_1
    :try_start_1
    check-cast v0, Lfzi;

    .line 2022
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 2023
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2024
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2025
    invoke-virtual {v0, v4}, Lfzi;->a(Ljava/util/ArrayList;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 144
    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 159
    if-ne p0, p1, :cond_1

    .line 190
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 163
    goto :goto_0

    .line 165
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 166
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 168
    check-cast v0, Lfyt;

    .line 169
    .local v0, "other":Lfyt;
    iget-object v3, p0, Lfyt;->i:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 170
    iget-object v3, v0, Lfyt;->i:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 171
    goto :goto_0

    .line 173
    :cond_4
    iget-object v3, p0, Lfyt;->i:Ljava/lang/String;

    iget-object v4, v0, Lfyt;->i:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 174
    goto :goto_0

    .line 176
    :cond_5
    iget-object v3, p0, Lfyt;->a:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 177
    iget-object v3, v0, Lfyt;->a:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_6
    iget-object v3, p0, Lfyt;->a:Ljava/lang/String;

    iget-object v4, v0, Lfyt;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 181
    goto :goto_0

    .line 183
    :cond_7
    iget-object v3, p0, Lfyt;->b:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 184
    iget-object v3, v0, Lfyt;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 185
    goto :goto_0

    .line 187
    :cond_8
    iget-object v3, p0, Lfyt;->b:Ljava/lang/String;

    iget-object v4, v0, Lfyt;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 188
    goto :goto_0
.end method

.method public varargs fill([Ljava/lang/Object;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/Object;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x2

    .line 206
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfyt;->a:Ljava/lang/String;

    .line 207
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfyt;->b:Ljava/lang/String;

    .line 208
    array-length v0, p1

    if-le v0, v1, :cond_0

    .line 209
    aget-object v0, p1, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lfyt;->i:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 151
    iget-object v1, p0, Lfyt;->i:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit8 v0, v1, 0x1f

    .line 152
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lfyt;->a:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 153
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lfyt;->b:Ljava/lang/String;

    if-nez v3, :cond_2

    :goto_2
    add-int v0, v1, v2

    .line 154
    return v0

    .line 151
    .end local v0    # "result":I
    :cond_0
    iget-object v1, p0, Lfyt;->i:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 152
    .restart local v0    # "result":I
    :cond_1
    iget-object v1, p0, Lfyt;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 153
    :cond_2
    iget-object v2, p0, Lfyt;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2
.end method
