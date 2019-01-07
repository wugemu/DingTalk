.class public final Lcqg;
.super Ljava/lang/Object;
.source "LunarCalendarUtil.java"


# static fields
.field private static final a:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x96

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcqg;->a:[J

    return-void

    :array_0
    .array-data 8
        0x4bd8
        0x4ae0
        0xa570
        0x54d5
        0xd260
        0xd950
        0x16554
        0x56a0
        0x9ad0
        0x55d2
        0x4ae0
        0xa5b6
        0xa4d0
        0xd250
        0x1d255
        0xb540
        0xd6a0
        0xada2
        0x95b0
        0x14977
        0x4970
        0xa4b0
        0xb4b5
        0x6a50
        0x6d40
        0x1ab54
        0x2b60
        0x9570
        0x52f2
        0x4970
        0x6566
        0xd4a0
        0xea50
        0x6e95
        0x5ad0
        0x2b60
        0x186e3
        0x92e0
        0x1c8d7
        0xc950
        0xd4a0
        0x1d8a6
        0xb550
        0x56a0
        0x1a5b4
        0x25d0
        0x92d0
        0xd2b2
        0xa950
        0xb557
        0x6ca0
        0xb550
        0x15355
        0x4da0
        0xa5d0
        0x14573
        0x52d0
        0xa9a8
        0xe950
        0x6aa0
        0xaea6
        0xab50
        0x4b60
        0xaae4
        0xa570
        0x5260
        0xf263
        0xd950
        0x5b57
        0x56a0
        0x96d0
        0x4dd5
        0x4ad0
        0xa4d0
        0xd4d4
        0xd250
        0xd558
        0xb540
        0xb5a0
        0x195a6
        0x95b0
        0x49b0
        0xa974
        0xa4b0
        0xb27a
        0x6a50
        0x6d40
        0xaf46
        0xab60
        0x9570
        0x4af5
        0x4970
        0x64b0
        0x74a3
        0xea50
        0x6b58
        0x55c0
        0xab60
        0x96d5
        0x92e0
        0xc960
        0xd954
        0xd4a0
        0xda50
        0x7552
        0x56a0
        0xabb7
        0x25d0
        0x92d0
        0xcab5
        0xa950
        0xb4a0
        0xbaa4
        0xad50
        0x55d9
        0x4ba0
        0xa5b0
        0x15176
        0x52b0
        0xa930
        0x7954
        0x6aa0
        0xad50
        0x5b52
        0x4b60
        0xa6e6
        0xa4e0
        0xd260
        0xea65
        0xd530
        0x5aa0
        0x76a3
        0x96d0
        0x4bd7
        0x4ad0
        0xa4d0
        0x1d0b6
        0xd250
        0xd520
        0xdd45
        0xb5a0
        0x56d0
        0x55b2
        0x49b0
        0xa577
        0xa4b0
        0xaa50
        0x1b255
        0x6d20
        0xada0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 6
    .param p0, "year"    # I

    .prologue
    .line 201
    const/16 v1, 0x15c

    .line 202
    .local v1, "sum":I
    const v0, 0x8000

    .local v0, "i":I
    :goto_0
    const/16 v2, 0x8

    if-le v0, v2, :cond_1

    .line 203
    sget-object v2, Lcqg;->a:[J

    add-int/lit16 v3, p0, -0x76c

    aget-wide v2, v2, v3

    int-to-long v4, v0

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 204
    add-int/lit8 v1, v1, 0x1

    .line 202
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p0}, Lcqg;->b(I)I

    move-result v2

    add-int/2addr v2, v1

    return v2
.end method

.method public static a(II)Ljava/lang/String;
    .locals 6
    .param p0, "month"    # I
    .param p1, "day"    # I

    .prologue
    .line 106
    const-string/jumbo v1, ""

    .line 107
    .local v1, "lunarDateStr":Ljava/lang/String;
    const/16 v3, 0xa

    if-ne p1, v3, :cond_0

    .line 108
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_chushi:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 187
    :goto_0
    return-object v3

    .line 110
    :cond_0
    const/16 v3, 0x14

    if-ne p1, v3, :cond_1

    .line 111
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_ershi:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 113
    :cond_1
    const/16 v3, 0x1e

    if-ne p1, v3, :cond_2

    .line 114
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_sanshi:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 116
    :cond_2
    div-int/lit8 v2, p1, 0xa

    .line 117
    .local v2, "tenNum":I
    if-nez v2, :cond_3

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_chu:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_shi:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 123
    :cond_4
    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 124
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_nian:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 126
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 127
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->and_calendar_num_san:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 129
    :cond_6
    rem-int/lit8 v0, p1, 0xa

    .line 130
    .local v0, "digitNum":I
    packed-switch v0, :pswitch_data_0

    :goto_1
    move-object v3, v1

    .line 187
    goto :goto_0

    .line 132
    :pswitch_0
    if-nez v2, :cond_7

    .line 133
    packed-switch p0, :pswitch_data_1

    .line 160
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_yi:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    goto :goto_1

    .line 135
    :pswitch_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_one:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 137
    :pswitch_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_two:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 139
    :pswitch_3
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_three:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 141
    :pswitch_4
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_four:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 143
    :pswitch_5
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_five:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 145
    :pswitch_6
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_six:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 147
    :pswitch_7
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_seven:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 149
    :pswitch_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_eight:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 151
    :pswitch_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_nine:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 153
    :pswitch_a
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_ten:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 155
    :pswitch_b
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_eleven:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 157
    :pswitch_c
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lcig$j;->dt_calendar_lunar_twelve:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 163
    :pswitch_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_er:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 164
    goto/16 :goto_1

    .line 166
    :pswitch_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_san:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 167
    goto/16 :goto_1

    .line 169
    :pswitch_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_si:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 170
    goto/16 :goto_1

    .line 172
    :pswitch_10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_wu:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    goto/16 :goto_1

    .line 175
    :pswitch_11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_liu:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    goto/16 :goto_1

    .line 178
    :pswitch_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_qi:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 179
    goto/16 :goto_1

    .line 181
    :pswitch_13
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_ba:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 182
    goto/16 :goto_1

    .line 184
    :pswitch_14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    sget v5, Lcig$j;->and_calendar_num_jiu:I

    invoke-virtual {v4, v5}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 130
    .line 133
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public static a(III)[J
    .locals 19
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 40
    const/4 v3, 0x7

    new-array v13, v3, [J

    .line 42
    .local v13, "lunarDate":[J
    const/16 v18, 0x0

    .line 45
    .local v18, "temp":I
    new-instance v2, Ljava/util/GregorianCalendar;

    const-string/jumbo v3, "Asian/Shanghai"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 46
    .local v2, "gregorianCalendar":Ljava/util/GregorianCalendar;
    const/16 v3, 0x76c

    const/4 v4, 0x0

    const/16 v5, 0x1f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 47
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v10

    .line 48
    .local v10, "baseMillis":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    invoke-virtual/range {v2 .. v8}, Ljava/util/GregorianCalendar;->set(IIIIII)V

    .line 49
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v14

    .line 50
    .local v14, "objMillis":J
    sub-long v4, v14, v10

    const-wide/32 v6, 0x5265c00

    div-long v16, v4, v6

    .line 52
    .local v16, "offset":J
    const/4 v3, 0x5

    const-wide/16 v4, 0x28

    add-long v4, v4, v16

    aput-wide v4, v13, v3

    .line 53
    const/4 v3, 0x4

    const-wide/16 v4, 0xe

    aput-wide v4, v13, v3

    .line 54
    const/16 v9, 0x76c

    .local v9, "i":I
    :goto_0
    const/16 v3, 0x802

    if-ge v9, v3, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_0

    .line 55
    invoke-static {v9}, Lcqg;->a(I)I

    move-result v18

    .line 56
    move/from16 v0, v18

    int-to-long v4, v0

    sub-long v16, v16, v4

    .line 57
    const/4 v3, 0x4

    aget-wide v4, v13, v3

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    aput-wide v4, v13, v3

    .line 54
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 59
    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-gez v3, :cond_1

    .line 60
    move/from16 v0, v18

    int-to-long v4, v0

    add-long v16, v16, v4

    .line 61
    add-int/lit8 v9, v9, -0x1

    .line 62
    const/4 v3, 0x4

    aget-wide v4, v13, v3

    const-wide/16 v6, 0xc

    sub-long/2addr v4, v6

    aput-wide v4, v13, v3

    .line 64
    :cond_1
    const/4 v3, 0x0

    int-to-long v4, v9

    aput-wide v4, v13, v3

    .line 65
    const/4 v3, 0x3

    add-int/lit16 v4, v9, -0x748

    int-to-long v4, v4

    aput-wide v4, v13, v3

    .line 66
    invoke-static {v9}, Lcqg;->c(I)I

    move-result v12

    .line 67
    .local v12, "leap":I
    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v13, v3

    .line 68
    const/4 v9, 0x1

    :goto_1
    const/16 v3, 0xd

    if-ge v9, v3, :cond_5

    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-lez v3, :cond_5

    .line 70
    if-lez v12, :cond_4

    add-int/lit8 v3, v12, 0x1

    if-ne v9, v3, :cond_4

    const/4 v3, 0x6

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 71
    add-int/lit8 v9, v9, -0x1

    .line 72
    const/4 v3, 0x6

    const-wide/16 v4, 0x1

    aput-wide v4, v13, v3

    .line 73
    const/4 v3, 0x0

    aget-wide v4, v13, v3

    long-to-int v3, v4

    invoke-static {v3}, Lcqg;->b(I)I

    move-result v18

    .line 78
    :goto_2
    const/4 v3, 0x6

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    add-int/lit8 v3, v12, 0x1

    if-ne v9, v3, :cond_2

    .line 79
    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v13, v3

    .line 81
    :cond_2
    move/from16 v0, v18

    int-to-long v4, v0

    sub-long v16, v16, v4

    .line 82
    const/4 v3, 0x6

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    .line 83
    const/4 v3, 0x4

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    aput-wide v4, v13, v3

    .line 68
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 75
    :cond_4
    const/4 v3, 0x0

    aget-wide v4, v13, v3

    long-to-int v3, v4

    invoke-static {v3, v9}, Lcqg;->b(II)I

    move-result v18

    goto :goto_2

    .line 86
    :cond_5
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-nez v3, :cond_6

    if-lez v12, :cond_6

    add-int/lit8 v3, v12, 0x1

    if-ne v9, v3, :cond_6

    .line 87
    const/4 v3, 0x6

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_8

    .line 88
    const/4 v3, 0x6

    const-wide/16 v4, 0x0

    aput-wide v4, v13, v3

    .line 95
    :cond_6
    :goto_3
    const-wide/16 v4, 0x0

    cmp-long v3, v16, v4

    if-gez v3, :cond_7

    .line 96
    move/from16 v0, v18

    int-to-long v4, v0

    add-long v16, v16, v4

    .line 97
    add-int/lit8 v9, v9, -0x1

    .line 98
    const/4 v3, 0x4

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    aput-wide v4, v13, v3

    .line 100
    :cond_7
    const/4 v3, 0x1

    int-to-long v4, v9

    aput-wide v4, v13, v3

    .line 101
    const/4 v3, 0x2

    const-wide/16 v4, 0x1

    add-long v4, v4, v16

    aput-wide v4, v13, v3

    .line 102
    return-object v13

    .line 90
    :cond_8
    const/4 v3, 0x6

    const-wide/16 v4, 0x1

    aput-wide v4, v13, v3

    .line 91
    add-int/lit8 v9, v9, -0x1

    .line 92
    const/4 v3, 0x4

    aget-wide v4, v13, v3

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    aput-wide v4, v13, v3

    goto :goto_3
.end method

.method private static b(I)I
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 214
    invoke-static {p0}, Lcqg;->c(I)I

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    sget-object v0, Lcqg;->a:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/32 v2, 0x10000

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 217
    :goto_0
    return v0

    .line 215
    :cond_0
    const/16 v0, 0x1d

    goto :goto_0

    .line 217
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(II)I
    .locals 4
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 194
    sget-object v0, Lcqg;->a:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const/high16 v2, 0x10000

    shr-int/2addr v2, p1

    int-to-long v2, v2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1d

    goto :goto_0
.end method

.method private static c(I)I
    .locals 4
    .param p0, "year"    # I

    .prologue
    .line 225
    sget-object v0, Lcqg;->a:[J

    add-int/lit16 v1, p0, -0x76c

    aget-wide v0, v0, v1

    const-wide/16 v2, 0xf

    and-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
