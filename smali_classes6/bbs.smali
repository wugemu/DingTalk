.class public Lbbs;
.super Ljava/lang/Object;
.source "DingFilter.java"


# static fields
.field private static volatile a:Lbbs;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    return-void
.end method

.method public static a()Lbbs;
    .locals 2

    .prologue
    .line 85
    sget-object v0, Lbbs;->a:Lbbs;

    if-nez v0, :cond_1

    .line 86
    const-class v1, Lbbs;

    monitor-enter v1

    .line 87
    :try_start_0
    sget-object v0, Lbbs;->a:Lbbs;

    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lbbs;

    invoke-direct {v0}, Lbbs;-><init>()V

    sput-object v0, Lbbs;->a:Lbbs;

    .line 90
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    :cond_1
    sget-object v0, Lbbs;->a:Lbbs;

    return-object v0

    .line 90
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/Collection;I)Ljava/util/List;
    .locals 5
    .param p1, "filter"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 97
    :cond_0
    const/4 v1, 0x0

    .line 256
    :cond_1
    return-object v1

    .line 99
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 101
    .local v0, "objectDing":Lcom/alibaba/android/ding/base/objects/ObjectDing;
    if-eqz v0, :cond_3

    .line 102
    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 103
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->NORMAL:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v2, v4, :cond_3

    .line 107
    :cond_4
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_5

    .line 108
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->af()Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;->DELETED:Lcom/alibaba/android/ding/base/objects/ObjectDing$DingOperationStatus;

    if-ne v2, v4, :cond_3

    .line 112
    :cond_5
    and-int/lit8 v2, p1, 0x4

    if-eqz v2, :cond_6

    .line 113
    invoke-static {v0}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 117
    :cond_6
    and-int/lit8 v2, p1, 0x8

    if-eqz v2, :cond_7

    .line 118
    invoke-static {v0}, Lbkh;->D(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 122
    :cond_7
    and-int/lit8 v2, p1, 0x10

    if-eqz v2, :cond_8

    .line 123
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    :cond_8
    and-int/lit8 v2, p1, 0x20

    if-eqz v2, :cond_9

    .line 128
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->d()Z

    move-result v2

    if-nez v2, :cond_3

    .line 132
    :cond_9
    and-int/lit8 v2, p1, 0x40

    if-eqz v2, :cond_a

    .line 133
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    :cond_a
    and-int/lit16 v2, p1, 0x80

    if-eqz v2, :cond_b

    .line 138
    invoke-static {v0}, Lbkh;->o(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 142
    :cond_b
    and-int/lit16 v2, p1, 0x100

    if-eqz v2, :cond_c

    .line 143
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v2

    if-nez v2, :cond_3

    .line 147
    :cond_c
    and-int/lit16 v2, p1, 0x200

    if-eqz v2, :cond_d

    .line 148
    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->ag()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 152
    :cond_d
    and-int/lit16 v2, p1, 0x400

    if-eqz v2, :cond_e

    .line 153
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 157
    :cond_e
    and-int/lit16 v2, p1, 0x800

    if-eqz v2, :cond_f

    .line 158
    invoke-static {v0}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 162
    :cond_f
    and-int/lit16 v2, p1, 0x1000

    if-eqz v2, :cond_10

    .line 163
    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 167
    :cond_10
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_11

    .line 168
    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 172
    :cond_11
    and-int/lit16 v2, p1, 0x4000

    if-eqz v2, :cond_12

    .line 173
    invoke-static {v0}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 177
    :cond_12
    const v2, 0x8000

    and-int/2addr v2, p1

    if-eqz v2, :cond_13

    .line 178
    invoke-static {v0}, Lbkh;->C(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 182
    :cond_13
    const/high16 v2, 0x10000

    and-int/2addr v2, p1

    if-eqz v2, :cond_14

    .line 183
    invoke-static {v0}, Lbkh;->y(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 187
    :cond_14
    const/high16 v2, 0x20000

    and-int/2addr v2, p1

    if-eqz v2, :cond_15

    .line 188
    invoke-static {v0}, Lbkh;->y(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 192
    :cond_15
    const/high16 v2, 0x40000

    and-int/2addr v2, p1

    if-eqz v2, :cond_16

    .line 193
    invoke-static {v0}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 197
    :cond_16
    const/high16 v2, 0x80000

    and-int/2addr v2, p1

    if-eqz v2, :cond_17

    .line 198
    invoke-static {v0}, Lbkh;->f(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 202
    :cond_17
    const/high16 v2, 0x100000

    and-int/2addr v2, p1

    if-eqz v2, :cond_18

    .line 203
    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 207
    :cond_18
    const/high16 v2, 0x200000

    and-int/2addr v2, p1

    if-eqz v2, :cond_19

    .line 208
    invoke-static {v0}, Lbkh;->w(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 212
    :cond_19
    const/high16 v2, 0x400000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1a

    .line 213
    invoke-static {v0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    :cond_1a
    const/high16 v2, 0x800000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1b

    .line 218
    invoke-static {v0}, Lbkh;->v(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 222
    :cond_1b
    const/high16 v2, 0x1000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1c

    .line 223
    invoke-static {v0}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :cond_1c
    const/high16 v2, 0x2000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1d

    .line 228
    invoke-static {v0}, Lbkh;->u(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 232
    :cond_1d
    const/high16 v2, 0x4000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1e

    .line 233
    invoke-static {v0}, Lbkh;->x(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 237
    :cond_1e
    const/high16 v2, 0x8000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_1f

    .line 238
    invoke-static {v0}, Lbkh;->x(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 242
    :cond_1f
    const/high16 v2, 0x10000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_20

    .line 243
    invoke-static {v0}, Lbkh;->i(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    :cond_20
    const/high16 v2, 0x20000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_21

    .line 1184
    if-eqz v0, :cond_22

    .line 1188
    invoke-static {v0}, Lbkh;->n(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 1192
    invoke-static {v0}, Lbkh;->e(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->q()Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    move-result-object v2

    sget-object v4, Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;->PARTICIPANT:Lcom/alibaba/android/ding/base/objects/ObjectDing$RoleStatus;

    if-ne v2, v4, :cond_22

    const/4 v2, 0x1

    .line 248
    :goto_1
    if-eqz v2, :cond_3

    .line 253
    :cond_21
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1192
    :cond_22
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 280
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0x4a1

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 281
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 282
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 284
    :cond_0
    return-object v0
.end method

.method public final a(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 2
    .param p2, "focus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 261
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x1

    .line 262
    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 263
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 266
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 288
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0x10a1

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 289
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 290
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 292
    :cond_0
    return-object v0
.end method

.method public final b(Ljava/util/Collection;Z)Ljava/util/List;
    .locals 2
    .param p2, "focus"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 271
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0xa1

    .line 272
    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 273
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 276
    :cond_0
    return-object v0
.end method

.method public final c(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 306
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0x411

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 307
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 308
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 310
    :cond_0
    return-object v0
.end method

.method public final d(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 314
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x10000011

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 315
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 318
    :cond_0
    return-object v0
.end method

.method public final e(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 322
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x20000011

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 323
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 326
    :cond_0
    return-object v0
.end method

.method public final f(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 330
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x84011

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 331
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 332
    sget-object v1, Lbbn;->b:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 334
    :cond_0
    return-object v0
.end method

.method public final g(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 338
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x88011

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 339
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 340
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 342
    :cond_0
    return-object v0
.end method

.method public final h(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 346
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x98011

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 347
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 348
    invoke-static {}, Lbbn;->a()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 350
    :cond_0
    return-object v0
.end method

.method public final i(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 354
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x2

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 355
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 356
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 358
    :cond_0
    return-object v0
.end method

.method public final j(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 362
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0xa01

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 363
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 366
    :cond_0
    return-object v0
.end method

.method public final k(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 378
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/16 v1, 0x441

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 379
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    invoke-static {}, Lbbn;->b()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    :cond_0
    return-object v0
.end method

.method public final l(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 386
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x4000041

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 387
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-static {}, Lbbn;->b()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 390
    :cond_0
    return-object v0
.end method

.method public final m(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 394
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const v1, 0x2a00041

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 395
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 396
    invoke-static {}, Lbbn;->b()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 398
    :cond_0
    return-object v0
.end method

.method public final n(Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 423
    .local p1, "originList":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    const/4 v1, 0x5

    invoke-static {p1, v1}, Lbbs;->a(Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v0

    .line 424
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/ding/base/objects/ObjectDing;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 425
    sget-object v1, Lbbn;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 427
    :cond_0
    return-object v0
.end method
