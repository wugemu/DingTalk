.class public final Lago;
.super Lagn;
.source "AttendeeOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lagn",
        "<",
        "Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "event_id"

    aput-object v2, v0, v1

    sput-object v0, Lago;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lago;-><init>(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "isSync"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lagn;-><init>(Z)V

    .line 33
    return-void
.end method

.method private a(JLandroid/content/ContentValues;Z)I
    .locals 21
    .param p1, "id"    # J
    .param p3, "updateValues"    # Landroid/content/ContentValues;
    .param p4, "isSync"    # Z

    .prologue
    .line 210
    const/4 v12, 0x0

    .line 211
    .local v12, "c":Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 213
    .local v13, "count":I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lago;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Attendees"

    const/4 v4, 0x0

    const-string/jumbo v5, "_id=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 214
    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 213
    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 216
    if-eqz v12, :cond_0

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    .line 217
    :cond_0
    const-string/jumbo v2, "AttendeeOperation"

    const-string/jumbo v3, "updateRelativeTable query failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    if-eqz v12, :cond_1

    .line 277
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v2, 0x0

    .line 281
    :goto_0
    return v2

    .line 221
    :cond_2
    const/4 v14, 0x0

    .line 222
    .local v14, "dirtyValues":Landroid/content/ContentValues;
    if-nez p4, :cond_3

    .line 223
    :try_start_1
    new-instance v14, Landroid/content/ContentValues;

    .end local v14    # "dirtyValues":Landroid/content/ContentValues;
    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 224
    .restart local v14    # "dirtyValues":Landroid/content/ContentValues;
    const-string/jumbo v2, "dirty"

    const-string/jumbo v3, "1"

    invoke-virtual {v14, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :cond_3
    const-string/jumbo v2, "_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 228
    .local v18, "idIndex":I
    const-string/jumbo v2, "event_id"

    invoke-interface {v12, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 229
    .local v15, "eventIdIndex":I
    if-ltz v18, :cond_4

    if-gez v15, :cond_6

    .line 230
    :cond_4
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Lookup on _id/event_id failed updateRelativeTable"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    .end local v14    # "dirtyValues":Landroid/content/ContentValues;
    .end local v15    # "eventIdIndex":I
    .end local v18    # "idIndex":I
    :catchall_0
    move-exception v2

    if-eqz v12, :cond_5

    .line 277
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2

    .line 233
    .restart local v14    # "dirtyValues":Landroid/content/ContentValues;
    .restart local v15    # "eventIdIndex":I
    .restart local v18    # "idIndex":I
    :cond_6
    :goto_1
    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v19, "values":Landroid/content/ContentValues;
    move-object/from16 v0, v19

    invoke-static {v12, v0}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 240
    move-object/from16 v0, v19

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 242
    move/from16 v0, v18

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 243
    .local v10, "attendeeId":J
    invoke-interface {v12, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 244
    .local v16, "eventId":J
    if-nez p4, :cond_7

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lago;->d:Lagj;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Lagj;->a(J)V

    .line 249
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lago;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Attendees"

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 250
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 249
    move-object/from16 v0, v19

    invoke-interface {v2, v3, v0, v4, v5}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 251
    if-nez p4, :cond_8

    .line 252
    move-object/from16 v0, p0

    iget-object v2, v0, Lago;->c:Lcom/alibaba/alimei/orm/IDatabase;

    const-string/jumbo v3, "Events"

    const-string/jumbo v4, "_id=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 253
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 252
    invoke-interface {v2, v3, v14, v4, v5}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 255
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 272
    move-object/from16 v0, p0

    iget-object v2, v0, Lago;->c:Lcom/alibaba/alimei/orm/IDatabase;

    move-object/from16 v0, v19

    invoke-static {v2, v0}, Lago;->a(Lcom/alibaba/alimei/orm/IDatabase;Landroid/content/ContentValues;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 276
    .end local v10    # "attendeeId":J
    .end local v16    # "eventId":J
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_9
    if-eqz v12, :cond_a

    .line 277
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_a
    move v2, v13

    .line 281
    goto/16 :goto_0
.end method

.method private static a(Lcom/alibaba/alimei/orm/IDatabase;Landroid/content/ContentValues;)V
    .locals 23
    .param p0, "db"    # Lcom/alibaba/alimei/orm/IDatabase;
    .param p1, "attendeeValues"    # Landroid/content/ContentValues;

    .prologue
    .line 121
    const-string/jumbo v2, "event_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v15

    .line 122
    .local v15, "eventIdObj":Ljava/lang/Long;
    if-nez v15, :cond_1

    .line 123
    const-string/jumbo v2, "AttendeeOperation"

    const-string/jumbo v3, "Attendee update values don\'t include an event_id"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 126
    :cond_1
    invoke-virtual {v15}, Ljava/lang/Long;->longValue()J

    move-result-wide v16

    .line 130
    .local v16, "eventId":J
    const/4 v14, 0x0

    .line 133
    .local v14, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string/jumbo v3, "Events"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "calendar_id"

    aput-object v5, v4, v2

    const-string/jumbo v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 134
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 133
    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 135
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 136
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in Events table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 142
    if-eqz v14, :cond_0

    .line 143
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 140
    :cond_3
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v12

    .line 142
    .local v12, "calId":J
    if-eqz v14, :cond_4

    .line 143
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 149
    :cond_4
    const/4 v14, 0x0

    .line 151
    :try_start_2
    const-string/jumbo v3, "Calendars"

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v5, "ownerAccount"

    aput-object v5, v4, v2

    const-string/jumbo v5, "_id=?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 152
    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    .line 151
    invoke-interface/range {v2 .. v9}, Lcom/alibaba/alimei/orm/IDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 153
    if-eqz v14, :cond_5

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_7

    .line 154
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Couldn\'t find "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " in Calendars table"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 160
    if-eqz v14, :cond_0

    .line 161
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 142
    .end local v12    # "calId":J
    :catchall_0
    move-exception v2

    if-eqz v14, :cond_6

    .line 143
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v2

    .line 158
    .restart local v12    # "calId":J
    :cond_7
    const/4 v2, 0x0

    :try_start_3
    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v11

    .line 160
    .local v11, "calendarEmail":Ljava/lang/String;
    if-eqz v14, :cond_8

    .line 161
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 165
    :cond_8
    if-eqz v11, :cond_0

    .line 170
    const/4 v10, 0x0

    .line 171
    .local v10, "attendeeEmail":Ljava/lang/String;
    const-string/jumbo v2, "attendeeEmail"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 172
    const-string/jumbo v2, "attendeeEmail"

    .line 173
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 180
    :cond_9
    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    const/16 v20, 0x0

    .line 187
    .local v20, "status":I
    const-string/jumbo v2, "attendeeRelationship"

    .line 188
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v19

    .line 189
    .local v19, "relationObj":Ljava/lang/Integer;
    if-eqz v19, :cond_a

    .line 190
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v18

    .line 191
    .local v18, "rel":I
    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_a

    .line 192
    const/16 v20, 0x1

    .line 197
    .end local v18    # "rel":I
    :cond_a
    const-string/jumbo v2, "attendeeStatus"

    .line 198
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v21

    .line 199
    .local v21, "statusObj":Ljava/lang/Integer;
    if-eqz v21, :cond_b

    .line 200
    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v20

    .line 203
    :cond_b
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 204
    .local v22, "values":Landroid/content/ContentValues;
    const-string/jumbo v2, "selfAttendeeStatus"

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 205
    const-string/jumbo v2, "Events"

    const-string/jumbo v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 206
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-interface {v0, v2, v1, v3, v4}, Lcom/alibaba/alimei/orm/IDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_0

    .line 160
    .end local v10    # "attendeeEmail":Ljava/lang/String;
    .end local v11    # "calendarEmail":Ljava/lang/String;
    .end local v19    # "relationObj":Ljava/lang/Integer;
    .end local v20    # "status":I
    .end local v21    # "statusObj":Ljava/lang/Integer;
    .end local v22    # "values":Landroid/content/ContentValues;
    :catchall_1
    move-exception v2

    if-eqz v14, :cond_c

    .line 161
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v2
.end method


# virtual methods
.method public final a(JLandroid/content/ContentValues;)I
    .locals 3
    .param p1, "id"    # J
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 62
    iget-boolean v1, p0, Lago;->b:Z

    invoke-direct {p0, p1, p2, p3, v1}, Lago;->a(JLandroid/content/ContentValues;Z)I

    move-result v0

    .line 63
    .local v0, "count":I
    return v0
.end method

.method public final a(Landroid/content/ContentValues;)J
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 43
    const-string/jumbo v1, "event_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Attendees values must contain an event_id"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 47
    :cond_0
    const-string/jumbo v1, "event_id"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 48
    .local v0, "eventId":Ljava/lang/Long;
    iget-boolean v1, p0, Lago;->b:Z

    if-nez v1, :cond_1

    .line 49
    iget-object v1, p0, Lago;->d:Lagj;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lagj;->a(J)V

    .line 50
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Lago;->b(J)V

    .line 52
    :cond_1
    iget-object v1, p0, Lago;->d:Lagj;

    invoke-virtual {v1, p1}, Lagj;->e(Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 55
    .local v2, "id":J
    iget-object v1, p0, Lago;->c:Lcom/alibaba/alimei/orm/IDatabase;

    invoke-static {v1, p1}, Lago;->a(Lcom/alibaba/alimei/orm/IDatabase;Landroid/content/ContentValues;)V

    .line 57
    return-wide v2
.end method

.method public final a(Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;)J
    .locals 4
    .param p1, "data"    # Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 37
    .line 1079
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1081
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1082
    const-string/jumbo v1, "attendeeEmail"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeEmail:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :cond_0
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeIdentity:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1087
    const-string/jumbo v1, "attendeeIdentity"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeIdentity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    :cond_1
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeIdNamespace:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1092
    const-string/jumbo v1, "attendeeIdNamespace"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeIdNamespace:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    :cond_2
    iget-object v1, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1097
    const-string/jumbo v1, "attendeeName"

    iget-object v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    :cond_3
    const-string/jumbo v1, "attendeeRelationship"

    iget v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeRelationship:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1102
    const-string/jumbo v1, "attendeeStatus"

    iget v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeStatus:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1103
    const-string/jumbo v1, "attendeeType"

    iget v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->attendeeType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1104
    const-string/jumbo v1, "event_id"

    iget-wide v2, p1, Lcom/alibaba/alimei/sdk/db/calendar/entry/Attendees;->event_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 38
    .local v0, "values":Landroid/content/ContentValues;
    invoke-virtual {p0, v0}, Lago;->a(Landroid/content/ContentValues;)J

    move-result-wide v2

    return-wide v2
.end method
