.class public final Lja$2;
.super Ljava/lang/Object;
.source "BandWidthSampler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lja;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:J

.field final synthetic d:Lja;


# direct methods
.method public constructor <init>(Lja;JJJ)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lja$2;->d:Lja;

    iput-wide p2, p0, Lja$2;->a:J

    iput-wide p4, p0, Lja$2;->b:J

    iput-wide p6, p0, Lja$2;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 92
    const/4 v2, 0x1

    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    const-string/jumbo v2, "awcn.BandWidthSampler"

    const-string/jumbo v3, "onDataReceived"

    const/4 v4, 0x0

    const/4 v5, 0x6

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "mRequestStartTime"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-wide v8, p0, Lja$2;->a:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "mRequestFinishedTime"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-wide v8, p0, Lja$2;->b:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "mRequestDataSize"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    iget-wide v8, p0, Lja$2;->c:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    :cond_0
    invoke-static {}, Lja;->c()Z

    move-result v2

    if-nez v2, :cond_2

    .line 172
    :cond_1
    :goto_0
    return-void

    .line 102
    :cond_2
    iget-wide v2, p0, Lja$2;->c:J

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget-wide v2, p0, Lja$2;->a:J

    iget-wide v4, p0, Lja$2;->b:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 106
    sget v2, Lja;->a:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lja;->a:I

    .line 107
    sget-wide v2, Lja;->e:J

    iget-wide v4, p0, Lja$2;->c:J

    add-long/2addr v2, v4

    sput-wide v2, Lja;->e:J

    .line 109
    sget v2, Lja;->a:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 110
    iget-wide v2, p0, Lja$2;->b:J

    iget-wide v4, p0, Lja$2;->a:J

    sub-long/2addr v2, v4

    sput-wide v2, Lja;->d:J

    .line 113
    :cond_3
    sget v2, Lja;->a:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    sget v2, Lja;->a:I

    const/4 v3, 0x3

    if-gt v2, v3, :cond_4

    .line 115
    iget-wide v2, p0, Lja$2;->a:J

    sget-wide v4, Lja;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_c

    .line 116
    sget-wide v2, Lja;->d:J

    iget-wide v4, p0, Lja$2;->b:J

    iget-wide v6, p0, Lja$2;->a:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    sput-wide v2, Lja;->d:J

    .line 129
    :cond_4
    :goto_1
    iget-wide v2, p0, Lja$2;->a:J

    sput-wide v2, Lja;->b:J

    .line 130
    iget-wide v2, p0, Lja$2;->b:J

    sput-wide v2, Lja;->c:J

    .line 132
    sget v2, Lja;->a:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 133
    iget-object v2, p0, Lja$2;->d:Lja;

    invoke-static {v2}, Lja;->a(Lja;)Ljc;

    move-result-object v3

    sget-wide v4, Lja;->e:J

    long-to-double v4, v4

    sget-wide v6, Lja;->d:J

    long-to-double v6, v6

    .line 1033
    div-double/2addr v4, v6

    .line 1036
    const-wide/high16 v6, 0x4020000000000000L    # 8.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_d

    .line 1038
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_5

    .line 1041
    iput-wide v4, v3, Ljc;->j:D

    .line 1106
    :cond_5
    :goto_2
    iget-wide v2, v3, Ljc;->j:D

    .line 133
    double-to-long v2, v2

    long-to-double v2, v2

    sput-wide v2, Lja;->i:D

    .line 135
    sget-wide v2, Lja;->f:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    sput-wide v2, Lja;->f:J

    .line 136
    iget-object v2, p0, Lja$2;->d:Lja;

    invoke-static {v2}, Lja;->b(Lja;)I

    .line 139
    sget-wide v2, Lja;->f:J

    const-wide/16 v4, 0x1e

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 140
    iget-object v2, p0, Lja$2;->d:Lja;

    invoke-static {v2}, Lja;->a(Lja;)Ljc;

    move-result-object v2

    invoke-virtual {v2}, Ljc;->a()V

    .line 141
    const-wide/16 v2, 0x3

    sput-wide v2, Lja;->f:J

    .line 145
    :cond_6
    sget-wide v2, Lja;->i:D

    const-wide v4, 0x3fe5c28f5c28f5c3L    # 0.68

    mul-double/2addr v2, v4

    sget-wide v4, Lja;->h:D

    const-wide v6, 0x3fd147ae147ae148L    # 0.27

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    sget-wide v4, Lja;->g:D

    const-wide v6, 0x3fa999999999999aL    # 0.05

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 147
    .local v0, "filtered_speed":D
    sget-wide v2, Lja;->h:D

    sput-wide v2, Lja;->g:D

    .line 148
    sget-wide v2, Lja;->i:D

    sput-wide v2, Lja;->h:D

    .line 151
    sget-wide v2, Lja;->i:D

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    sget-wide v6, Lja;->g:D

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-ltz v2, :cond_7

    sget-wide v2, Lja;->i:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    sget-wide v6, Lja;->g:D

    mul-double/2addr v4, v6

    cmpl-double v2, v2, v4

    if-lez v2, :cond_8

    .line 152
    :cond_7
    sput-wide v0, Lja;->i:D

    .line 155
    :cond_8
    const/4 v2, 0x1

    invoke-static {v2}, Lanet/channel/util/ALog;->a(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 156
    const-string/jumbo v2, "awcn.BandWidthSampler"

    const-string/jumbo v3, "NetworkSpeed"

    const/4 v4, 0x0

    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "mKalmanDataSize"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-wide v8, Lja;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-string/jumbo v7, "mKalmanTimeUsed"

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-wide v8, Lja;->d:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    const-string/jumbo v7, "speed"

    aput-object v7, v5, v6

    const/4 v6, 0x5

    sget-wide v8, Lja;->i:D

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x6

    const-string/jumbo v7, "mSpeedKalmanCount"

    aput-object v7, v5, v6

    const/4 v6, 0x7

    sget-wide v8, Lja;->f:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    :cond_9
    iget-object v2, p0, Lja$2;->d:Lja;

    invoke-static {v2}, Lja;->c(Lja;)I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_a

    sget-wide v2, Lja;->f:J

    const-wide/16 v4, 0x2

    cmp-long v2, v2, v4

    if-nez v2, :cond_b

    .line 163
    :cond_a
    invoke-static {}, Liz;->a()Liz;

    move-result-object v2

    sget-wide v4, Lja;->i:D

    invoke-virtual {v2, v4, v5}, Liz;->a(D)V

    .line 164
    iget-object v2, p0, Lja$2;->d:Lja;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lja;->a(Lja;I)I

    .line 165
    iget-object v3, p0, Lja$2;->d:Lja;

    sget-wide v4, Lja;->i:D

    sget-wide v6, Lja;->j:D

    cmpg-double v2, v4, v6

    if-gez v2, :cond_15

    const/4 v2, 0x1

    :goto_3
    invoke-static {v3, v2}, Lja;->b(Lja;I)I

    .line 166
    const-string/jumbo v2, "awcn.BandWidthSampler"

    const-string/jumbo v3, "NetworkSpeed notification!"

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "Send Network quality notification."

    aput-object v7, v5, v6

    invoke-static {v2, v3, v4, v5}, Lanet/channel/util/ALog;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 168
    :cond_b
    const-wide/16 v2, 0x0

    sput-wide v2, Lja;->d:J

    .line 169
    const-wide/16 v2, 0x0

    sput-wide v2, Lja;->e:J

    .line 170
    const/4 v2, 0x0

    sput v2, Lja;->a:I

    goto/16 :goto_0

    .line 119
    .end local v0    # "filtered_speed":D
    :cond_c
    iget-wide v2, p0, Lja$2;->a:J

    sget-wide v4, Lja;->c:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    iget-wide v2, p0, Lja$2;->b:J

    sget-wide v4, Lja;->c:J

    cmp-long v2, v2, v4

    if-ltz v2, :cond_4

    .line 120
    sget-wide v2, Lja;->d:J

    iget-wide v4, p0, Lja$2;->b:J

    iget-wide v6, p0, Lja$2;->a:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 121
    sput-wide v2, Lja;->d:J

    sget-wide v4, Lja;->c:J

    iget-wide v6, p0, Lja$2;->a:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    sput-wide v2, Lja;->d:J

    goto/16 :goto_1

    .line 1051
    :cond_d
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-nez v2, :cond_e

    .line 1052
    iput-wide v4, v3, Ljc;->h:D

    .line 1053
    iget-wide v4, v3, Ljc;->h:D

    iput-wide v4, v3, Ljc;->g:D

    .line 1055
    iget-wide v4, v3, Ljc;->g:D

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->c:D

    .line 1056
    iget-wide v4, v3, Ljc;->g:D

    const-wide v6, 0x3f947ae147ae147bL    # 0.02

    mul-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->b:D

    .line 1057
    const-wide v4, 0x3fb999999999999aL    # 0.1

    iget-wide v6, v3, Ljc;->g:D

    mul-double/2addr v4, v6

    iget-wide v6, v3, Ljc;->g:D

    mul-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->d:D

    .line 1099
    :goto_4
    iget-wide v4, v3, Ljc;->g:D

    const-wide/16 v6, 0x0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_14

    .line 1100
    iget-wide v4, v3, Ljc;->i:D

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->j:D

    .line 1101
    iget-wide v4, v3, Ljc;->j:D

    iput-wide v4, v3, Ljc;->g:D

    goto/16 :goto_2

    .line 1058
    :cond_e
    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x1

    cmp-long v2, v6, v8

    if-nez v2, :cond_f

    .line 1059
    iput-wide v4, v3, Ljc;->i:D

    .line 1060
    iget-wide v4, v3, Ljc;->i:D

    iput-wide v4, v3, Ljc;->g:D

    goto :goto_4

    .line 1063
    :cond_f
    iget-wide v6, v3, Ljc;->i:D

    sub-double v6, v4, v6

    .line 1065
    iget-wide v8, v3, Ljc;->i:D

    iput-wide v8, v3, Ljc;->h:D

    .line 1066
    iput-wide v4, v3, Ljc;->i:D

    .line 1068
    const-wide v8, 0x3fee666666666666L    # 0.95

    div-double/2addr v4, v8

    iput-wide v4, v3, Ljc;->a:D

    .line 1069
    iget-wide v4, v3, Ljc;->a:D

    const-wide v8, 0x3fee666666666666L    # 0.95

    iget-wide v10, v3, Ljc;->g:D

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    iput-wide v4, v3, Ljc;->f:D

    .line 1071
    const/4 v2, 0x0

    .line 1073
    iget-wide v4, v3, Ljc;->c:D

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 1074
    iget-wide v8, v3, Ljc;->f:D

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    mul-double/2addr v10, v4

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_12

    .line 1075
    const/4 v2, 0x1

    .line 1076
    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    iget-wide v10, v3, Ljc;->f:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, v10

    add-double/2addr v4, v8

    iput-wide v4, v3, Ljc;->f:D

    .line 1082
    :cond_10
    :goto_5
    const-wide v4, 0x3ff0cccccccccccdL    # 1.05

    iget-wide v8, v3, Ljc;->c:D

    mul-double/2addr v4, v8

    const-wide v8, 0x3f647ae147ae147bL    # 0.0025

    iget-wide v10, v3, Ljc;->f:D

    mul-double/2addr v8, v10

    iget-wide v10, v3, Ljc;->f:D

    mul-double/2addr v8, v10

    sub-double/2addr v4, v8

    .line 1084
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v8, 0x3fe999999999999aL    # 0.8

    iget-wide v10, v3, Ljc;->c:D

    mul-double/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 1085
    const-wide/high16 v8, 0x3ff4000000000000L    # 1.25

    iget-wide v10, v3, Ljc;->c:D

    mul-double/2addr v8, v10

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v3, Ljc;->c:D

    .line 1087
    iget-wide v4, v3, Ljc;->d:D

    const-wide v8, 0x3fece147ae147ae1L    # 0.9025

    iget-wide v10, v3, Ljc;->d:D

    mul-double/2addr v8, v10

    iget-wide v10, v3, Ljc;->c:D

    add-double/2addr v8, v10

    div-double/2addr v4, v8

    iput-wide v4, v3, Ljc;->e:D

    .line 1088
    iget-wide v4, v3, Ljc;->g:D

    const-wide v8, 0x3ff0d79435e50d79L    # 1.0526315789473684

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iget-wide v6, v3, Ljc;->e:D

    iget-wide v8, v3, Ljc;->f:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->g:D

    .line 1090
    const/4 v4, 0x1

    if-ne v2, v4, :cond_13

    .line 1091
    iget-wide v4, v3, Ljc;->g:D

    iget-wide v6, v3, Ljc;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    iput-wide v4, v3, Ljc;->g:D

    .line 1096
    :cond_11
    :goto_6
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide v6, 0x3fee666666666666L    # 0.95

    iget-wide v8, v3, Ljc;->e:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    iget-wide v6, v3, Ljc;->d:D

    iget-wide v8, v3, Ljc;->b:D

    add-double/2addr v6, v8

    mul-double/2addr v4, v6

    iput-wide v4, v3, Ljc;->d:D

    goto/16 :goto_4

    .line 1077
    :cond_12
    iget-wide v8, v3, Ljc;->f:D

    const-wide/high16 v10, -0x3ff0000000000000L    # -4.0

    mul-double/2addr v10, v4

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_10

    .line 1078
    const/4 v2, 0x2

    .line 1079
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    mul-double/2addr v4, v8

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    iget-wide v10, v3, Ljc;->f:D

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    iput-wide v4, v3, Ljc;->f:D

    goto/16 :goto_5

    .line 1092
    :cond_13
    const/4 v4, 0x2

    if-ne v2, v4, :cond_11

    .line 1093
    iget-wide v4, v3, Ljc;->g:D

    iget-wide v6, v3, Ljc;->a:D

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    iput-wide v4, v3, Ljc;->g:D

    goto :goto_6

    .line 1103
    :cond_14
    iget-wide v4, v3, Ljc;->g:D

    iput-wide v4, v3, Ljc;->j:D

    goto/16 :goto_2

    .line 165
    .restart local v0    # "filtered_speed":D
    :cond_15
    const/4 v2, 0x5

    goto/16 :goto_3
.end method
