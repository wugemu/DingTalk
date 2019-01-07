.class final Lawi$2;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi;->a(JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(JJLcom/alibaba/wukong/Callback;)V
    .locals 1

    .prologue
    .line 201
    iput-wide p1, p0, Lawi$2;->a:J

    iput-wide p3, p0, Lawi$2;->b:J

    iput-object p5, p0, Lawi$2;->c:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 26

    .prologue
    .line 204
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v20

    .line 205
    .local v20, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lawi$2;->a:J

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 206
    move-object/from16 v0, p0

    iget-wide v2, v0, Lawi$2;->b:J

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 208
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 209
    .local v24, "systemEvents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;"
    const/16 v22, 0x0

    .line 211
    .local v22, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 212
    invoke-virtual/range {v20 .. v20}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 213
    invoke-static {}, Lawi;->c()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 211
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v22

    .line 221
    :goto_0
    if-eqz v22, :cond_1

    .line 223
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 224
    const/4 v2, 0x0

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v4, v2

    .line 225
    .local v4, "eventId":J
    const/4 v2, 0x1

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, "title":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 227
    .local v7, "location":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 228
    .local v8, "calendarDisplayName":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v9, 0x1

    .line 229
    .local v9, "allDay":Z
    :goto_2
    const/4 v2, 0x5

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 230
    .local v10, "start":J
    const/4 v2, 0x6

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 231
    .local v12, "end":J
    const/4 v2, 0x7

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 232
    .local v14, "rRule":Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    const/16 v25, 0x1

    .line 233
    .local v25, "visible":Z
    :goto_3
    const/16 v2, 0x9

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 234
    .local v15, "calendarAccessLevel":I
    const/16 v2, 0xa

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 235
    .local v16, "description":Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 236
    .local v18, "calendarId":I
    const/16 v2, 0xc

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .line 237
    .local v21, "calendarColor":I
    if-eqz v25, :cond_0

    .line 238
    new-instance v3, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 240
    invoke-static {v4, v5}, Lawi;->a(J)Ljava/util/List;

    move-result-object v17

    .line 241
    invoke-static/range {v21 .. v21}, Lavj;->a(I)I

    move-result v19

    invoke-direct/range {v3 .. v19}, Lcom/alibaba/android/calendar/data/object/SystemEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    .line 238
    move-object/from16 v0, v24

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .line 244
    .end local v4    # "eventId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "calendarDisplayName":Ljava/lang/String;
    .end local v9    # "allDay":Z
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "rRule":Ljava/lang/String;
    .end local v15    # "calendarAccessLevel":I
    .end local v16    # "description":Ljava/lang/String;
    .end local v18    # "calendarId":I
    .end local v21    # "calendarColor":I
    .end local v25    # "visible":Z
    :catch_0
    move-exception v23

    .line 245
    .local v23, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v17, "[querySystemEvents] failed"

    aput-object v17, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v23 .. v23}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 251
    .end local v23    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_4
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Lawi$2$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lawi$2$1;-><init>(Lawi$2;)V

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v3}, Latf;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 276
    return-void

    .line 217
    :catch_1
    move-exception v23

    .line 218
    .restart local v23    # "e":Ljava/lang/Exception;
    const-string/jumbo v2, "[querySystemEvents] failed"

    move-object/from16 v0, v23

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 228
    .end local v23    # "e":Ljava/lang/Exception;
    .restart local v4    # "eventId":J
    .restart local v6    # "title":Ljava/lang/String;
    .restart local v7    # "location":Ljava/lang/String;
    .restart local v8    # "calendarDisplayName":Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 232
    .restart local v9    # "allDay":Z
    .restart local v10    # "start":J
    .restart local v12    # "end":J
    .restart local v14    # "rRule":Ljava/lang/String;
    :cond_3
    const/16 v25, 0x0

    goto :goto_3

    .line 247
    .end local v4    # "eventId":J
    .end local v6    # "title":Ljava/lang/String;
    .end local v7    # "location":Ljava/lang/String;
    .end local v8    # "calendarDisplayName":Ljava/lang/String;
    .end local v9    # "allDay":Z
    .end local v10    # "start":J
    .end local v12    # "end":J
    .end local v14    # "rRule":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_0
    move-exception v2

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    throw v2
.end method
