.class final Lape;
.super Ljava/lang/Object;
.source "CalendarAlertUtil.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "event_id"

    aput-object v1, v0, v3

    const-string/jumbo v1, "title"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string/jumbo v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "begin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "hasAlarm"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "visible"

    aput-object v2, v0, v1

    sput-object v0, Lape;->a:[Ljava/lang/String;

    .line 54
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "minutes"

    aput-object v1, v0, v3

    sput-object v0, Lape;->b:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/alibaba/wukong/Callback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/util/List",
            "<",
            "Lapb;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/util/List<Lapb;>;>;"
    invoke-static {}, Latf;->a()Latf;

    move-result-object v0

    new-instance v1, Lape$1;

    invoke-direct {v1, p0}, Lape$1;-><init>(Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v0, v1}, Latf;->a(Ljava/lang/Runnable;)V

    .line 99
    return-void
.end method

.method static synthetic b(Lcom/alibaba/wukong/Callback;)V
    .locals 18
    .param p0, "x0"    # Lcom/alibaba/wukong/Callback;

    .prologue
    .line 30
    .line 1103
    invoke-static {}, Lawi;->a()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1104
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarAlert] have no permission to query system calendar db"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1105
    const-string/jumbo v2, ""

    const-string/jumbo v3, ""

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1114
    sget-object v4, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 1115
    const-wide/32 v6, 0x5265c00

    sub-long v6, v2, v6

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1116
    const-wide/32 v6, 0x2932e000

    add-long/2addr v2, v6

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 1118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1119
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    sget-object v4, Lape;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1125
    if-nez v9, :cond_2

    .line 1126
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarAlert] have no system alerts"

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1127
    if-eqz p0, :cond_0

    .line 1128
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v2}, Lcom/alibaba/wukong/Callback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 1133
    :cond_2
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "[CalendarAlert] querySystemAlerts, isEmotionUI:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 1134
    invoke-static {}, Lcof;->l()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 1133
    invoke-static {v3}, Lavy;->a([Ljava/lang/String;)V

    .line 1136
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1139
    :cond_3
    :goto_1
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1140
    const/4 v3, 0x7

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    const/4 v3, 0x1

    .line 1141
    :goto_2
    if-eqz v3, :cond_3

    .line 1145
    const/4 v3, 0x0

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v6, v3

    .line 1146
    const/4 v3, 0x1

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1147
    const/4 v3, 0x2

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1148
    const/4 v3, 0x3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1149
    const/4 v3, 0x4

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    move v8, v3

    .line 1150
    :goto_3
    const/4 v3, 0x5

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 1151
    const/4 v3, 0x6

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v14, 0x1

    if-ne v3, v14, :cond_7

    const/4 v3, 0x1

    .line 1153
    :goto_4
    new-instance v14, Lapb$a;

    invoke-direct {v14}, Lapb$a;-><init>()V

    .line 2107
    const/4 v15, 0x0

    iput v15, v14, Lapb$a;->a:I

    .line 2112
    iput-wide v6, v14, Lapb$a;->b:J

    .line 2117
    iput-object v11, v14, Lapb$a;->c:Ljava/lang/String;

    .line 2122
    iput-object v12, v14, Lapb$a;->d:Ljava/lang/String;

    .line 2127
    iput-object v13, v14, Lapb$a;->e:Ljava/lang/String;

    .line 2132
    iput-wide v4, v14, Lapb$a;->f:J

    .line 2147
    iput-boolean v8, v14, Lapb$a;->i:Z

    .line 1162
    if-eqz v3, :cond_a

    .line 1163
    sget-object v3, Lape;->b:[Ljava/lang/String;

    invoke-static {v2, v6, v7, v3}, Landroid/provider/CalendarContract$Reminders;->query(Landroid/content/ContentResolver;J[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v11

    .line 1166
    if-eqz v11, :cond_3

    .line 1168
    :goto_5
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1169
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 1175
    if-eqz v8, :cond_8

    .line 1176
    invoke-static {v4, v5}, Lawj;->b(J)J

    move-result-wide v6

    int-to-long v12, v3

    const-wide/32 v16, 0xea60

    mul-long v12, v12, v16

    sub-long/2addr v6, v12

    .line 1177
    invoke-static {}, Lcof;->l()Z

    move-result v12

    if-eqz v12, :cond_4

    .line 1178
    const-wide/32 v12, 0x1ee6280

    add-long/2addr v6, v12

    .line 3137
    :cond_4
    :goto_6
    iput-wide v6, v14, Lapb$a;->g:J

    .line 3142
    iput v3, v14, Lapb$a;->h:I

    .line 1185
    invoke-virtual {v14}, Lapb$a;->a()Lapb;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 1187
    :catch_0
    move-exception v3

    .line 1188
    :try_start_2
    const-string/jumbo v4, "query reminders failed"

    invoke-static {v4, v3}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1190
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 1203
    :catch_1
    move-exception v2

    .line 1204
    :try_start_4
    const-string/jumbo v3, "querySystemAlerts failed"

    invoke-static {v3, v2}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1206
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1209
    :goto_7
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[CalendarAlert] system alerts size:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 1211
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Lape$2;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lape$2;-><init>(Lcom/alibaba/wukong/Callback;)V

    .line 4416
    iget-object v4, v2, Latf;->a:Latf$b;

    new-instance v5, Latf$12;

    invoke-direct {v5, v2, v10, v3}, Latf$12;-><init>(Latf;Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    invoke-virtual {v4, v5}, Latf$b;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1140
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 1149
    :cond_6
    const/4 v3, 0x0

    move v8, v3

    goto/16 :goto_3

    .line 1151
    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 1181
    :cond_8
    int-to-long v6, v3

    const-wide/32 v12, 0xea60

    mul-long/2addr v6, v12

    sub-long v6, v4, v6

    goto :goto_6

    .line 1190
    :cond_9
    :try_start_5
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 1206
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1190
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1197
    :cond_a
    if-eqz v8, :cond_b

    invoke-static {v4, v5}, Lawj;->c(J)J

    move-result-wide v4

    .line 4137
    :cond_b
    iput-wide v4, v14, Lapb$a;->g:J

    .line 1199
    const/4 v3, 0x0

    .line 4142
    iput v3, v14, Lapb$a;->h:I

    .line 1200
    invoke-virtual {v14}, Lapb$a;->a()Lapb;

    move-result-object v3

    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_1

    .line 1206
    :cond_c
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_7
.end method
