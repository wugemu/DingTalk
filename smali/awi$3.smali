.class final Lawi$3;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi;->a(Ljava/util/List;JJLcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:J

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(JJLjava/util/List;Lcom/alibaba/wukong/Callback;)V
    .locals 1

    .prologue
    .line 300
    iput-wide p1, p0, Lawi$3;->a:J

    iput-wide p3, p0, Lawi$3;->b:J

    iput-object p5, p0, Lawi$3;->c:Ljava/util/List;

    iput-object p6, p0, Lawi$3;->d:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 32

    .prologue
    .line 303
    sget-object v2, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v24

    .line 304
    .local v24, "builder":Landroid/net/Uri$Builder;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lawi$3;->a:J

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 305
    move-object/from16 v0, p0

    iget-wide v2, v0, Lawi$3;->b:J

    move-object/from16 v0, v24

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v6, v2, [Ljava/lang/String;

    .line 308
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v29

    .line 309
    .local v29, "sectionStrBuilder":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v2, "calendar_id"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 310
    const-string/jumbo v2, " IN ( "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 311
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v28

    if-ge v0, v2, :cond_1

    .line 313
    const-string/jumbo v2, "? "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$3;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, v28

    if-eq v0, v2, :cond_0

    .line 315
    const-string/jumbo v2, ", "

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 317
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lawi$3;->c:Ljava/util/List;

    move/from16 v0, v28

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v6, v28

    .line 311
    add-int/lit8 v28, v28, 0x1

    goto :goto_0

    .line 319
    :cond_1
    const-string/jumbo v2, " )"

    move-object/from16 v0, v29

    invoke-virtual {v0, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 320
    invoke-virtual/range {v29 .. v29}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 322
    .local v5, "section":Ljava/lang/String;
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 323
    .local v30, "systemEvents":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/calendar/data/object/SystemEvent;>;"
    const/16 v26, 0x0

    .line 325
    .local v26, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v2

    invoke-virtual {v2}, Lcid;->c()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 326
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 327
    invoke-static {}, Lawi;->c()[Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    .line 325
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 336
    :goto_1
    if-eqz v26, :cond_3

    .line 338
    :cond_2
    :goto_2
    :try_start_1
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 339
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    int-to-long v8, v2

    .line 340
    .local v8, "eventId":J
    const/4 v2, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 341
    .local v10, "title":Ljava/lang/String;
    const/4 v2, 0x2

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 342
    .local v11, "location":Ljava/lang/String;
    const/4 v2, 0x3

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 343
    .local v12, "calendarDisplayName":Ljava/lang/String;
    const/4 v2, 0x4

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    const/4 v13, 0x1

    .line 344
    .local v13, "allDay":Z
    :goto_3
    const/4 v2, 0x5

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 345
    .local v14, "start":J
    const/4 v2, 0x6

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 346
    .local v16, "end":J
    const/4 v2, 0x7

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 347
    .local v18, "rRule":Ljava/lang/String;
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v31, 0x1

    .line 348
    .local v31, "visible":Z
    :goto_4
    const/16 v2, 0x9

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 349
    .local v19, "calendarAccessLevel":I
    const/16 v2, 0xa

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 350
    .local v20, "description":Ljava/lang/String;
    const/16 v2, 0xb

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 351
    .local v22, "calendarId":I
    const/16 v2, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    .line 352
    .local v25, "calendarColor":I
    if-eqz v31, :cond_2

    .line 353
    new-instance v7, Lcom/alibaba/android/calendar/data/object/SystemEvent;

    .line 355
    invoke-static {v8, v9}, Lawi;->a(J)Ljava/util/List;

    move-result-object v21

    .line 356
    invoke-static/range {v25 .. v25}, Lavj;->a(I)I

    move-result v23

    invoke-direct/range {v7 .. v23}, Lcom/alibaba/android/calendar/data/object/SystemEvent;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJJLjava/lang/String;ILjava/lang/String;Ljava/util/List;II)V

    .line 353
    move-object/from16 v0, v30

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 359
    .end local v8    # "eventId":J
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "location":Ljava/lang/String;
    .end local v12    # "calendarDisplayName":Ljava/lang/String;
    .end local v13    # "allDay":Z
    .end local v14    # "start":J
    .end local v16    # "end":J
    .end local v18    # "rRule":Ljava/lang/String;
    .end local v19    # "calendarAccessLevel":I
    .end local v20    # "description":Ljava/lang/String;
    .end local v22    # "calendarId":I
    .end local v25    # "calendarColor":I
    .end local v31    # "visible":Z
    :catch_0
    move-exception v27

    .line 360
    .local v27, "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    :try_start_2
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[querySystemEvents] failed"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v27 .. v27}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 361
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[querySystemEvents] read cursor exception:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v27 .. v27}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    .line 367
    .end local v27    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_5
    invoke-static {}, Latf;->a()Latf;

    move-result-object v2

    new-instance v3, Lawi$3$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lawi$3$1;-><init>(Lawi$3;)V

    move-object/from16 v0, v30

    invoke-virtual {v2, v0, v3}, Latf;->a(Ljava/util/List;Lcom/alibaba/wukong/Callback;)V

    .line 392
    return-void

    .line 331
    :catch_1
    move-exception v27

    .line 332
    .restart local v27    # "e":Ljava/lang/Exception;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "[querySystemEvents] exception:"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static/range {v27 .. v27}, Lcom/alibaba/doraemon/utils/CommonUtils;->getStackMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lavy;->a([Ljava/lang/String;)V

    .line 333
    const-string/jumbo v2, "[querySystemEvents] failed"

    move-object/from16 v0, v27

    invoke-static {v2, v0}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 343
    .end local v27    # "e":Ljava/lang/Exception;
    .restart local v8    # "eventId":J
    .restart local v10    # "title":Ljava/lang/String;
    .restart local v11    # "location":Ljava/lang/String;
    .restart local v12    # "calendarDisplayName":Ljava/lang/String;
    :cond_4
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 347
    .restart local v13    # "allDay":Z
    .restart local v14    # "start":J
    .restart local v16    # "end":J
    .restart local v18    # "rRule":Ljava/lang/String;
    :cond_5
    const/16 v31, 0x0

    goto/16 :goto_4

    .line 363
    .end local v8    # "eventId":J
    .end local v10    # "title":Ljava/lang/String;
    .end local v11    # "location":Ljava/lang/String;
    .end local v12    # "calendarDisplayName":Ljava/lang/String;
    .end local v13    # "allDay":Z
    .end local v14    # "start":J
    .end local v16    # "end":J
    .end local v18    # "rRule":Ljava/lang/String;
    :cond_6
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    goto :goto_5

    :catchall_0
    move-exception v2

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->close()V

    throw v2
.end method
