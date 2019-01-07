.class final Lbbp$66;
.super Ljava/lang/Object;
.source "DingDataProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbp;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

.field final synthetic b:Lcma;

.field final synthetic c:Lbbp;


# direct methods
.method constructor <init>(Lbbp;Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Lbbp;

    .prologue
    .line 545
    iput-object p1, p0, Lbbp$66;->c:Lbbp;

    iput-object p2, p0, Lbbp$66;->a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iput-object p3, p0, Lbbp$66;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 548
    sget-object v0, Lbbp$27;->a:[I

    iget-object v1, p0, Lbbp$66;->a:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 558
    :goto_0
    return-void

    .line 550
    :pswitch_0
    iget-object v0, p0, Lbbp$66;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v6, p0, Lbbp$66;->b:Lcma;

    .line 3908
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "getAllDings start"

    aput-object v3, v1, v2

    .line 3909
    iget-object v1, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v2, 0x0

    .line 3912
    :goto_1
    const/4 v1, 0x1

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const-string/jumbo v1, "first null"

    .line 3913
    :goto_2
    aput-object v1, v3, v4

    .line 3915
    iget-object v1, v0, Lbbo;->d:Lbhf;

    invoke-virtual {v1}, Lbhf;->a()Lbhf$a;

    move-result-object v7

    .line 3917
    iget-boolean v1, v0, Lbbo;->a:Z

    if-nez v1, :cond_c

    .line 3918
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbbo;->a:Z

    .line 3920
    iget-object v1, v0, Lbbo;->f:Lbgp;

    invoke-interface {v1}, Lbgp;->b()I

    move-result v4

    .line 3921
    const-string/jumbo v1, "key_last_time_of_fill_1000_dings"

    invoke-static {v1}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v8

    .line 3922
    const/16 v1, 0x3e8

    if-ge v4, v1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v10, v8

    const-wide/32 v10, 0x5265c00

    cmp-long v1, v8, v10

    if-ltz v1, :cond_4

    .line 3923
    const/16 v5, 0x32

    new-instance v1, Lbbo$23;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v6, v2}, Lbbo$23;-><init>(Lbbo;Lcma;Z)V

    .line 3996
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "fetch1000dings start"

    aput-object v6, v2, v3

    .line 3997
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v6, "fetch1000dings start"

    aput-object v6, v2, v3

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 3999
    iget-object v2, v0, Lbbo;->d:Lbhf;

    invoke-virtual {v2}, Lbhf;->a()Lbhf$a;

    move-result-object v3

    .line 4001
    new-instance v2, Lbbo$22;

    invoke-direct {v2, v0, v1}, Lbbo$22;-><init>(Lbbo;Lcma;)V

    .line 4021
    new-instance v1, Lbbo$24;

    invoke-direct {v1, v0, v5, v3, v2}, Lbbo$24;-><init>(Lbbo;ILbhf$a;Lcma;)V

    .line 4077
    new-instance v7, Lbbo$25;

    invoke-direct {v7, v0, v1}, Lbbo$25;-><init>(Lbbo;Lcma;)V

    .line 4098
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "count in db:"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    .line 4099
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v6, "count in db:"

    aput-object v6, v1, v2

    const/4 v2, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v2

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 4100
    if-nez v4, :cond_3

    .line 4102
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 3909
    :cond_1
    iget-object v1, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    iget-object v2, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    .line 3911
    invoke-virtual {v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object v2, v1

    goto/16 :goto_1

    .line 3912
    :cond_2
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v7, "first"

    aput-object v7, v1, v5

    const/4 v5, 0x1

    .line 3913
    invoke-virtual {v2}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ah()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 4105
    :cond_3
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    const/4 v2, 0x0

    iget-object v3, v3, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x1

    new-instance v6, Lbbj;

    invoke-direct {v6, v7}, Lbbj;-><init>(Lcma;)V

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    goto/16 :goto_0

    .line 3945
    :cond_4
    const/16 v1, 0x3e8

    if-le v4, v1, :cond_b

    .line 4113
    const-string/jumbo v1, "key_last_time_of_clear_ding"

    invoke-static {v1}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v4

    .line 4114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v4, v8, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v1, v4, v8

    if-ltz v1, :cond_b

    .line 4118
    iget-object v1, v0, Lbbo;->f:Lbgp;

    const/16 v3, 0x3e7

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    invoke-interface {v1, v3, v4}, Lbgp;->a(ILcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;)Ljava/util/List;

    move-result-object v8

    .line 4119
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    if-le v1, v3, :cond_b

    .line 4122
    const-string/jumbo v1, "key_last_time_of_clear_ding"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcpk;->b(Ljava/lang/String;J)V

    .line 4123
    iget-object v3, v0, Lbbo;->d:Lbhf;

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4149
    invoke-virtual {v3}, Lbhf;->b()V

    .line 4151
    const/4 v4, 0x4

    new-array v9, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "old first time:"

    aput-object v5, v9, v4

    const/4 v10, 0x1

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v4, :cond_7

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4152
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    :goto_3
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v10

    const/4 v4, 0x2

    const-string/jumbo v5, "; old last time:"

    aput-object v5, v9, v4

    const/4 v10, 0x3

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v4, :cond_8

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4154
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    :goto_4
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v10

    .line 4151
    invoke-static {v9}, Lbkd;->a([Ljava/lang/String;)V

    .line 4156
    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v4, :cond_6

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    iget-object v9, v3, Lbhf;->a:Lbhf$a;

    iget-object v9, v9, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v9}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_6

    .line 4157
    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iput-object v1, v4, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4158
    iget-object v1, v3, Lbhf;->a:Lbhf$a;

    iget-object v1, v1, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v1, :cond_5

    iget-object v1, v3, Lbhf;->a:Lbhf$a;

    iget-object v1, v1, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    iget-object v1, v3, Lbhf;->a:Lbhf$a;

    iget-object v1, v1, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v10

    cmp-long v1, v4, v10

    if-lez v1, :cond_5

    .line 4159
    iget-object v1, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    iput-object v4, v1, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4161
    :cond_5
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "new first time:"

    aput-object v5, v1, v4

    const/4 v4, 0x1

    iget-object v5, v3, Lbhf;->a:Lbhf$a;

    iget-object v5, v5, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4162
    invoke-virtual {v5}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "; new last time:"

    aput-object v5, v1, v4

    const/4 v9, 0x3

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    if-eqz v4, :cond_9

    iget-object v4, v3, Lbhf;->a:Lbhf$a;

    iget-object v4, v4, Lbhf$a;->b:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 4164
    invoke-virtual {v4}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->O()J

    move-result-wide v4

    :goto_5
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v9

    .line 4161
    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 4165
    invoke-virtual {v3}, Lbhf;->c()Z

    .line 4124
    :cond_6
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4125
    const/4 v1, 0x1

    move v3, v1

    :goto_6
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_a

    .line 4126
    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->D()Ljava/lang/String;

    move-result-object v1

    .line 5109
    const-wide/16 v10, 0x0

    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v10

    .line 4126
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4125
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_6

    .line 4152
    :cond_7
    const-wide/16 v4, 0x0

    goto/16 :goto_3

    .line 4154
    :cond_8
    const-wide/16 v4, 0x0

    goto/16 :goto_4

    .line 4164
    :cond_9
    const-wide/16 v4, 0x0

    goto :goto_5

    .line 4128
    :cond_a
    iget-object v1, v0, Lbbo;->f:Lbgp;

    invoke-interface {v1, v4}, Lbgp;->b(Ljava/util/List;)I

    .line 4129
    invoke-virtual {v0}, Lbbo;->f()V

    .line 4130
    invoke-static {v8}, Lbjs;->a(Ljava/util/Collection;)V

    .line 3949
    :cond_b
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v3, v7, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/16 v4, 0x32

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    goto/16 :goto_0

    .line 3960
    :cond_c
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingAll:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v3, v7, Lbhf$a;->a:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/16 v4, 0x32

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    goto/16 :goto_0

    .line 553
    :pswitch_1
    iget-object v0, p0, Lbbp$66;->c:Lbbp;

    invoke-static {v0}, Lbbp;->a(Lbbp;)Lbbo;

    move-result-object v0

    iget-object v6, p0, Lbbp$66;->b:Lcma;

    .line 5975
    invoke-static {}, Lbbs;->a()Lbbs;

    move-result-object v1

    iget-object v2, v0, Lbbo;->c:Lcom/alibaba/android/ding/data/ObjectDingArrayList;

    invoke-virtual {v2}, Lcom/alibaba/android/ding/data/ObjectDingArrayList;->getOrderlyAndOrderless()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lbbs;->i(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    .line 5976
    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_d
    const/4 v2, 0x0

    .line 5980
    :goto_7
    iget-object v1, v0, Lbbo;->d:Lbhf;

    invoke-virtual {v1}, Lbhf;->a()Lbhf$a;

    move-result-object v3

    .line 5983
    sget-object v1, Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;->DingDeleted:Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;

    iget-object v3, v3, Lbhf$a;->c:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    const/16 v4, 0x32

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v6}, Lbbo;->a(Lcom/alibaba/android/ding/base/objects/IDataDingProvider$DataSetType;Lcom/alibaba/android/ding/base/objects/ObjectDing;Lcom/alibaba/android/ding/base/objects/ObjectDing;IZLcma;)Ljava/util/List;

    goto/16 :goto_0

    .line 5978
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    move-object v2, v1

    goto :goto_7

    .line 548
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
