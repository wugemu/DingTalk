.class final Lhor$a;
.super Ljava/lang/Object;
.source "CalendarWidgetPresent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhor;

.field private b:Lckq;

.field private c:Lhoq$a;


# direct methods
.method constructor <init>(Lhor;Lckq;Lhoq$a;)V
    .locals 0
    .param p2, "calendarBean"    # Lckq;
    .param p3, "fragmentMVPView"    # Lhoq$a;

    .prologue
    .line 81
    iput-object p1, p0, Lhor$a;->a:Lhor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p2, p0, Lhor$a;->b:Lckq;

    .line 83
    iput-object p3, p0, Lhor$a;->c:Lhoq$a;

    .line 84
    return-void
.end method

.method static synthetic a(Lhor$a;)Lhoq$a;
    .locals 1
    .param p0, "x0"    # Lhor$a;

    .prologue
    .line 75
    iget-object v0, p0, Lhor$a;->c:Lhoq$a;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 19

    .prologue
    .line 89
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->b:Lckq;

    if-nez v12, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 93
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->b:Lckq;

    .line 1050
    iget v11, v12, Lckq;->a:I

    .line 94
    .local v11, "year":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->b:Lckq;

    .line 1054
    iget v7, v12, Lckq;->b:I

    .line 96
    .local v7, "month":I
    const/4 v10, 0x0

    .line 97
    .local v10, "start":Lckq;
    const/4 v4, 0x0

    .line 98
    .local v4, "end":Lckq;
    move-object/from16 v0, p0

    iget-object v14, v0, Lhor$a;->a:Lhor;

    .line 2176
    iget-object v12, v14, Lhor;->a:Lhfn;

    invoke-virtual {v12}, Lhfn;->size()I

    move-result v12

    if-nez v12, :cond_3

    .line 2177
    const/4 v12, 0x0

    .line 98
    :goto_1
    if-nez v12, :cond_2

    .line 100
    const/4 v12, 0x1

    invoke-static {v11, v7, v12}, Lcqe;->a(III)I

    move-result v5

    .line 102
    .local v5, "fDayOfWeek":I
    new-instance v10, Lckq;

    .end local v10    # "start":Lckq;
    neg-int v12, v5

    invoke-direct {v10, v11, v7, v12}, Lckq;-><init>(III)V

    .line 103
    .restart local v10    # "start":Lckq;
    new-instance v4, Lckq;

    .end local v4    # "end":Lckq;
    add-int/lit8 v12, v5, -0x1

    rsub-int/lit8 v12, v12, 0x2a

    invoke-direct {v4, v11, v7, v12}, Lckq;-><init>(III)V

    .line 106
    .end local v5    # "fDayOfWeek":I
    .restart local v4    # "end":Lckq;
    :cond_2
    if-eqz v10, :cond_0

    if-eqz v4, :cond_0

    .line 107
    new-instance v8, Lhjn;

    invoke-direct {v8}, Lhjn;-><init>()V

    .line 109
    .local v8, "request":Lhjn;
    invoke-static {}, Lclu;->a()Ljava/util/Calendar;

    move-result-object v3

    .line 110
    .local v3, "calendar":Ljava/util/Calendar;
    const/4 v12, 0x1

    .line 3050
    iget v13, v10, Lckq;->a:I

    .line 110
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 111
    const/4 v12, 0x2

    .line 3054
    iget v13, v10, Lckq;->b:I

    .line 111
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/4 v12, 0x5

    .line 3058
    iget v13, v10, Lckq;->c:I

    .line 112
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 114
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v8, Lhjn;->a:Ljava/lang/Long;

    .line 116
    const/4 v12, 0x1

    .line 4050
    iget v13, v4, Lckq;->a:I

    .line 116
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/4 v12, 0x2

    .line 4054
    iget v13, v4, Lckq;->b:I

    .line 117
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 118
    const/4 v12, 0x5

    .line 4058
    iget v13, v4, Lckq;->c:I

    .line 118
    invoke-virtual {v3, v12, v13}, Ljava/util/Calendar;->set(II)V

    .line 120
    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iput-object v12, v8, Lhjn;->b:Ljava/lang/Long;

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->a:Lhor;

    .line 5034
    iget-object v12, v12, Lhor;->b:Ljava/lang/String;

    .line 122
    iput-object v12, v8, Lhjn;->c:Ljava/lang/String;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v2, "bizTypes":Ljava/util/List;
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->a:Lhor;

    .line 6034
    iget-object v12, v12, Lhor;->c:[I

    .line 126
    if-eqz v12, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->a:Lhor;

    .line 7034
    iget-object v12, v12, Lhor;->c:[I

    .line 126
    array-length v12, v12

    if-lez v12, :cond_d

    .line 127
    move-object/from16 v0, p0

    iget-object v12, v0, Lhor$a;->a:Lhor;

    .line 8034
    iget-object v13, v12, Lhor;->c:[I

    .line 127
    array-length v14, v13

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v14, :cond_d

    aget v6, v13, v12

    .line 128
    .local v6, "mBizType":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2180
    .end local v2    # "bizTypes":Ljava/util/List;
    .end local v3    # "calendar":Ljava/util/Calendar;
    .end local v6    # "mBizType":I
    .end local v8    # "request":Lhjn;
    :cond_3
    const/4 v13, 0x0

    .line 2183
    const/4 v12, 0x1

    invoke-static {v11, v7, v12}, Lcqe;->a(III)I

    move-result v15

    .line 2184
    invoke-static {v11, v7}, Lcqe;->a(II)I

    move-result v16

    .line 2187
    add-int/lit8 v12, v15, -0x1

    move/from16 v18, v12

    move-object v12, v13

    move/from16 v13, v18

    :goto_3
    if-lez v13, :cond_6

    .line 2188
    if-nez v12, :cond_4

    .line 2189
    new-instance v12, Lckq;

    rsub-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-direct {v12, v11, v7, v0}, Lckq;-><init>(III)V

    .line 2194
    :goto_4
    iget-object v0, v14, Lhor;->a:Lhfn;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lhfn;->a(Lckq;)Lhkm;

    move-result-object v17

    if-nez v17, :cond_5

    .line 2195
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2191
    :cond_4
    rsub-int/lit8 v17, v13, 0x1

    move/from16 v0, v17

    invoke-virtual {v12, v11, v7, v0}, Lckq;->a(III)V

    goto :goto_4

    .line 2187
    :cond_5
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    .line 2200
    :cond_6
    const/4 v13, 0x1

    :goto_5
    move/from16 v0, v16

    if-gt v13, v0, :cond_9

    .line 2201
    if-nez v12, :cond_7

    .line 2202
    new-instance v12, Lckq;

    invoke-direct {v12, v11, v7, v13}, Lckq;-><init>(III)V

    .line 2207
    :goto_6
    iget-object v0, v14, Lhor;->a:Lhfn;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lhfn;->a(Lckq;)Lhkm;

    move-result-object v17

    if-nez v17, :cond_8

    .line 2208
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2204
    :cond_7
    invoke-virtual {v12, v11, v7, v13}, Lckq;->a(III)V

    goto :goto_6

    .line 2200
    :cond_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 2213
    :cond_9
    add-int/lit8 v13, v16, 0x1

    :goto_7
    add-int/lit8 v16, v15, -0x1

    rsub-int/lit8 v16, v16, 0x2a

    move/from16 v0, v16

    if-gt v13, v0, :cond_c

    .line 2214
    if-nez v12, :cond_a

    .line 2215
    new-instance v12, Lckq;

    invoke-direct {v12, v11, v7, v13}, Lckq;-><init>(III)V

    .line 2220
    :goto_8
    iget-object v0, v14, Lhor;->a:Lhfn;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Lhfn;->a(Lckq;)Lhkm;

    move-result-object v16

    if-nez v16, :cond_b

    .line 2221
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 2217
    :cond_a
    invoke-virtual {v12, v11, v7, v13}, Lckq;->a(III)V

    goto :goto_8

    .line 2213
    :cond_b
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2225
    :cond_c
    const/4 v12, 0x1

    goto/16 :goto_1

    .line 132
    .restart local v2    # "bizTypes":Ljava/util/List;
    .restart local v3    # "calendar":Ljava/util/Calendar;
    .restart local v8    # "request":Lhjn;
    :cond_d
    iput-object v2, v8, Lhjn;->d:Ljava/util/List;

    .line 134
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v12

    const v13, 0x36ee80

    div-int/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    iput-object v12, v8, Lhjn;->e:Ljava/lang/Integer;

    .line 136
    const-class v12, Lcom/alibaba/lightapp/runtime/idl/OACalendarIService;

    invoke-static {v12}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/lightapp/runtime/idl/OACalendarIService;

    .line 138
    .local v9, "service":Lcom/alibaba/lightapp/runtime/idl/OACalendarIService;
    new-instance v12, Lhor$a$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lhor$a$1;-><init>(Lhor$a;)V

    invoke-interface {v9, v8, v12}, Lcom/alibaba/lightapp/runtime/idl/OACalendarIService;->get(Lhjn;Liyv;)V

    goto/16 :goto_0
.end method
