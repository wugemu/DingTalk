.class final Lawi$1;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi;->a(Landroid/content/Context;JLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(JLandroid/content/Context;Lcom/alibaba/wukong/Callback;)V
    .locals 1

    .prologue
    .line 134
    iput-wide p1, p0, Lawi$1;->a:J

    iput-object p3, p0, Lawi$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lawi$1;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 137
    sget-object v2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 138
    .local v20, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lawi$1;->a:J

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 139
    const/16 v21, 0x0

    .line 141
    .local v21, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$1;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 142
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 143
    invoke-static {}, Lawi;->b()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 141
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v21

    .line 151
    :goto_0
    if-nez v21, :cond_0

    .line 152
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$1;->c:Lcom/alibaba/wukong/Callback;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 185
    :goto_1
    return-void

    .line 147
    :catch_0
    move-exception v22

    .line 148
    .local v22, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[querySystemEventById] failed"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 157
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_1
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 158
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, "title":Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "location":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 161
    .local v8, "calendarDisplayName":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v9, 0x1

    .line 162
    .local v9, "allDay":Z
    :goto_2
    const/4 v2, 0x4

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 163
    .local v10, "start":J
    const/4 v2, 0x5

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 164
    .local v12, "end":J
    const/4 v2, 0x6

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 165
    .local v14, "rRule":Ljava/lang/String;
    const/4 v2, 0x7

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/16 v23, 0x1

    .line 166
    .local v23, "visible":Z
    :goto_3
    const/16 v2, 0x8

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 167
    .local v15, "calendarAccessLevel":I
    const/16 v2, 0x9

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 168
    .local v16, "description":Ljava/lang/String;
    const/16 v2, 0xa

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 169
    .local v18, "calendarId":I
    const/16 v2, 0xb

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 170
    .local v19, "calendarColor":I
    if-eqz v23, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$1;->c:Lcom/alibaba/wukong/Callback;

    new-instance v3, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lawi$1;->a:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lawi$1;->a:J

    move-wide/from16 v24, v0

    .line 173
    invoke-static/range {v24 .. v25}, Lawi;->a(J)Ljava/util/List;

    move-result-object v17

    invoke-direct/range {v3 .. v19}, Lcom/alibaba/android/calendar/data/object/SystemEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    .line 171
    invoke-static {v2, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 161
    .end local v9    # "allDay":Z
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "rRule":Ljava/lang/String;
    .end local v15    # "calendarAccessLevel":I
    .end local v16    # "description":Ljava/lang/String;
    .end local v18    # "calendarId":I
    .end local v19    # "calendarColor":I
    .end local v23    # "visible":Z
    :cond_1
    const/4 v9, 0x0

    goto :goto_2

    .line 165
    .restart local v9    # "allDay":Z
    .restart local v10    # "start":J
    .restart local v12    # "end":J
    .restart local v14    # "rRule":Ljava/lang/String;
    :cond_2
    const/16 v23, 0x0

    goto :goto_3

    .line 181
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "calendarDisplayName":Ljava/lang/String;
    .end local v9    # "allDay":Z
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "rRule":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    .line 184
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$1;->c:Lcom/alibaba/wukong/Callback;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 178
    :catch_1
    move-exception v22

    .line 179
    .restart local v22    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v2, "[querySystemEventById] failed"

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v22    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    throw v2
.end method
