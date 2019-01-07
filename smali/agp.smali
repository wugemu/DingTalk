.class public final Lagp;
.super Lagm;
.source "EventOperation.java"


# static fields
.field private static final e:[Ljava/lang/String;

.field private static final f:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "account_name"

    aput-object v1, v0, v2

    const-string/jumbo v1, "account_type"

    aput-object v1, v0, v3

    sput-object v0, Lagp;->e:[Ljava/lang/String;

    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_sync_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "rrule"

    aput-object v1, v0, v3

    const-string/jumbo v1, "rdate"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "original_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "original_sync_id"

    aput-object v2, v0, v1

    sput-object v0, Lagp;->f:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lagp;-><init>(Z)V

    .line 65
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isSync"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lagm;-><init>(Z)V

    .line 69
    return-void
.end method

.method private a(JZZ)I
    .locals 25
    .param p1, "id"    # J
    .param p3, "callerIsSyncAdapter"    # Z
    .param p4, "isBatch"    # Z

    .prologue
    .line 1060
    const/16 v20, 0x0

    .line 1061
    .local v20, "result":I
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    .line 1064
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    sget-object v4, Lagp;->f:[Ljava/lang/String;

    const-string/jumbo v5, "_id=?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 1068
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1069
    const/16 v20, 0x1

    .line 1070
    const/4 v2, 0x0

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 1071
    .local v22, "syncId":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    .line 1076
    .local v15, "emptySyncId":Z
    const/4 v2, 0x1

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 1077
    .local v21, "rrule":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1078
    .local v19, "rdate":Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1079
    .local v17, "origId":Ljava/lang/String;
    const/4 v2, 0x4

    .line 1080
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 7074
    .local v18, "origSyncId":Ljava/lang/String;
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7075
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7076
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_0
    const/4 v2, 0x1

    .line 1081
    :goto_0
    if-eqz v2, :cond_2

    .line 1082
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->d:Lagj;

    .line 7415
    iget-object v8, v2, Lagj;->e:Lagl;

    .line 8206
    iget-object v3, v8, Lagl;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 8207
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8211
    :try_start_1
    iget-boolean v2, v8, Lagl;->c:Z

    if-nez v2, :cond_1

    .line 8212
    invoke-virtual {v8, v3}, Lagl;->a(Lcom/alibaba/alimei/orm/IDatabase;)V

    .line 8214
    :cond_1
    iget-object v2, v8, Lagl;->a:Lagl$a;

    iget-object v9, v2, Lagl$a;->a:Ljava/lang/String;

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    invoke-virtual/range {v8 .. v13}, Lagl;->a(Ljava/lang/String;JJ)V

    .line 8215
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8217
    :try_start_2
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 1084
    :cond_2
    invoke-static/range {v21 .. v21}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1085
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_3
    const/16 v16, 0x1

    .line 1094
    .local v16, "isRecurrence":Z
    :goto_1
    if-nez p3, :cond_4

    if-eqz v15, :cond_9

    .line 1095
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1105
    if-eqz v16, :cond_5

    if-eqz v15, :cond_5

    .line 1106
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "original_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1110
    :cond_5
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1111
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "original_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1170
    .end local v15    # "emptySyncId":Z
    .end local v16    # "isRecurrence":Z
    .end local v17    # "origId":Ljava/lang/String;
    .end local v18    # "origSyncId":Ljava/lang/String;
    .end local v19    # "rdate":Ljava/lang/String;
    .end local v21    # "rrule":Ljava/lang/String;
    .end local v22    # "syncId":Ljava/lang/String;
    :cond_6
    :goto_2
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1178
    return v20

    .line 7076
    .restart local v15    # "emptySyncId":Z
    .restart local v17    # "origId":Ljava/lang/String;
    .restart local v18    # "origSyncId":Ljava/lang/String;
    .restart local v19    # "rdate":Ljava/lang/String;
    .restart local v21    # "rrule":Ljava/lang/String;
    .restart local v22    # "syncId":Ljava/lang/String;
    :cond_7
    const/4 v2, 0x0

    goto :goto_0

    .line 8217
    :catchall_0
    move-exception v2

    :try_start_3
    invoke-interface {v3}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1170
    .end local v15    # "emptySyncId":Z
    .end local v17    # "origId":Ljava/lang/String;
    .end local v18    # "origSyncId":Ljava/lang/String;
    .end local v19    # "rdate":Ljava/lang/String;
    .end local v21    # "rrule":Ljava/lang/String;
    .end local v22    # "syncId":Ljava/lang/String;
    :catchall_1
    move-exception v2

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 1171
    throw v2

    .line 1085
    .restart local v15    # "emptySyncId":Z
    .restart local v17    # "origId":Ljava/lang/String;
    .restart local v18    # "origSyncId":Ljava/lang/String;
    .restart local v19    # "rdate":Ljava/lang/String;
    .restart local v21    # "rrule":Ljava/lang/String;
    .restart local v22    # "syncId":Ljava/lang/String;
    :cond_8
    const/16 v16, 0x0

    goto :goto_1

    .line 1122
    .restart local v16    # "isRecurrence":Z
    :cond_9
    :try_start_4
    new-instance v23, Landroid/content/ContentValues;

    invoke-direct/range {v23 .. v23}, Landroid/content/ContentValues;-><init>()V

    .line 1123
    .local v23, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "deleted"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1124
    const-string/jumbo v2, "dirty"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1125
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "_id=?"

    move-object/from16 v0, v23

    invoke-interface {v2, v3, v0, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1149
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "original_id=? AND _sync_id IS NULL"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1156
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Instances"

    const-string/jumbo v4, "event_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "EventsRawTimes"

    const-string/jumbo v4, "event_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1160
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Reminders"

    const-string/jumbo v4, "event_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "CalendarAlerts"

    const-string/jumbo v4, "event_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1164
    move-object/from16 v0, p0

    iget-object v2, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "ExtendedProperties"

    const-string/jumbo v4, "event_id=?"

    invoke-interface {v2, v3, v4, v6}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_2
.end method

.method private a(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    .locals 29
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "updateValues"    # Landroid/content/ContentValues;
    .param p3, "isSync"    # Z

    .prologue
    .line 800
    const-string/jumbo v4, "hasAlarm"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 815
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 817
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Performing update on "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " events"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 823
    new-instance v20, Landroid/content/ContentValues;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 826
    .local v20, "modValues":Landroid/content/ContentValues;
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 827
    .local v27, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 828
    const/16 v16, 0x0

    .line 829
    .local v16, "doValidate":Z
    if-nez p3, :cond_1

    .line 836
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lagp;->a(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    const/16 v16, 0x1

    .line 847
    :cond_1
    :goto_1
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 850
    const-string/jumbo v4, "eventColor_index"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 851
    .local v14, "color_id":Ljava/lang/String;
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 854
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v5, "Calendars"

    sget-object v6, Lagp;->e:[Ljava/lang/String;

    const-string/jumbo v7, "_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string/jumbo v10, "calendar_id"

    .line 857
    move-object/from16 v0, v27

    invoke-virtual {v0, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 855
    invoke-interface/range {v4 .. v11}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 860
    .local v13, "c":Landroid/database/Cursor;
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 861
    const/4 v4, 0x0

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 862
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 865
    :cond_2
    if-eqz v13, :cond_3

    .line 866
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 874
    .end local v13    # "c":Landroid/database/Cursor;
    :cond_3
    if-eqz p3, :cond_4

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lagp;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 878
    :cond_4
    if-eqz v16, :cond_5

    .line 879
    :try_start_2
    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lagp;->a(Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 888
    :cond_5
    :goto_2
    const-string/jumbo v4, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "dtend"

    .line 889
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "duration"

    .line 890
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "eventTimezone"

    .line 891
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "rrule"

    .line 892
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "rdate"

    .line 893
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "exrule"

    .line 894
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string/jumbo v4, "exdate"

    .line 895
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 898
    :cond_6
    :try_start_3
    invoke-static/range {v27 .. v27}, Lagp;->c(Landroid/content/ContentValues;)J
    :try_end_3
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-wide v22

    .line 903
    .local v22, "newLastDate":J
    const-string/jumbo v4, "lastDate"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v21

    .line 904
    .local v21, "oldLastDateObj":Ljava/lang/Long;
    if-nez v21, :cond_a

    const-wide/16 v24, -0x1

    .line 906
    .local v24, "oldLastDate":J
    :goto_3
    cmp-long v4, v24, v22

    if-eqz v4, :cond_7

    .line 911
    const-wide/16 v4, 0x0

    cmp-long v4, v22, v4

    if-gez v4, :cond_b

    .line 912
    const-string/jumbo v4, "lastDate"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    .line 919
    .end local v21    # "oldLastDateObj":Ljava/lang/Long;
    .end local v22    # "newLastDate":J
    .end local v24    # "oldLastDate":J
    :cond_7
    :goto_4
    if-nez p3, :cond_8

    .line 920
    const-string/jumbo v4, "dirty"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 927
    :cond_8
    const-string/jumbo v4, "selfAttendeeStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 928
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Updating selfAttendeeStatus in Events table is not allowed."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 838
    .end local v14    # "color_id":Ljava/lang/String;
    :catch_0
    move-exception v18

    .line 839
    .local v18, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "Event "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "_id"

    .line 840
    move-object/from16 v0, v27

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " malformed, not validating update ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 842
    invoke-virtual/range {v18 .. v18}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 865
    .end local v18    # "iae":Ljava/lang/IllegalArgumentException;
    .restart local v13    # "c":Landroid/database/Cursor;
    .restart local v14    # "color_id":Ljava/lang/String;
    :catchall_0
    move-exception v4

    if-eqz v13, :cond_9

    .line 866
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v4

    .line 881
    .end local v13    # "c":Landroid/database/Cursor;
    :catch_1
    move-exception v17

    .line 882
    .local v17, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "calendar validateEventData error"

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 899
    .end local v17    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v15

    .line 900
    .local v15, "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Unable to compute LAST_DATE"

    invoke-direct {v4, v5, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 905
    .end local v15    # "de":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    .restart local v21    # "oldLastDateObj":Ljava/lang/Long;
    .restart local v22    # "newLastDate":J
    :cond_a
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    goto/16 :goto_3

    .line 914
    .restart local v24    # "oldLastDate":J
    :cond_b
    const-string/jumbo v4, "lastDate"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_4

    .line 933
    .end local v21    # "oldLastDateObj":Ljava/lang/Long;
    .end local v22    # "newLastDate":J
    .end local v24    # "oldLastDate":J
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lagp;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 934
    const-string/jumbo v4, "EventOperation"

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 935
    const-string/jumbo v4, "EventOperation"

    const-string/jumbo v5, "handleUpdateEvents: allDay is true but sec, min, hour were not 0."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6018
    :cond_d
    const-string/jumbo v4, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    const-string/jumbo v4, "eventStatus"

    .line 6019
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_11

    const/4 v4, 0x1

    .line 6020
    :goto_5
    if-eqz v4, :cond_12

    .line 6021
    const-string/jumbo v4, "original_sync_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6023
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 6026
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lagp;->a(Ljava/lang/String;)Z

    move-result v19

    .line 946
    .local v19, "isUpdate":Z
    :goto_6
    const-string/jumbo v4, "_id"

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 948
    .local v6, "id":J
    if-eqz v19, :cond_16

    .line 955
    if-nez p3, :cond_13

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->d:Lagj;

    invoke-virtual {v4, v6, v7}, Lagj;->a(J)V

    .line 963
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v5, "Events"

    const-string/jumbo v8, "_id=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    .line 964
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 963
    move-object/from16 v0, v20

    invoke-interface {v4, v5, v0, v8, v9}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v26

    .line 965
    .local v26, "result":I
    if-lez v26, :cond_0

    .line 966
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v7, v1}, Lagp;->b(JLandroid/content/ContentValues;)V

    .line 967
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->a:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    move-object/from16 v5, v20

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Landroid/content/ContentValues;JZLcom/alibaba/alimei/orm/IDatabase;)V

    .line 973
    const-string/jumbo v4, "dtstart"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string/jumbo v4, "eventStatus"

    .line 974
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 977
    :cond_f
    const-string/jumbo v4, "eventStatus"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    const-string/jumbo v4, "eventStatus"

    .line 978
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_10

    .line 979
    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v12, v4

    .line 980
    .local v12, "args":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v5, "Instances"

    const-string/jumbo v8, "event_id=?"

    invoke-interface {v4, v5, v8, v12}, Lcom/alibaba/alimei/orm/IDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 987
    .end local v12    # "args":[Ljava/lang/String;
    :cond_10
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lagj;->a(Z)V

    goto/16 :goto_0

    .line 6019
    .end local v6    # "id":J
    .end local v19    # "isUpdate":Z
    .end local v26    # "result":I
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_5

    .line 6030
    :cond_12
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 958
    .restart local v6    # "id":J
    .restart local v19    # "isUpdate":Z
    :cond_13
    const-string/jumbo v4, "dirty"

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "dirty"

    .line 959
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_e

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->d:Lagj;

    .line 6389
    iget-object v4, v4, Lagj;->b:Lcom/alibaba/alimei/orm/IDatabase;

    .line 6390
    const-string/jumbo v5, "SELECT _id FROM Events WHERE _sync_id = (SELECT _sync_id FROM Events WHERE _id = ?) AND lastSynced = ?"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    .line 6394
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-string/jumbo v10, "1"

    aput-object v10, v8, v9

    .line 6390
    invoke-interface {v4, v5, v8}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 6398
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_15

    .line 6399
    const/4 v8, 0x0

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 6401
    sget-object v10, Lagj;->a:Ljava/lang/String;

    const/4 v11, 0x2

    invoke-static {v10, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 6402
    new-instance v10, Ljava/lang/StringBuilder;

    const-string/jumbo v11, "Removing duplicate event "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " of original event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 6406
    :cond_14
    const-string/jumbo v10, "DELETE FROM Events WHERE _id = ?"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/16 v28, 0x0

    .line 6407
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v11, v28

    .line 6406
    invoke-interface {v4, v10, v11}, Lcom/alibaba/alimei/orm/IDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 6410
    :cond_15
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/16 :goto_7

    :catchall_1
    move-exception v4

    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    throw v4

    .line 994
    :cond_16
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-direct {v0, v6, v7, v1, v4}, Lagp;->a(JZZ)I

    .line 995
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lagj;->a(Z)V

    goto/16 :goto_0

    .line 1000
    .end local v6    # "id":J
    .end local v14    # "color_id":Ljava/lang/String;
    .end local v16    # "doValidate":Z
    .end local v19    # "isUpdate":Z
    .end local v20    # "modValues":Landroid/content/ContentValues;
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_17
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    return v4
.end method

.method private a(Ljava/lang/String;)Z
    .locals 8
    .param p1, "syncId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1034
    if-nez p1, :cond_1

    .line 1036
    const-string/jumbo v2, "EventOperation"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "SyncID cannot be null: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    :cond_0
    :goto_0
    return v3

    .line 1040
    :cond_1
    const/4 v0, 0x0

    .line 1042
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_0
    iget-object v4, p0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v5, "SELECT COUNT(*) FROM Events WHERE _sync_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-interface {v4, v5, v6}, Lcom/alibaba/alimei/orm/IDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1043
    if-nez v0, :cond_2

    .line 1051
    if-eqz v0, :cond_0

    .line 1052
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1046
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    if-lez v4, :cond_4

    .line 1051
    :goto_1
    if-eqz v0, :cond_3

    .line 1052
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    .line 1046
    goto :goto_1

    .line 1047
    :catch_0
    move-exception v1

    .line 1048
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1051
    if-eqz v0, :cond_0

    .line 1052
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1051
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_5

    .line 1052
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method private b(JLandroid/content/ContentValues;)V
    .locals 15
    .param p1, "eventId"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 456
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 458
    .local v8, "rawValues":Landroid/content/ContentValues;
    const-string/jumbo v11, "event_id"

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 460
    const-string/jumbo v11, "eventTimezone"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 462
    .local v10, "timezone":Ljava/lang/String;
    const/4 v2, 0x0

    .line 463
    .local v2, "allDay":Z
    const-string/jumbo v11, "allDay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 464
    .local v3, "allDayInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    .line 465
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_8

    const/4 v2, 0x1

    .line 468
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 470
    :cond_1
    const-string/jumbo v10, "UTC"

    .line 473
    :cond_2
    new-instance v9, Landroid/text/format/Time;

    invoke-direct {v9, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 474
    .local v9, "time":Landroid/text/format/Time;
    iput-boolean v2, v9, Landroid/text/format/Time;->allDay:Z

    .line 475
    const-string/jumbo v11, "dtstart"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    .line 476
    .local v5, "dtstartMillis":Ljava/lang/Long;
    if-eqz v5, :cond_3

    .line 477
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 478
    const-string/jumbo v11, "dtstart2445"

    .line 479
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    .line 478
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    :cond_3
    const-string/jumbo v11, "dtend"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 483
    .local v4, "dtendMillis":Ljava/lang/Long;
    if-eqz v4, :cond_4

    .line 484
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 485
    const-string/jumbo v11, "dtend2445"

    .line 486
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    .line 485
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    :cond_4
    const-string/jumbo v11, "originalInstanceTime"

    .line 490
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    .line 491
    .local v7, "originalInstanceMillis":Ljava/lang/Long;
    if-eqz v7, :cond_6

    .line 495
    const-string/jumbo v11, "originalAllDay"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 496
    if-eqz v3, :cond_5

    .line 497
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_9

    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v9, Landroid/text/format/Time;->allDay:Z

    .line 499
    :cond_5
    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 500
    const-string/jumbo v11, "originalInstanceTime2445"

    .line 502
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    .line 501
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_6
    const-string/jumbo v11, "lastDate"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    .line 506
    .local v6, "lastDateMillis":Ljava/lang/Long;
    if-eqz v6, :cond_7

    .line 507
    iput-boolean v2, v9, Landroid/text/format/Time;->allDay:Z

    .line 508
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    invoke-virtual {v9, v12, v13}, Landroid/text/format/Time;->set(J)V

    .line 509
    const-string/jumbo v11, "lastDate2445"

    .line 510
    invoke-virtual {v9}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v12

    .line 509
    invoke-virtual {v8, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_7
    iget-object v11, p0, Lagp;->d:Lagj;

    invoke-virtual {v11, v8}, Lagj;->b(Landroid/content/ContentValues;)J

    .line 514
    return-void

    .line 465
    .end local v4    # "dtendMillis":Ljava/lang/Long;
    .end local v5    # "dtstartMillis":Ljava/lang/Long;
    .end local v6    # "lastDateMillis":Ljava/lang/Long;
    .end local v7    # "originalInstanceMillis":Ljava/lang/Long;
    .end local v9    # "time":Landroid/text/format/Time;
    :cond_8
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 497
    .restart local v4    # "dtendMillis":Ljava/lang/Long;
    .restart local v5    # "dtstartMillis":Ljava/lang/Long;
    .restart local v7    # "originalInstanceMillis":Ljava/lang/Long;
    .restart local v9    # "time":Landroid/text/format/Time;
    :cond_9
    const/4 v11, 0x0

    goto :goto_1
.end method

.method private static b(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    .locals 12
    .param p0, "values"    # Landroid/content/ContentValues;
    .param p1, "modValues"    # Landroid/content/ContentValues;

    .prologue
    .line 686
    const-string/jumbo v9, "allDay"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 687
    .local v0, "allDayObj":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-nez v9, :cond_2

    .line 688
    :cond_0
    const/4 v6, 0x0

    .line 743
    :cond_1
    :goto_0
    return v6

    .line 691
    :cond_2
    const/4 v6, 0x0

    .line 693
    .local v6, "neededCorrection":Z
    const-string/jumbo v9, "dtstart"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 694
    .local v3, "dtstart":Ljava/lang/Long;
    const-string/jumbo v9, "dtend"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 695
    .local v2, "dtend":Ljava/lang/Long;
    const-string/jumbo v9, "duration"

    invoke-virtual {p0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 696
    .local v4, "duration":Ljava/lang/String;
    new-instance v8, Landroid/text/format/Time;

    invoke-direct {v8}, Landroid/text/format/Time;-><init>()V

    .line 700
    .local v8, "time":Landroid/text/format/Time;
    const-string/jumbo v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 701
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 702
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_3

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_4

    .line 703
    :cond_3
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 704
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 705
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 706
    const-string/jumbo v9, "dtstart"

    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {p1, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const/4 v6, 0x1

    .line 711
    :cond_4
    if-eqz v2, :cond_6

    .line 712
    const-string/jumbo v9, "UTC"

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 713
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Landroid/text/format/Time;->set(J)V

    .line 714
    iget v9, v8, Landroid/text/format/Time;->hour:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->minute:I

    if-nez v9, :cond_5

    iget v9, v8, Landroid/text/format/Time;->second:I

    if-eqz v9, :cond_6

    .line 715
    :cond_5
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->hour:I

    .line 716
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->minute:I

    .line 717
    const/4 v9, 0x0

    iput v9, v8, Landroid/text/format/Time;->second:I

    .line 718
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 719
    const-string/jumbo v9, "dtend"

    invoke-virtual {p1, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 720
    const/4 v6, 0x1

    .line 724
    :cond_6
    if-eqz v4, :cond_1

    .line 725
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 731
    .local v5, "len":I
    if-eqz v5, :cond_1

    .line 733
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_1

    add-int/lit8 v9, v5, -0x1

    .line 734
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x53

    if-ne v9, v10, :cond_1

    .line 735
    const/4 v9, 0x1

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 736
    .local v7, "seconds":I
    const v9, 0x15180

    add-int/2addr v9, v7

    add-int/lit8 v9, v9, -0x1

    const v10, 0x15180

    div-int v1, v9, v10

    .line 737
    .local v1, "days":I
    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "P"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "D"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 738
    const-string/jumbo v9, "duration"

    invoke-virtual {p1, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/4 v6, 0x1

    goto/16 :goto_0
.end method

.method private static c(Landroid/content/ContentValues;)J
    .locals 15
    .param p0, "values"    # Landroid/content/ContentValues;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alibaba/alimei/sdk/calendar/common/DateException;
        }
    .end annotation

    .prologue
    .line 533
    const-string/jumbo v12, "dtstart"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 534
    const-string/jumbo v12, "dtend"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "rrule"

    .line 535
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "duration"

    .line 536
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "eventTimezone"

    .line 537
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "rdate"

    .line 538
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "exrule"

    .line 539
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_0

    const-string/jumbo v12, "exdate"

    .line 540
    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 541
    :cond_0
    new-instance v12, Ljava/lang/RuntimeException;

    const-string/jumbo v13, "DTSTART field missing from event"

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 543
    :cond_1
    const-wide/16 v8, -0x1

    .line 605
    :cond_2
    :goto_0
    return-wide v8

    .line 545
    :cond_3
    const-string/jumbo v12, "dtstart"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 553
    .local v2, "dtstartMillis":J
    const-string/jumbo v12, "dtend"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 554
    .local v0, "dtEnd":Ljava/lang/Long;
    if-eqz v0, :cond_4

    .line 555
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .local v8, "lastMillis":J
    goto :goto_0

    .line 558
    .end local v8    # "lastMillis":J
    :cond_4
    new-instance v4, Lagg;

    invoke-direct {v4}, Lagg;-><init>()V

    .line 559
    .local v4, "duration":Lagg;
    const-string/jumbo v12, "duration"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 560
    .local v5, "durationStr":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 561
    invoke-virtual {v4, v5}, Lagg;->a(Ljava/lang/String;)V

    .line 566
    :cond_5
    :try_start_0
    new-instance v7, Lagi;

    invoke-direct {v7, p0}, Lagi;-><init>(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .local v7, "recur":Lagi;
    if-eqz v7, :cond_7

    invoke-virtual {v7}, Lagi;->a()Z

    move-result v12

    if-eqz v12, :cond_7

    .line 581
    const-string/jumbo v12, "eventTimezone"

    invoke-virtual {p0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 583
    .local v11, "tz":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 585
    const-string/jumbo v11, "UTC"

    .line 587
    :cond_6
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1, v11}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 589
    .local v1, "dtstartLocal":Landroid/text/format/Time;
    invoke-virtual {v1, v2, v3}, Landroid/text/format/Time;->set(J)V

    .line 591
    new-instance v10, Lagh;

    invoke-direct {v10}, Lagh;-><init>()V

    .line 592
    .local v10, "rp":Lagh;
    invoke-virtual {v10, v1, v7}, Lagh;->a(Landroid/text/format/Time;Lagi;)J

    move-result-wide v8

    .line 593
    .restart local v8    # "lastMillis":J
    const-wide/16 v12, -0x1

    cmp-long v12, v8, v12

    if-eqz v12, :cond_2

    .line 5139
    .end local v1    # "dtstartLocal":Landroid/text/format/Time;
    .end local v10    # "rp":Lagh;
    .end local v11    # "tz":Ljava/lang/String;
    :goto_1
    invoke-virtual {v4}, Lagg;->a()J

    move-result-wide v12

    add-long/2addr v8, v12

    .line 603
    goto :goto_0

    .line 567
    .end local v7    # "recur":Lagi;
    .end local v8    # "lastMillis":J
    :catch_0
    move-exception v6

    .line 569
    .local v6, "e":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
    const-string/jumbo v12, "EventOperation"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string/jumbo v14, "Could not parse RRULE recurrence string: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v14, "rrule"

    .line 570
    invoke-virtual {p0, v14}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 569
    invoke-static {v12, v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 574
    const-wide/16 v8, -0x1

    goto/16 :goto_0

    .line 599
    .end local v6    # "e":Lcom/alibaba/alimei/sdk/calendar/common/EventRecurrence$InvalidFormatException;
    .restart local v7    # "recur":Lagi;
    :cond_7
    move-wide v8, v2

    .restart local v8    # "lastMillis":J
    goto :goto_1
.end method

.method private d(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 619
    :try_start_0
    invoke-static {p1}, Lagp;->c(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 620
    .local v2, "last":J
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 621
    const-string/jumbo v1, "lastDate"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_0
    .catch Lcom/alibaba/alimei/sdk/calendar/common/DateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    .end local v2    # "last":J
    .end local p1    # "values":Landroid/content/ContentValues;
    :cond_0
    :goto_0
    return-object p1

    .line 625
    .restart local p1    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 628
    .local v0, "e":Lcom/alibaba/alimei/sdk/calendar/common/DateException;
    const-string/jumbo v1, "EventOperation"

    const-string/jumbo v4, "Could not calculate last date."

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 630
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(JLandroid/content/ContentValues;)I
    .locals 11
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v9, 0x0

    .line 218
    const/4 v8, 0x0

    .line 220
    .local v8, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v1, "Events"

    const/4 v2, 0x0

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 221
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 220
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 228
    :cond_0
    if-eqz v8, :cond_1

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v9

    :cond_2
    :goto_0
    return v0

    .line 226
    :cond_3
    :try_start_1
    iget-boolean v0, p0, Lagp;->b:Z

    invoke-direct {p0, v8, p3, v0}, Lagp;->a(Landroid/database/Cursor;Landroid/content/ContentValues;Z)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 228
    if-eqz v8, :cond_2

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_4

    .line 229
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public final a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;)J
    .locals 8
    .param p1, "data"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    const-wide/16 v6, 0x0

    .line 73
    .line 1242
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1243
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1244
    const-string/jumbo v3, "_sync_id"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_sync_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    :cond_0
    const-string/jumbo v3, "dirty"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dirty:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1248
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->lastSynced:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 1249
    const-string/jumbo v3, "lastSynced"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->lastSynced:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1252
    :cond_1
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->calendar_id:J

    cmp-long v3, v4, v6

    if-ltz v3, :cond_2

    .line 1253
    const-string/jumbo v3, "calendar_id"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->calendar_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1256
    :cond_2
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1257
    const-string/jumbo v3, "title"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->title:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1260
    :cond_3
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventLocation:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 1261
    const-string/jumbo v3, "eventLocation"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventLocation:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    :cond_4
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1265
    const-string/jumbo v3, "description"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->description:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1268
    :cond_5
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_server_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1269
    const-string/jumbo v3, "message_server_id"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_server_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v3, "message_mailbox_id"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_mailbox_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1271
    const-string/jumbo v3, "message_account_id"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_account_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1272
    const-string/jumbo v3, "message_type"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_type:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1273
    const-string/jumbo v3, "message_thread_topic"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_thread_topic:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    const-string/jumbo v3, "message_thread_topic_number"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_thread_topic_number:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1275
    const-string/jumbo v3, "message_time_stamp"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->message_time_stamp:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1278
    :cond_6
    const-string/jumbo v3, "canSync"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->canSync:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1283
    iget v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->selfAttendeeStatus:I

    if-lez v3, :cond_7

    .line 1284
    const-string/jumbo v3, "selfAttendeeStatus"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->selfAttendeeStatus:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1288
    :cond_7
    const-string/jumbo v3, "dtstart"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtstart:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1291
    const-string/jumbo v3, "dtend"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->dtend:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1293
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventTimezone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1294
    const-string/jumbo v3, "eventTimezone"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1297
    :cond_8
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 1298
    const-string/jumbo v3, "duration"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->duration:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    :cond_9
    const-string/jumbo v3, "allDay"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->allDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1302
    const-string/jumbo v3, "availability"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->availability:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1303
    const-string/jumbo v3, "hasAlarm"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->hasAlarm:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1304
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1305
    const-string/jumbo v3, "rrule"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rrule:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    :cond_a
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rdate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1309
    const-string/jumbo v3, "rdate"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->rdate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1312
    :cond_b
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->exrule:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1313
    const-string/jumbo v3, "exrule"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->exrule:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    :cond_c
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->exrule:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 1317
    const-string/jumbo v3, "exdate"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->exdate:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1320
    :cond_d
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_id:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_e

    .line 1321
    const-string/jumbo v3, "original_id"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1324
    :cond_e
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1325
    const-string/jumbo v3, "original_sync_id"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    :cond_f
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalInstanceTime:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_10

    .line 1329
    const-string/jumbo v3, "originalInstanceTime"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalInstanceTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1330
    const-string/jumbo v3, "originalAllDay"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->originalAllDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1333
    :cond_10
    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->lastDate:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_11

    .line 1334
    const-string/jumbo v3, "lastDate"

    iget-wide v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->lastDate:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1337
    :cond_11
    const-string/jumbo v3, "hasAttendeeData"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->hasAttendeeData:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1339
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 1340
    const-string/jumbo v3, "organizer_name"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer_name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :cond_12
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1344
    const-string/jumbo v3, "organizer"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->organizer:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    :cond_13
    const-string/jumbo v3, "deleted"

    iget v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->deleted:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1349
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventEndTimezone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1350
    const-string/jumbo v3, "eventEndTimezone"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->eventEndTimezone:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    :cond_14
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->customAppPackage:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 1354
    const-string/jumbo v3, "customAppPackage"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->customAppPackage:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1357
    :cond_15
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->customAppUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 1358
    const-string/jumbo v3, "customAppUri"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->customAppUri:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1361
    :cond_16
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->uid2445:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 1362
    const-string/jumbo v3, "uid2445"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->uid2445:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :cond_17
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data1:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 1366
    const-string/jumbo v3, "sync_data1"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data1:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1369
    :cond_18
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data2:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_19

    .line 1370
    const-string/jumbo v3, "sync_data2"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data2:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    :cond_19
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data3:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 1374
    const-string/jumbo v3, "sync_data3"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data3:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1377
    :cond_1a
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data4:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 1378
    const-string/jumbo v3, "sync_data4"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data4:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1381
    :cond_1b
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data5:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 1382
    const-string/jumbo v3, "sync_data5"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data5:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    :cond_1c
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data6:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 1386
    const-string/jumbo v3, "sync_data6"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data6:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1389
    :cond_1d
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data7:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1e

    .line 1390
    const-string/jumbo v3, "sync_data7"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data7:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1393
    :cond_1e
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data8:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 1394
    const-string/jumbo v3, "sync_data8"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data8:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    :cond_1f
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data9:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 1398
    const-string/jumbo v3, "sync_data9"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data9:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1401
    :cond_20
    iget-object v3, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data10:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 1402
    const-string/jumbo v3, "sync_data10"

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->sync_data10:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .local v2, "values":Landroid/content/ContentValues;
    :cond_21
    invoke-virtual {p0, v2}, Lagp;->b(Landroid/content/ContentValues;)J

    move-result-wide v0

    .line 76
    .local v0, "id":J
    return-wide v0
.end method

.method public final b(Landroid/content/ContentValues;)J
    .locals 25
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 83
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lagp;->b:Z

    if-nez v4, :cond_0

    .line 84
    const-string/jumbo v4, "dirty"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    :cond_0
    const-string/jumbo v4, "dtstart"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 88
    const-string/jumbo v4, "original_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "originalInstanceTime"

    .line 89
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x2

    const-string/jumbo v8, "eventStatus"

    .line 91
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    .line 90
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v4, v8, :cond_2

    .line 95
    const-string/jumbo v4, "originalInstanceTime"

    .line 96
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 97
    .local v12, "origStart":J
    const-string/jumbo v4, "dtstart"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 98
    const-string/jumbo v4, "dtend"

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 99
    const-string/jumbo v4, "eventTimezone"

    const-string/jumbo v8, "UTC"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v12    # "origStart":J
    :cond_1
    new-instance v5, Landroid/content/ContentValues;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 108
    .local v5, "updatedValues":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lagp;->b:Z

    if-eqz v4, :cond_3

    .line 109
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v4}, Lagp;->a(Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 124
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lagp;->d(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 125
    if-nez v5, :cond_4

    .line 129
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v8, "Could not insert event."

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 101
    .end local v5    # "updatedValues":Landroid/content/ContentValues;
    :cond_2
    const-string/jumbo v4, "EventOperation"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DTSTART field missing from event, itemId = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v9, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Lzb;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "DTSTART field missing from event, values = "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 112
    .restart local v5    # "updatedValues":Landroid/content/ContentValues;
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lagp;->a(Landroid/content/ContentValues;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 113
    :catch_0
    move-exception v11

    .line 114
    .local v11, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "calendar save event error"

    invoke-static {v4, v11}, Lzb;->d(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 133
    .end local v11    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    const-string/jumbo v4, "calendar_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 134
    .local v10, "calendar_id":Ljava/lang/Long;
    if-nez v10, :cond_5

    .line 137
    const-string/jumbo v4, "EventOperation"

    const-string/jumbo v8, "New events must specify a calendar id"

    invoke-static {v4, v8}, Lzb;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v8, "New events must specify a calendar id"

    invoke-direct {v4, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_5
    const/16 v17, 0x0

    .line 156
    .local v17, "owner":Ljava/lang/String;
    const-string/jumbo v4, "organizer"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 157
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lagp;->a(J)Ljava/lang/String;

    move-result-object v17

    .line 169
    :cond_6
    const-string/jumbo v4, "original_sync_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    const-string/jumbo v4, "original_id"

    .line 170
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 171
    const-string/jumbo v4, "original_sync_id"

    .line 172
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "calendar_id"

    .line 173
    invoke-virtual {v5, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1635
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 1636
    :cond_7
    const-wide/16 v14, -0x1

    .line 174
    .local v14, "originalId":J
    :goto_1
    const-wide/16 v8, -0x1

    cmp-long v4, v14, v8

    if-eqz v4, :cond_8

    .line 175
    const-string/jumbo v4, "original_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v5, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 185
    .end local v14    # "originalId":J
    :cond_8
    :goto_2
    invoke-static {v5, v5}, Lagp;->b(Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 187
    const-string/jumbo v4, "EventOperation"

    const-string/jumbo v8, "insertInTransaction: allDay is true but sec, min, hour were not 0."

    invoke-static {v4, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_9
    const-string/jumbo v4, "hasAlarm"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->d:Lagj;

    invoke-virtual {v4, v5}, Lagj;->a(Landroid/content/ContentValues;)J

    move-result-wide v6

    .line 194
    .local v6, "id":J
    const-wide/16 v8, -0x1

    cmp-long v4, v6, v8

    if-eqz v4, :cond_c

    .line 195
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v5}, Lagp;->b(JLandroid/content/ContentValues;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v4, v0, Lagp;->a:Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/alimei/sdk/calendar/helper/CalendarInstancesHelper;->a(Landroid/content/ContentValues;JZLcom/alibaba/alimei/orm/IDatabase;)V

    .line 201
    const-string/jumbo v4, "selfAttendeeStatus"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 202
    const-string/jumbo v4, "selfAttendeeStatus"

    .line 203
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 202
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 204
    .local v18, "status":I
    if-nez v17, :cond_a

    .line 205
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Lagp;->a(J)Ljava/lang/String;

    move-result-object v17

    .line 3760
    :cond_a
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 3761
    const-string/jumbo v8, "event_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3762
    const-string/jumbo v8, "attendeeStatus"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3763
    const-string/jumbo v8, "attendeeType"

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3767
    const-string/jumbo v8, "attendeeRelationship"

    const/4 v9, 0x1

    .line 3768
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 3767
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3769
    const-string/jumbo v8, "attendeeEmail"

    move-object/from16 v0, v17

    invoke-virtual {v4, v8, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3773
    move-object/from16 v0, p0

    iget-object v8, v0, Lagp;->d:Lagj;

    invoke-virtual {v8, v4}, Lagj;->e(Landroid/content/ContentValues;)J

    .line 4428
    .end local v18    # "status":I
    :cond_b
    const-string/jumbo v4, "_sync_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4429
    const-string/jumbo v8, "rrule"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4430
    const-string/jumbo v9, "rdate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 4431
    const-string/jumbo v19, "calendar_id"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4433
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_c

    .line 4434
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 213
    :cond_c
    :goto_3
    return-wide v6

    .line 1639
    .end local v6    # "id":J
    :cond_d
    const-wide/16 v8, -0x1

    .line 1640
    const-string/jumbo v20, "_sync_id=? AND calendar_id=?"

    .line 1642
    new-instance v21, Lcom/alibaba/alimei/orm/query/Select;

    const-class v22, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 2064
    const-string/jumbo v23, "calendar.db"

    .line 1642
    const-string/jumbo v24, "Events"

    invoke-direct/range {v21 .. v24}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 1643
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "_id"

    aput-object v24, v22, v23

    invoke-virtual/range {v21 .. v22}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 1644
    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v4, v22, v23

    const/4 v4, 0x1

    aput-object v19, v22, v4

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1645
    invoke-virtual/range {v21 .. v21}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 1646
    if-eqz v4, :cond_e

    .line 1647
    iget-wide v8, v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->_id:J

    :cond_e
    move-wide v14, v8

    .line 1650
    goto/16 :goto_1

    .line 177
    :cond_f
    const-string/jumbo v4, "original_sync_id"

    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v4, "original_id"

    .line 178
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 179
    const-string/jumbo v4, "original_id"

    .line 180
    invoke-virtual {v5, v4}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 179
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    .line 2654
    const-wide/16 v8, -0x1

    cmp-long v4, v20, v8

    if-nez v4, :cond_10

    .line 2655
    const/16 v16, 0x0

    .line 181
    .local v16, "originalSyncId":Ljava/lang/String;
    :goto_4
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 182
    const-string/jumbo v4, "original_sync_id"

    move-object/from16 v0, v16

    invoke-virtual {v5, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2658
    .end local v16    # "originalSyncId":Ljava/lang/String;
    :cond_10
    const/4 v8, 0x0

    .line 2659
    const-string/jumbo v4, "_id=?"

    .line 2660
    new-instance v9, Lcom/alibaba/alimei/orm/query/Select;

    const-class v19, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 3064
    const-string/jumbo v22, "calendar.db"

    .line 2660
    const-string/jumbo v23, "Events"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v9, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Select;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const-string/jumbo v23, "_sync_id"

    aput-object v23, v19, v22

    move-object/from16 v0, v19

    invoke-virtual {v9, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 2662
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v22, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v19, v22

    move-object/from16 v0, v19

    invoke-virtual {v9, v4, v0}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2663
    invoke-virtual {v9}, Lcom/alibaba/alimei/orm/query/Select;->executeSingle()Lcom/alibaba/alimei/orm/SelectableEntry;

    move-result-object v4

    check-cast v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;

    .line 2664
    if-eqz v4, :cond_12

    .line 2665
    iget-object v4, v4, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->original_sync_id:Ljava/lang/String;

    :goto_5
    move-object/from16 v16, v4

    .line 2668
    goto :goto_4

    .line 4439
    .restart local v6    # "id":J
    :cond_11
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 4440
    const-string/jumbo v9, "original_id"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v8, v9, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 4441
    move-object/from16 v0, p0

    iget-object v9, v0, Lagp;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v20, "Events"

    const-string/jumbo v21, "original_sync_id=? AND calendar_id=?"

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    aput-object v4, v22, v23

    const/4 v4, 0x1

    aput-object v19, v22, v4

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v9, v0, v8, v1, v2}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v6    # "id":J
    :cond_12
    move-object v4, v8

    goto :goto_5
.end method

.method public final c(J)I
    .locals 3
    .param p1, "id"    # J

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-boolean v1, p0, Lagp;->b:Z

    invoke-direct {p0, p1, p2, v1, v2}, Lagp;->a(JZZ)I

    move-result v0

    .line 237
    .local v0, "count":I
    invoke-static {}, Lagj;->a()Lagj;

    move-result-object v1

    invoke-virtual {v1, v2}, Lagj;->a(Z)V

    .line 238
    return v0
.end method
