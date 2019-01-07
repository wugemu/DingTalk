.class public final Lagh;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lagh$a;
    }
.end annotation


# static fields
.field private static final f:[I

.field private static final g:[I


# instance fields
.field private a:Landroid/text/format/Time;

.field private b:Landroid/text/format/Time;

.field private c:Ljava/lang/StringBuilder;

.field private d:Landroid/text/format/Time;

.field private e:Lagh$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0xc

    .line 1232
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lagh;->f:[I

    .line 1234
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lagh;->g:[I

    return-void

    .line 1232
    .line 1234
    nop

    :array_0
    .array-data 4
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb4
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lagh;->a:Landroid/text/format/Time;

    .line 29
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lagh;->b:Landroid/text/format/Time;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lagh;->c:Ljava/lang/StringBuilder;

    .line 31
    new-instance v0, Landroid/text/format/Time;

    const-string/jumbo v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lagh;->d:Landroid/text/format/Time;

    .line 32
    new-instance v0, Lagh$a;

    invoke-direct {v0}, Lagh$a;-><init>()V

    iput-object v0, p0, Lagh;->e:Lagh$a;

    .line 38
    return-void
.end method

.method private static a(Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;Landroid/text/format/Time;)I
    .locals 11
    .param p0, "r"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .param p1, "iterator"    # Landroid/text/format/Time;

    .prologue
    .line 198
    iget v3, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    .line 200
    .local v3, "freq":I
    const/4 v6, 0x6

    if-lt v6, v3, :cond_2

    .line 202
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    if-lez v6, :cond_2

    .line 203
    iget-object v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    iget v8, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    iget v6, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v9, v6, 0x1

    .line 2153
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v8, :cond_1

    .line 2154
    aget v10, v7, v6

    if-ne v10, v9, :cond_0

    .line 2155
    const/4 v2, 0x1

    .line 205
    .local v2, "found":Z
    :goto_1
    if-nez v2, :cond_2

    .line 206
    const/4 v6, 0x1

    .line 310
    .end local v2    # "found":Z
    :goto_2
    return v6

    .line 2153
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2158
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 210
    :cond_2
    const/4 v6, 0x5

    if-lt v6, v3, :cond_3

    .line 213
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    if-lez v6, :cond_3

    .line 214
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->s:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->t:I

    .line 215
    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v8

    const/16 v9, 0x9

    .line 216
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 214
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 217
    .restart local v2    # "found":Z
    if-nez v2, :cond_3

    .line 218
    const/4 v6, 0x2

    goto :goto_2

    .line 222
    .end local v2    # "found":Z
    :cond_3
    const/4 v6, 0x4

    if-lt v6, v3, :cond_7

    .line 224
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    if-lez v6, :cond_4

    .line 225
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->q:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->r:I

    iget v8, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v9, 0x8

    .line 226
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 225
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 227
    .restart local v2    # "found":Z
    if-nez v2, :cond_4

    .line 228
    const/4 v6, 0x3

    goto :goto_2

    .line 232
    .end local v2    # "found":Z
    :cond_4
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    if-lez v6, :cond_5

    .line 233
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->o:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    iget v8, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v9, 0x4

    .line 235
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 233
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 236
    .restart local v2    # "found":Z
    if-nez v2, :cond_5

    .line 237
    const/4 v6, 0x4

    goto :goto_2

    .line 243
    .end local v2    # "found":Z
    :cond_5
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    if-lez v6, :cond_7

    .line 244
    iget-object v1, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    .line 245
    .local v1, "a":[I
    iget v0, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    .line 246
    .local v0, "N":I
    iget v6, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v6}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a(I)I

    move-result v5

    .line 247
    .local v5, "v":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v0, :cond_6

    .line 248
    aget v6, v1, v4

    if-eq v6, v5, :cond_7

    .line 247
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 252
    :cond_6
    const/4 v6, 0x5

    goto :goto_2

    .line 255
    .end local v0    # "N":I
    .end local v1    # "a":[I
    .end local v4    # "i":I
    .end local v5    # "v":I
    :cond_7
    const/4 v6, 0x3

    if-lt v6, v3, :cond_8

    .line 257
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    iget v8, p1, Landroid/text/format/Time;->hour:I

    const/4 v9, 0x3

    .line 259
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 257
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 260
    .restart local v2    # "found":Z
    if-nez v2, :cond_8

    .line 261
    const/4 v6, 0x6

    goto/16 :goto_2

    .line 264
    .end local v2    # "found":Z
    :cond_8
    const/4 v6, 0x2

    if-lt v6, v3, :cond_9

    .line 266
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->h:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    iget v8, p1, Landroid/text/format/Time;->minute:I

    const/4 v9, 0x2

    .line 268
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 266
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 269
    .restart local v2    # "found":Z
    if-nez v2, :cond_9

    .line 270
    const/4 v6, 0x7

    goto/16 :goto_2

    .line 273
    .end local v2    # "found":Z
    :cond_9
    const/4 v6, 0x1

    if-lt v6, v3, :cond_a

    .line 275
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->f:[I

    iget v7, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    iget v8, p1, Landroid/text/format/Time;->second:I

    const/4 v9, 0x1

    .line 277
    invoke-virtual {p1, v9}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v9

    .line 275
    invoke-static {v6, v7, v8, v9}, Lagh;->a([IIII)Z

    move-result v2

    .line 278
    .restart local v2    # "found":Z
    if-nez v2, :cond_a

    .line 279
    const/16 v6, 0x8

    goto/16 :goto_2

    .line 283
    .end local v2    # "found":Z
    :cond_a
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    if-lez v6, :cond_b

    .line 286
    const/4 v6, 0x6

    if-ne v3, v6, :cond_e

    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    if-lez v6, :cond_e

    .line 288
    iget v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    add-int/lit8 v4, v6, -0x1

    .restart local v4    # "i":I
    :goto_4
    if-ltz v4, :cond_d

    .line 289
    iget-object v6, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->m:[I

    aget v6, v6, v4

    if-eqz v6, :cond_c

    .line 290
    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 291
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BYSETPOS not supported with these rules: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 310
    .end local v4    # "i":I
    :cond_b
    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 288
    .restart local v4    # "i":I
    :cond_c
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 296
    :cond_d
    invoke-static {p0, p1}, Lagh;->b(Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;Landroid/text/format/Time;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 298
    const/16 v6, 0x9

    goto/16 :goto_2

    .line 301
    .end local v4    # "i":I
    :cond_e
    const-string/jumbo v6, "RecurrenceProcessor"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "BYSETPOS not supported with these rules: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5
.end method

.method static a(Landroid/text/format/Time;)V
    .locals 17
    .param p0, "date"    # Landroid/text/format/Time;

    .prologue
    .line 1136
    move-object/from16 v0, p0

    iget v10, v0, Landroid/text/format/Time;->second:I

    .line 1137
    .local v10, "second":I
    move-object/from16 v0, p0

    iget v6, v0, Landroid/text/format/Time;->minute:I

    .line 1138
    .local v6, "minute":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/text/format/Time;->hour:I

    .line 1139
    .local v5, "hour":I
    move-object/from16 v0, p0

    iget v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 1140
    .local v8, "monthDay":I
    move-object/from16 v0, p0

    iget v7, v0, Landroid/text/format/Time;->month:I

    .line 1141
    .local v7, "month":I
    move-object/from16 v0, p0

    iget v11, v0, Landroid/text/format/Time;->year:I

    .line 1143
    .local v11, "year":I
    if-gez v10, :cond_0

    add-int/lit8 v14, v10, -0x3b

    :goto_0
    div-int/lit8 v3, v14, 0x3c

    .line 1144
    .local v3, "addMinutes":I
    mul-int/lit8 v14, v3, 0x3c

    sub-int/2addr v10, v14

    .line 1145
    add-int/2addr v6, v3

    .line 1146
    if-gez v6, :cond_1

    add-int/lit8 v14, v6, -0x3b

    :goto_1
    div-int/lit8 v2, v14, 0x3c

    .line 1147
    .local v2, "addHours":I
    mul-int/lit8 v14, v2, 0x3c

    sub-int/2addr v6, v14

    .line 1148
    add-int/2addr v5, v2

    .line 1149
    if-gez v5, :cond_2

    add-int/lit8 v14, v5, -0x17

    :goto_2
    div-int/lit8 v1, v14, 0x18

    .line 1150
    .local v1, "addDays":I
    mul-int/lit8 v14, v1, 0x18

    sub-int/2addr v5, v14

    .line 1151
    add-int/2addr v8, v1

    .line 1156
    :goto_3
    if-gtz v8, :cond_4

    .line 1164
    const/4 v14, 0x1

    if-le v7, v14, :cond_3

    invoke-static {v11}, Lagh;->b(I)I

    move-result v4

    .line 1165
    .local v4, "days":I
    :goto_4
    add-int/2addr v8, v4

    .line 1166
    add-int/lit8 v11, v11, -0x1

    .line 1167
    goto :goto_3

    .end local v1    # "addDays":I
    .end local v2    # "addHours":I
    .end local v3    # "addMinutes":I
    .end local v4    # "days":I
    :cond_0
    move v14, v10

    .line 1143
    goto :goto_0

    .restart local v3    # "addMinutes":I
    :cond_1
    move v14, v6

    .line 1146
    goto :goto_1

    .restart local v2    # "addHours":I
    :cond_2
    move v14, v5

    .line 1149
    goto :goto_2

    .line 1164
    .restart local v1    # "addDays":I
    :cond_3
    add-int/lit8 v14, v11, -0x1

    invoke-static {v14}, Lagh;->b(I)I

    move-result v4

    goto :goto_4

    .line 1169
    :cond_4
    if-gez v7, :cond_7

    .line 1170
    add-int/lit8 v14, v7, 0x1

    div-int/lit8 v14, v14, 0xc

    add-int/lit8 v13, v14, -0x1

    .line 1171
    .local v13, "years":I
    add-int/2addr v11, v13

    .line 1172
    mul-int/lit8 v14, v13, 0xc

    sub-int/2addr v7, v14

    .line 1182
    .end local v13    # "years":I
    :cond_5
    :goto_5
    if-nez v7, :cond_6

    .line 1183
    invoke-static {v11}, Lagh;->b(I)I

    move-result v12

    .line 1184
    .local v12, "yearLength":I
    if-le v8, v12, :cond_6

    .line 1185
    add-int/lit8 v11, v11, 0x1

    .line 1186
    sub-int/2addr v8, v12

    .line 3245
    .end local v12    # "yearLength":I
    :cond_6
    sget-object v14, Lagh;->f:[I

    aget v9, v14, v7

    .line 3246
    const/16 v14, 0x1c

    if-eq v9, v14, :cond_8

    .line 1190
    .local v9, "monthLength":I
    :goto_6
    if-le v8, v9, :cond_a

    .line 1191
    sub-int/2addr v8, v9

    .line 1192
    add-int/lit8 v7, v7, 0x1

    .line 1193
    const/16 v14, 0xc

    if-lt v7, v14, :cond_5

    .line 1194
    add-int/lit8 v7, v7, -0xc

    .line 1195
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1173
    .end local v9    # "monthLength":I
    :cond_7
    const/16 v14, 0xc

    if-lt v7, v14, :cond_5

    .line 1174
    div-int/lit8 v13, v7, 0xc

    .line 1175
    .restart local v13    # "years":I
    add-int/2addr v11, v13

    .line 1176
    mul-int/lit8 v14, v13, 0xc

    sub-int/2addr v7, v14

    goto :goto_5

    .line 3249
    .end local v13    # "years":I
    :cond_8
    invoke-static {v11}, Lagh;->a(I)Z

    move-result v14

    if-eqz v14, :cond_9

    const/16 v9, 0x1d

    goto :goto_6

    :cond_9
    const/16 v9, 0x1c

    goto :goto_6

    .line 1202
    .restart local v9    # "monthLength":I
    :cond_a
    move-object/from16 v0, p0

    iput v10, v0, Landroid/text/format/Time;->second:I

    .line 1203
    move-object/from16 v0, p0

    iput v6, v0, Landroid/text/format/Time;->minute:I

    .line 1204
    move-object/from16 v0, p0

    iput v5, v0, Landroid/text/format/Time;->hour:I

    .line 1205
    move-object/from16 v0, p0

    iput v8, v0, Landroid/text/format/Time;->monthDay:I

    .line 1206
    move-object/from16 v0, p0

    iput v7, v0, Landroid/text/format/Time;->month:I

    .line 1207
    move-object/from16 v0, p0

    iput v11, v0, Landroid/text/format/Time;->year:I

    .line 3262
    const/4 v14, 0x1

    if-gt v7, v14, :cond_c

    .line 3263
    add-int/lit8 v14, v7, 0xc

    .line 3264
    add-int/lit8 v15, v11, -0x1

    .line 3266
    :goto_7
    mul-int/lit8 v14, v14, 0xd

    add-int/lit8 v14, v14, -0xe

    div-int/lit8 v14, v14, 0x5

    add-int/2addr v14, v8

    add-int/2addr v14, v15

    div-int/lit8 v16, v15, 0x4

    add-int v14, v14, v16

    div-int/lit8 v16, v15, 0x64

    sub-int v14, v14, v16

    div-int/lit16 v15, v15, 0x190

    add-int/2addr v14, v15

    rem-int/lit8 v14, v14, 0x7

    .line 1208
    move-object/from16 v0, p0

    iput v14, v0, Landroid/text/format/Time;->weekDay:I

    .line 3278
    sget-object v14, Lagh;->g:[I

    aget v14, v14, v7

    add-int/2addr v14, v8

    add-int/lit8 v14, v14, -0x1

    .line 3279
    const/4 v15, 0x2

    if-lt v7, v15, :cond_b

    invoke-static {v11}, Lagh;->a(I)Z

    move-result v15

    if-eqz v15, :cond_b

    .line 3280
    add-int/lit8 v14, v14, 0x1

    .line 1209
    :cond_b
    move-object/from16 v0, p0

    iput v14, v0, Landroid/text/format/Time;->yearDay:I

    .line 1210
    return-void

    :cond_c
    move v14, v7

    move v15, v11

    goto :goto_7
.end method

.method private a(Landroid/text/format/Time;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 61
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "r"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .param p3, "rangeStartDateValue"    # J
    .param p5, "rangeEndDateValue"    # J
    .param p7, "add"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/DateException;
        }
    .end annotation

    .prologue
    .line 739
    .local p8, "out":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lagh;->a(Landroid/text/format/Time;)V

    .line 740
    invoke-static/range {p1 .. p1}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 741
    .local v18, "dtstartDateValue":J
    const/4 v15, 0x0

    .line 752
    .local v15, "count":I
    if-eqz p7, :cond_0

    cmp-long v55, v18, p3

    if-ltz v55, :cond_0

    cmp-long v55, v18, p5

    if-gez v55, :cond_0

    .line 754
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 755
    add-int/lit8 v15, v15, 0x1

    .line 758
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lagh;->a:Landroid/text/format/Time;

    move-object/from16 v30, v0

    .line 759
    .local v30, "iterator":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lagh;->b:Landroid/text/format/Time;

    move-object/from16 v44, v0

    .line 760
    .local v44, "until":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lagh;->c:Ljava/lang/StringBuilder;

    move-object/from16 v41, v0

    .line 761
    .local v41, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v4, v0, Lagh;->d:Landroid/text/format/Time;

    .line 762
    .local v4, "generated":Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lagh;->e:Lagh$a;

    move-object/from16 v17, v0

    .line 2425
    .local v17, "days":Lagh$a;
    const/16 v55, 0x0

    :try_start_0
    move/from16 v0, v55

    move-object/from16 v1, v17

    iput v0, v1, Lagh$a;->d:I

    .line 2426
    const/16 v55, -0x1

    move/from16 v0, v55

    move-object/from16 v1, v17

    iput v0, v1, Lagh$a;->e:I

    .line 2427
    move-object/from16 v0, p2

    move-object/from16 v1, v17

    iput-object v0, v1, Lagh$a;->a:Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    .line 766
    const-wide v56, 0x7fffffffffffffffL

    cmp-long v55, p5, v56

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 767
    new-instance v55, Lcom/alibaba/alimei/sdk/calendar/common/DateException;

    const-string/jumbo v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1112
    :catch_0
    move-exception v20

    .line 1113
    .local v20, "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    const-string/jumbo v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    const-string/jumbo v57, "DateException with r="

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    throw v20

    .line 773
    .end local v20    # "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    move/from16 v25, v0

    .line 774
    .local v25, "freqAmount":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->a:I

    move/from16 v24, v0

    .line 775
    .local v24, "freq":I
    packed-switch v24, :pswitch_data_0

    .line 803
    new-instance v55, Lcom/alibaba/alimei/sdk/calendar/common/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    const-string/jumbo v57, "bad freq="

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1117
    .end local v24    # "freq":I
    .end local v25    # "freqAmount":I
    :catch_1
    move-exception v43

    .line 1118
    .local v43, "t":Ljava/lang/RuntimeException;
    const-string/jumbo v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    const-string/jumbo v57, "RuntimeException with r="

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    throw v43

    .line 778
    .end local v43    # "t":Ljava/lang/RuntimeException;
    .restart local v24    # "freq":I
    .restart local v25    # "freqAmount":I
    :pswitch_0
    const/16 v26, 0x1

    .line 805
    .local v26, "freqField":I
    :cond_2
    :goto_0
    if-gtz v25, :cond_3

    .line 806
    const/16 v25, 0x1

    .line 809
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v13, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->v:I

    .line 810
    .local v13, "bymonthCount":I
    const/16 v55, 0x6

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v13}, Lagh;->a(III)Z

    move-result v51

    .line 811
    .local v51, "usebymonth":Z
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->p:I

    move/from16 v55, v0

    if-lez v55, :cond_7

    :cond_4
    const/16 v48, 0x1

    .line 813
    .local v48, "useDays":Z
    :goto_1
    move-object/from16 v0, p2

    iget v11, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->k:I

    .line 814
    .local v11, "byhourCount":I
    const/16 v55, 0x3

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v11}, Lagh;->a(III)Z

    move-result v49

    .line 815
    .local v49, "usebyhour":Z
    move-object/from16 v0, p2

    iget v12, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->i:I

    .line 816
    .local v12, "byminuteCount":I
    const/16 v55, 0x2

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v12}, Lagh;->a(III)Z

    move-result v50

    .line 817
    .local v50, "usebyminute":Z
    move-object/from16 v0, p2

    iget v14, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->g:I

    .line 818
    .local v14, "bysecondCount":I
    const/16 v55, 0x1

    move/from16 v0, v24

    move/from16 v1, v55

    invoke-static {v0, v1, v14}, Lagh;->a(III)Z

    move-result v52

    .line 821
    .local v52, "usebysecond":Z
    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 822
    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    .line 823
    if-eqz v48, :cond_5

    .line 829
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 834
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_8

    .line 836
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    move-object/from16 v45, v0

    .line 840
    .local v45, "untilStr":Ljava/lang/String;
    invoke-virtual/range {v45 .. v45}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    .line 841
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v45

    .line 844
    :cond_6
    invoke-virtual/range {v44 .. v45}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 849
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v44

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 850
    invoke-static/range {v44 .. v44}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v46

    .line 855
    .end local v45    # "untilStr":Ljava/lang/String;
    .local v46, "untilDateValue":J
    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 856
    const/16 v55, 0xf

    move-object/from16 v0, v41

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 866
    const/16 v21, 0x0

    .local v21, "failsafe":I
    move/from16 v22, v21

    .line 869
    .end local v21    # "failsafe":I
    .local v22, "failsafe":I
    :goto_3
    const/16 v38, 0x0

    .line 870
    .local v38, "monthIndex":I
    add-int/lit8 v21, v22, 0x1

    .end local v22    # "failsafe":I
    .restart local v21    # "failsafe":I
    const/16 v55, 0x7d0

    move/from16 v0, v22

    move/from16 v1, v55

    if-le v0, v1, :cond_9

    .line 871
    new-instance v55, Lcom/alibaba/alimei/sdk/calendar/common/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    const-string/jumbo v57, "Recurrence processing stuck: "

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/alibaba/alimei/sdk/calendar/common/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 781
    .end local v11    # "byhourCount":I
    .end local v12    # "byminuteCount":I
    .end local v13    # "bymonthCount":I
    .end local v14    # "bysecondCount":I
    .end local v21    # "failsafe":I
    .end local v26    # "freqField":I
    .end local v38    # "monthIndex":I
    .end local v46    # "untilDateValue":J
    .end local v48    # "useDays":Z
    .end local v49    # "usebyhour":Z
    .end local v50    # "usebyminute":Z
    .end local v51    # "usebymonth":Z
    .end local v52    # "usebysecond":Z
    :pswitch_1
    const/16 v26, 0x2

    .line 782
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 784
    .end local v26    # "freqField":I
    :pswitch_2
    const/16 v26, 0x3

    .line 785
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 787
    .end local v26    # "freqField":I
    :pswitch_3
    const/16 v26, 0x4

    .line 788
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 790
    .end local v26    # "freqField":I
    :pswitch_4
    const/16 v26, 0x4

    .line 791
    .restart local v26    # "freqField":I
    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->d:I

    move/from16 v55, v0

    mul-int/lit8 v25, v55, 0x7

    .line 792
    if-gtz v25, :cond_2

    .line 793
    const/16 v25, 0x7

    goto/16 :goto_0

    .line 797
    .end local v26    # "freqField":I
    :pswitch_5
    const/16 v26, 0x5

    .line 798
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 800
    .end local v26    # "freqField":I
    :pswitch_6
    const/16 v26, 0x6

    .line 801
    .restart local v26    # "freqField":I
    goto/16 :goto_0

    .line 811
    .restart local v13    # "bymonthCount":I
    .restart local v51    # "usebymonth":Z
    :cond_7
    const/16 v48, 0x0

    goto/16 :goto_1

    .line 852
    .restart local v11    # "byhourCount":I
    .restart local v12    # "byminuteCount":I
    .restart local v14    # "bysecondCount":I
    .restart local v48    # "useDays":Z
    .restart local v49    # "usebyhour":Z
    .restart local v50    # "usebyminute":Z
    .restart local v52    # "usebysecond":Z
    :cond_8
    const-wide v46, 0x7fffffffffffffffL

    .restart local v46    # "untilDateValue":J
    goto :goto_2

    .line 874
    .restart local v21    # "failsafe":I
    .restart local v38    # "monthIndex":I
    :cond_9
    invoke-static/range {v30 .. v30}, Lagh;->a(Landroid/text/format/Time;)V

    .line 876
    move-object/from16 v0, v30

    iget v10, v0, Landroid/text/format/Time;->year:I

    .line 877
    .local v10, "iteratorYear":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v34, v55, 0x1

    .line 878
    .local v34, "iteratorMonth":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v31, v0

    .line 879
    .local v31, "iteratorDay":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v32, v0

    .line 880
    .local v32, "iteratorHour":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v33, v0

    .line 881
    .local v33, "iteratorMinute":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v35, v0

    .line 884
    .local v35, "iteratorSecond":I
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 889
    :cond_a
    if-eqz v51, :cond_1c

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->u:[I

    move-object/from16 v55, v0

    aget v9, v55, v38

    .line 892
    .local v9, "month":I
    :goto_4
    add-int/lit8 v9, v9, -0x1

    .line 895
    const/16 v16, 0x1

    .line 896
    .local v16, "dayIndex":I
    const/16 v36, 0x0

    .line 901
    .local v36, "lastDayToExamine":I
    if-eqz v48, :cond_b

    .line 905
    const/16 v55, 0x5

    move/from16 v0, v24

    move/from16 v1, v55

    if-ne v0, v1, :cond_1d

    .line 923
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v55, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->e:I

    move/from16 v56, v0

    .line 924
    invoke-static/range {v56 .. v56}, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b(I)I

    move-result v56

    sub-int v55, v55, v56

    add-int/lit8 v55, v55, 0x7

    rem-int/lit8 v54, v55, 0x7

    .line 925
    .local v54, "weekStartAdj":I
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v16, v55, v54

    .line 926
    add-int/lit8 v36, v16, 0x6

    .line 938
    .end local v54    # "weekStartAdj":I
    :cond_b
    :goto_5
    if-eqz v48, :cond_1f

    .line 2432
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v57, v0

    .line 2433
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    .line 2435
    const/16 v55, 0x0

    .line 2443
    if-lez v16, :cond_c

    const/16 v58, 0x1c

    move/from16 v0, v16

    move/from16 v1, v58

    if-le v0, v1, :cond_27

    .line 2445
    :cond_c
    move-object/from16 v0, v17

    iget-object v0, v0, Lagh$a;->c:Landroid/text/format/Time;

    move-object/from16 v55, v0

    .line 2446
    move-object/from16 v0, v55

    move/from16 v1, v16

    move/from16 v2, v56

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 2447
    invoke-static/range {v55 .. v55}, Lagh;->a(Landroid/text/format/Time;)V

    .line 2448
    move-object/from16 v0, v55

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v57, v0

    .line 2449
    move-object/from16 v0, v55

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v56, v0

    .line 2450
    move-object/from16 v0, v55

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v58, v0

    .line 2463
    :goto_6
    move-object/from16 v0, v17

    iget v0, v0, Lagh$a;->d:I

    move/from16 v59, v0

    move/from16 v0, v57

    move/from16 v1, v59

    if-ne v0, v1, :cond_d

    move-object/from16 v0, v17

    iget v0, v0, Lagh$a;->e:I

    move/from16 v59, v0

    move/from16 v0, v56

    move/from16 v1, v59

    if-eq v0, v1, :cond_f

    .line 2464
    :cond_d
    if-nez v55, :cond_e

    .line 2465
    move-object/from16 v0, v17

    iget-object v0, v0, Lagh$a;->c:Landroid/text/format/Time;

    move-object/from16 v55, v0

    .line 2466
    move-object/from16 v0, v55

    move/from16 v1, v58

    move/from16 v2, v56

    move/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/format/Time;->set(III)V

    .line 2467
    invoke-static/range {v55 .. v55}, Lagh;->a(Landroid/text/format/Time;)V

    .line 2475
    :cond_e
    move/from16 v0, v57

    move-object/from16 v1, v17

    iput v0, v1, Lagh$a;->d:I

    .line 2476
    move/from16 v0, v56

    move-object/from16 v1, v17

    iput v0, v1, Lagh$a;->e:I

    .line 2477
    move-object/from16 v0, v17

    iget-object v0, v0, Lagh$a;->a:Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    move-object/from16 v56, v0

    invoke-static/range {v55 .. v56}, Lagh$a;->a(Landroid/text/format/Time;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;)I

    move-result v55

    move/from16 v0, v55

    move-object/from16 v1, v17

    iput v0, v1, Lagh$a;->b:I

    .line 2482
    :cond_f
    move-object/from16 v0, v17

    iget v0, v0, Lagh$a;->b:I

    move/from16 v55, v0

    const/16 v56, 0x1

    shl-int v56, v56, v58

    and-int v55, v55, v56

    if-eqz v55, :cond_1e

    const/16 v55, 0x1

    .line 939
    :goto_7
    if-eqz v55, :cond_19

    .line 943
    move/from16 v8, v16

    .line 951
    .local v8, "day":I
    :goto_8
    const/16 v27, 0x0

    .line 953
    .local v27, "hourIndex":I
    :cond_10
    if-eqz v49, :cond_20

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->j:[I

    move-object/from16 v55, v0

    aget v7, v55, v27

    .line 959
    .local v7, "hour":I
    :goto_9
    const/16 v37, 0x0

    .line 961
    .local v37, "minuteIndex":I
    :cond_11
    if-eqz v50, :cond_21

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->h:[I

    move-object/from16 v55, v0

    aget v6, v55, v37

    .line 967
    .local v6, "minute":I
    :goto_a
    const/16 v42, 0x0

    .line 969
    .local v42, "secondIndex":I
    :cond_12
    if-eqz v52, :cond_22

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->f:[I

    move-object/from16 v55, v0

    aget v5, v55, v42

    .line 977
    .local v5, "second":I
    :goto_b
    invoke-virtual/range {v4 .. v10}, Landroid/text/format/Time;->set(IIIIII)V

    .line 978
    invoke-static {v4}, Lagh;->a(Landroid/text/format/Time;)V

    .line 980
    invoke-static {v4}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 984
    .local v28, "genDateValue":J
    cmp-long v55, v28, v18

    if-ltz v55, :cond_16

    .line 989
    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lagh;->a(Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;Landroid/text/format/Time;)I

    move-result v23

    .line 990
    .local v23, "filtered":I
    if-nez v23, :cond_16

    .line 1006
    cmp-long v55, v18, v28

    if-nez v55, :cond_13

    if-eqz p7, :cond_13

    cmp-long v55, v18, p3

    if-ltz v55, :cond_13

    cmp-long v55, v18, p5

    if-ltz v55, :cond_14

    .line 1010
    :cond_13
    add-int/lit8 v15, v15, 0x1

    .line 1014
    :cond_14
    cmp-long v55, v28, v46

    if-gtz v55, :cond_26

    .line 1024
    cmp-long v55, v28, p5

    if-gez v55, :cond_26

    .line 1033
    cmp-long v55, v28, p3

    if-ltz v55, :cond_15

    .line 1037
    if-eqz p7, :cond_23

    .line 1038
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_15
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    move/from16 v55, v0

    if-lez v55, :cond_16

    move-object/from16 v0, p2

    iget v0, v0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-eq v0, v15, :cond_26

    .line 1050
    .end local v23    # "filtered":I
    :cond_16
    add-int/lit8 v42, v42, 0x1

    .line 1051
    if-eqz v52, :cond_17

    move/from16 v0, v42

    if-lt v0, v14, :cond_12

    .line 1052
    :cond_17
    add-int/lit8 v37, v37, 0x1

    .line 1053
    if-eqz v50, :cond_18

    move/from16 v0, v37

    if-lt v0, v12, :cond_11

    .line 1054
    :cond_18
    add-int/lit8 v27, v27, 0x1

    .line 1055
    if-eqz v49, :cond_19

    move/from16 v0, v27

    if-lt v0, v11, :cond_10

    .line 1056
    .end local v5    # "second":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v8    # "day":I
    .end local v27    # "hourIndex":I
    .end local v28    # "genDateValue":J
    .end local v37    # "minuteIndex":I
    .end local v42    # "secondIndex":I
    :cond_19
    add-int/lit8 v16, v16, 0x1

    .line 1057
    if-eqz v48, :cond_1a

    move/from16 v0, v16

    move/from16 v1, v36

    if-le v0, v1, :cond_b

    .line 1058
    :cond_1a
    add-int/lit8 v38, v38, 0x1

    .line 1059
    if-eqz v51, :cond_1b

    move/from16 v0, v38

    if-lt v0, v13, :cond_a

    .line 1065
    :cond_1b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v40, v0

    .line 1066
    .local v40, "oldDay":I
    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1067
    const/16 v39, 0x1

    .line 1069
    .local v39, "n":I
    :goto_d
    mul-int v53, v25, v39

    .line 1070
    .local v53, "value":I
    packed-switch v26, :pswitch_data_1

    .line 1096
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    const-string/jumbo v57, "bad field="

    invoke-direct/range {v56 .. v57}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v56

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v9    # "month":I
    .end local v16    # "dayIndex":I
    .end local v36    # "lastDayToExamine":I
    .end local v39    # "n":I
    .end local v40    # "oldDay":I
    .end local v53    # "value":I
    :cond_1c
    move/from16 v9, v34

    .line 889
    goto/16 :goto_4

    .line 928
    .restart local v9    # "month":I
    .restart local v16    # "dayIndex":I
    .restart local v36    # "lastDayToExamine":I
    :cond_1d
    const/16 v55, 0x4

    .line 929
    move/from16 v0, v55

    invoke-virtual {v4, v0}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v36

    goto/16 :goto_5

    .line 2482
    :cond_1e
    const/16 v55, 0x0

    goto/16 :goto_7

    .line 946
    :cond_1f
    move/from16 v8, v31

    .restart local v8    # "day":I
    goto/16 :goto_8

    .restart local v27    # "hourIndex":I
    :cond_20
    move/from16 v7, v32

    .line 953
    goto/16 :goto_9

    .restart local v7    # "hour":I
    .restart local v37    # "minuteIndex":I
    :cond_21
    move/from16 v6, v33

    .line 961
    goto/16 :goto_a

    .restart local v6    # "minute":I
    .restart local v42    # "secondIndex":I
    :cond_22
    move/from16 v5, v35

    .line 969
    goto/16 :goto_b

    .line 1040
    .restart local v5    # "second":I
    .restart local v23    # "filtered":I
    .restart local v28    # "genDateValue":J
    :cond_23
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_c

    .line 1072
    .end local v5    # "second":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v8    # "day":I
    .end local v23    # "filtered":I
    .end local v27    # "hourIndex":I
    .end local v28    # "genDateValue":J
    .end local v37    # "minuteIndex":I
    .end local v42    # "secondIndex":I
    .restart local v39    # "n":I
    .restart local v40    # "oldDay":I
    .restart local v53    # "value":I
    :pswitch_7
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1099
    :goto_e
    invoke-static/range {v30 .. v30}, Lagh;->a(Landroid/text/format/Time;)V

    .line 1100
    const/16 v55, 0x6

    move/from16 v0, v26

    move/from16 v1, v55

    if-eq v0, v1, :cond_24

    const/16 v55, 0x5

    move/from16 v0, v26

    move/from16 v1, v55

    if-ne v0, v1, :cond_25

    .line 1103
    :cond_24
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v40

    if-eq v0, v1, :cond_25

    .line 1106
    add-int/lit8 v39, v39, 0x1

    .line 1107
    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    goto/16 :goto_d

    .line 1075
    :pswitch_8
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_e

    .line 1078
    :pswitch_9
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_e

    .line 1081
    :pswitch_a
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_e

    .line 1084
    :pswitch_b
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_e

    .line 1087
    :pswitch_c
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_e

    .line 1090
    :pswitch_d
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_e

    .line 1093
    :pswitch_e
    move-object/from16 v0, v30

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v53

    move/from16 v0, v55

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I
    :try_end_2
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_e

    :cond_25
    move/from16 v22, v21

    .line 1109
    .end local v21    # "failsafe":I
    .restart local v22    # "failsafe":I
    goto/16 :goto_3

    .line 1121
    .end local v22    # "failsafe":I
    .end local v39    # "n":I
    .end local v40    # "oldDay":I
    .end local v53    # "value":I
    .restart local v5    # "second":I
    .restart local v6    # "minute":I
    .restart local v7    # "hour":I
    .restart local v8    # "day":I
    .restart local v21    # "failsafe":I
    .restart local v23    # "filtered":I
    .restart local v27    # "hourIndex":I
    .restart local v28    # "genDateValue":J
    .restart local v37    # "minuteIndex":I
    .restart local v42    # "secondIndex":I
    :cond_26
    return-void

    .end local v5    # "second":I
    .end local v6    # "minute":I
    .end local v7    # "hour":I
    .end local v8    # "day":I
    .end local v23    # "filtered":I
    .end local v27    # "hourIndex":I
    .end local v28    # "genDateValue":J
    .end local v37    # "minuteIndex":I
    .end local v42    # "secondIndex":I
    :cond_27
    move/from16 v58, v16

    goto/16 :goto_6

    .line 775
    .line 1070
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private static a(I)Z
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1219
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(III)Z
    .locals 1
    .param p0, "freq"    # I
    .param p1, "freqConstant"    # I
    .param p2, "count"    # I

    .prologue
    .line 413
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a([IIII)Z
    .locals 3
    .param p0, "a"    # [I
    .param p1, "N"    # I
    .param p2, "v"    # I
    .param p3, "max"    # I

    .prologue
    const/4 v2, 0x1

    .line 171
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 172
    aget v1, p0, v0

    .line 173
    .local v1, "w":I
    if-lez v1, :cond_1

    .line 174
    if-ne v1, p2, :cond_2

    .line 184
    .end local v1    # "w":I
    :cond_0
    :goto_1
    return v2

    .line 178
    .restart local v1    # "w":I
    :cond_1
    add-int/2addr p3, v1

    .line 179
    if-eq p3, p2, :cond_0

    .line 171
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    .end local v1    # "w":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private static b(I)I
    .locals 1
    .param p0, "year"    # I

    .prologue
    .line 1229
    invoke-static {p0}, Lagh;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method

.method private static final b(Landroid/text/format/Time;)J
    .locals 4
    .param p0, "normalized"    # Landroid/text/format/Time;

    .prologue
    .line 1300
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static b(Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;Landroid/text/format/Time;)Z
    .locals 13
    .param p0, "r"    # Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .param p1, "instance"    # Landroid/text/format/Time;

    .prologue
    const/4 v10, 0x1

    .line 329
    iget v11, p1, Landroid/text/format/Time;->weekDay:I

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    sub-int/2addr v11, v12

    add-int/lit8 v11, v11, 0x24

    rem-int/lit8 v5, v11, 0x7

    .line 335
    .local v5, "dotw":I
    const/4 v0, 0x0

    .line 336
    .local v0, "bydayMask":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v11, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->n:I

    if-ge v6, v11, :cond_0

    .line 337
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->l:[I

    aget v11, v11, v6

    or-int/2addr v0, v11

    .line 336
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 344
    :cond_0
    const/4 v11, 0x4

    invoke-virtual {p1, v11}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 345
    .local v8, "maxDay":I
    new-array v2, v8, [I

    .line 346
    .local v2, "daySet":[I
    const/4 v3, 0x0

    .line 348
    .local v3, "daySetLength":I
    const/4 v9, 0x1

    .local v9, "md":I
    move v4, v3

    .end local v3    # "daySetLength":I
    .local v4, "daySetLength":I
    :goto_1
    if-gt v9, v8, :cond_2

    .line 351
    const/high16 v11, 0x10000

    shl-int v1, v11, v5

    .line 352
    .local v1, "dayBit":I
    and-int v11, v0, v1

    if-eqz v11, :cond_8

    .line 353
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    aput v9, v2, v4

    .line 356
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 357
    const/4 v11, 0x7

    if-ne v5, v11, :cond_1

    .line 358
    const/4 v5, 0x0

    .line 348
    :cond_1
    add-int/lit8 v9, v9, 0x1

    move v4, v3

    .end local v3    # "daySetLength":I
    .restart local v4    # "daySetLength":I
    goto :goto_1

    .line 365
    .end local v1    # "dayBit":I
    :cond_2
    iget v11, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->x:I

    add-int/lit8 v6, v11, -0x1

    :goto_3
    if-ltz v6, :cond_7

    .line 366
    iget-object v11, p0, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->w:[I

    aget v7, v11, v6

    .line 367
    .local v7, "index":I
    if-lez v7, :cond_4

    .line 368
    if-gt v7, v4, :cond_5

    .line 371
    add-int/lit8 v11, v7, -0x1

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-ne v11, v12, :cond_5

    .line 387
    .end local v7    # "index":I
    :cond_3
    :goto_4
    return v10

    .line 374
    .restart local v7    # "index":I
    :cond_4
    if-gez v7, :cond_6

    .line 375
    add-int v11, v4, v7

    if-ltz v11, :cond_5

    .line 378
    add-int v11, v4, v7

    aget v11, v2, v11

    iget v12, p1, Landroid/text/format/Time;->monthDay:I

    if-eq v11, v12, :cond_3

    .line 365
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 383
    :cond_6
    new-instance v10, Ljava/lang/RuntimeException;

    const-string/jumbo v11, "invalid bysetpos value"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 387
    .end local v7    # "index":I
    :cond_7
    const/4 v10, 0x0

    goto :goto_4

    .restart local v1    # "dayBit":I
    :cond_8
    move v3, v4

    .end local v4    # "daySetLength":I
    .restart local v3    # "daySetLength":I
    goto :goto_2
.end method


# virtual methods
.method public final a(Landroid/text/format/Time;Lagi;)J
    .locals 12
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lagi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/DateException;
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    .line 62
    .line 2089
    iget-object v0, p2, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-eqz v0, :cond_6

    .line 2090
    iget-object v9, p2, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    array-length v10, v9

    move v8, v1

    move v0, v1

    move-wide v2, v6

    :goto_0
    if-ge v8, v10, :cond_2

    aget-object v4, v9, v8

    .line 2091
    iget v5, v4, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->c:I

    if-eqz v5, :cond_1

    .line 2092
    const/4 v0, 0x1

    .line 2090
    :cond_0
    :goto_1
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    goto :goto_0

    .line 2093
    :cond_1
    iget-object v5, v4, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 2095
    iget-object v5, p0, Lagh;->a:Landroid/text/format/Time;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;->b:Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 2096
    iget-object v4, p0, Lagh;->a:Landroid/text/format/Time;

    invoke-virtual {v4, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    .line 2097
    cmp-long v11, v4, v2

    if-lez v11, :cond_0

    move-wide v2, v4

    .line 2098
    goto :goto_1

    .line 2102
    :cond_2
    cmp-long v4, v2, v6

    if-eqz v4, :cond_4

    iget-object v4, p2, Lagi;->b:[J

    if-eqz v4, :cond_4

    .line 2103
    iget-object v9, p2, Lagi;->b:[J

    array-length v10, v9

    move v8, v1

    move-wide v4, v2

    :goto_2
    if-ge v8, v10, :cond_3

    aget-wide v2, v9, v8

    .line 2104
    cmp-long v11, v2, v4

    if-lez v11, :cond_d

    .line 2103
    :goto_3
    add-int/lit8 v4, v8, 0x1

    move v8, v4

    move-wide v4, v2

    goto :goto_2

    :cond_3
    move-wide v2, v4

    .line 2112
    :cond_4
    cmp-long v4, v2, v6

    if-eqz v4, :cond_8

    if-nez v0, :cond_8

    .line 2141
    :cond_5
    :goto_4
    return-wide v2

    .line 2115
    :cond_6
    iget-object v0, p2, Lagi;->b:[J

    if-eqz v0, :cond_7

    iget-object v0, p2, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-nez v0, :cond_7

    iget-object v0, p2, Lagi;->d:[J

    if-nez v0, :cond_7

    .line 2118
    iget-object v5, p2, Lagi;->b:[J

    array-length v8, v5

    move v4, v1

    move-wide v2, v6

    :goto_5
    if-ge v4, v8, :cond_5

    aget-wide v0, v5, v4

    .line 2119
    cmp-long v6, v0, v2

    if-lez v6, :cond_c

    .line 2118
    :goto_6
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move-wide v2, v0

    goto :goto_5

    :cond_7
    move v0, v1

    .line 2128
    :cond_8
    if-nez v0, :cond_9

    iget-object v0, p2, Lagi;->b:[J

    if-eqz v0, :cond_b

    .line 2132
    :cond_9
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v4

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 2131
    invoke-virtual/range {v1 .. v7}, Lagh;->a(Landroid/text/format/Time;Lagi;JJ)[J

    move-result-object v0

    .line 2138
    array-length v1, v0

    if-nez v1, :cond_a

    .line 2139
    const-wide/16 v2, 0x0

    goto :goto_4

    .line 2141
    :cond_a
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, v0, v1

    goto :goto_4

    :cond_b
    move-wide v2, v6

    .line 62
    goto :goto_4

    :cond_c
    move-wide v0, v2

    goto :goto_6

    :cond_d
    move-wide v2, v4

    goto :goto_3
.end method

.method public final a(Landroid/text/format/Time;Lagi;JJ)[J
    .locals 31
    .param p1, "dtstart"    # Landroid/text/format/Time;
    .param p2, "recur"    # Lagi;
    .param p3, "rangeStartMillis"    # J
    .param p5, "rangeEndMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/DateException;
        }
    .end annotation

    .prologue
    .line 640
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 641
    .local v28, "timezone":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->a:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 642
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->d:Landroid/text/format/Time;

    move-object/from16 v0, v28

    invoke-virtual {v3, v0}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->a:Landroid/text/format/Time;

    move-wide/from16 v0, p3

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 649
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->a:Landroid/text/format/Time;

    invoke-static {v3}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 652
    .local v6, "rangeStartDateValue":J
    const-wide/16 v16, -0x1

    cmp-long v3, p5, v16

    if-eqz v3, :cond_0

    .line 653
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->a:Landroid/text/format/Time;

    move-wide/from16 v0, p5

    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 654
    move-object/from16 v0, p0

    iget-object v3, v0, Lagh;->a:Landroid/text/format/Time;

    invoke-static {v3}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 659
    .local v8, "rangeEndDateValue":J
    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 661
    .local v11, "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-eqz v3, :cond_1

    .line 662
    move-object/from16 v0, p2

    iget-object v14, v0, Lagi;->a:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    array-length v0, v14

    move/from16 v16, v0

    const/4 v3, 0x0

    move v13, v3

    :goto_1
    move/from16 v0, v16

    if-ge v13, v0, :cond_1

    aget-object v5, v14, v13

    .line 663
    .local v5, "rrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v11}, Lagh;->a(Landroid/text/format/Time;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 662
    add-int/lit8 v3, v13, 0x1

    move v13, v3

    goto :goto_1

    .line 656
    .end local v5    # "rrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    .end local v8    # "rangeEndDateValue":J
    .end local v11    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    .restart local v8    # "rangeEndDateValue":J
    goto :goto_0

    .line 667
    .restart local v11    # "dtSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Long;>;"
    :cond_1
    move-object/from16 v0, p2

    iget-object v3, v0, Lagi;->b:[J

    if-eqz v3, :cond_2

    .line 668
    move-object/from16 v0, p2

    iget-object v4, v0, Lagi;->b:[J

    array-length v10, v4

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v10, :cond_2

    aget-wide v22, v4, v3

    .line 671
    .local v22, "dt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lagh;->a:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 672
    move-object/from16 v0, p0

    iget-object v13, v0, Lagh;->a:Landroid/text/format/Time;

    invoke-static {v13}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 673
    .local v24, "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 668
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 676
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    :cond_2
    move-object/from16 v0, p2

    iget-object v3, v0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    if-eqz v3, :cond_3

    .line 677
    move-object/from16 v0, p2

    iget-object v4, v0, Lagi;->c:[Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;

    array-length v10, v4

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v10, :cond_3

    aget-object v15, v4, v3

    .line 678
    .local v15, "exrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    const/16 v20, 0x0

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move-object/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Lagh;->a(Landroid/text/format/Time;Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 677
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 682
    .end local v15    # "exrule":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence;
    :cond_3
    move-object/from16 v0, p2

    iget-object v3, v0, Lagi;->d:[J

    if-eqz v3, :cond_4

    .line 683
    move-object/from16 v0, p2

    iget-object v4, v0, Lagi;->d:[J

    array-length v10, v4

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v10, :cond_4

    aget-wide v22, v4, v3

    .line 686
    .restart local v22    # "dt":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lagh;->a:Landroid/text/format/Time;

    move-wide/from16 v0, v22

    invoke-virtual {v13, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 687
    move-object/from16 v0, p0

    iget-object v13, v0, Lagh;->a:Landroid/text/format/Time;

    invoke-static {v13}, Lagh;->b(Landroid/text/format/Time;)J

    move-result-wide v24

    .line 688
    .restart local v24    # "dtvalue":J
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 683
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 691
    .end local v22    # "dt":J
    .end local v24    # "dtvalue":J
    :cond_4
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 694
    const/4 v3, 0x0

    new-array v2, v3, [J

    .line 708
    :cond_5
    return-object v2

    .line 701
    :cond_6
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v27

    .line 702
    .local v27, "len":I
    move/from16 v0, v27

    new-array v2, v0, [J

    .line 703
    .local v2, "dates":[J
    const/4 v12, 0x0

    .line 704
    .local v12, "i":I
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/lang/Long;

    .line 705
    .local v29, "val":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v4, v0, Lagh;->a:Landroid/text/format/Time;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 2306
    const/16 v10, 0x1a

    shr-long v18, v16, v10

    move-wide/from16 v0, v18

    long-to-int v10, v0

    iput v10, v4, Landroid/text/format/Time;->year:I

    .line 2307
    const/16 v10, 0x16

    shr-long v18, v16, v10

    move-wide/from16 v0, v18

    long-to-int v10, v0

    and-int/lit8 v10, v10, 0xf

    iput v10, v4, Landroid/text/format/Time;->month:I

    .line 2308
    const/16 v10, 0x11

    shr-long v18, v16, v10

    move-wide/from16 v0, v18

    long-to-int v10, v0

    and-int/lit8 v10, v10, 0x1f

    iput v10, v4, Landroid/text/format/Time;->monthDay:I

    .line 2309
    const/16 v10, 0xc

    shr-long v18, v16, v10

    move-wide/from16 v0, v18

    long-to-int v10, v0

    and-int/lit8 v10, v10, 0x1f

    iput v10, v4, Landroid/text/format/Time;->hour:I

    .line 2310
    const/4 v10, 0x6

    shr-long v18, v16, v10

    move-wide/from16 v0, v18

    long-to-int v10, v0

    and-int/lit8 v10, v10, 0x3f

    iput v10, v4, Landroid/text/format/Time;->minute:I

    .line 2311
    const-wide/16 v18, 0x3f

    and-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v10, v0

    iput v10, v4, Landroid/text/format/Time;->second:I

    .line 706
    add-int/lit8 v26, v12, 0x1

    .end local v12    # "i":I
    .local v26, "i":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lagh;->a:Landroid/text/format/Time;

    const/4 v10, 0x1

    invoke-virtual {v4, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v16

    aput-wide v16, v2, v12

    move/from16 v12, v26

    .line 707
    .end local v26    # "i":I
    .restart local v12    # "i":I
    goto :goto_5
.end method
