.class final Lawi$5;
.super Ljava/lang/Object;
.source "SystemEventUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lawi;->a(Lcom/alibaba/wukong/Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/wukong/Callback;


# direct methods
.method constructor <init>(Lcom/alibaba/wukong/Callback;)V
    .locals 0

    .prologue
    .line 498
    iput-object p1, p0, Lawi$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 17

    .prologue
    .line 503
    const/4 v9, 0x0

    .line 505
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    .line 507
    invoke-static {}, Lawi;->d()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 505
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 515
    :goto_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 517
    .local v15, "systemCalendarEvents":Ljava/util/List;, "Ljava/util/List<Lasu;>;"
    if-eqz v9, :cond_4

    .line 519
    const/4 v12, 0x1

    .local v12, "i":I
    move v13, v12

    .line 520
    .end local v12    # "i":I
    .local v13, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 521
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 522
    .local v8, "calendarId":I
    const/4 v1, 0x1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 523
    .local v14, "name":Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 524
    .local v7, "calendarColor":I
    const/4 v1, 0x3

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/16 v16, 0x1

    .line 525
    .local v16, "visible":Z
    :goto_2
    const/4 v1, 0x4

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 527
    .local v10, "displayName":Ljava/lang/String;
    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "[querySystemCalendar] calendarId="

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 528
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string/jumbo v3, ", name="

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object v14, v1, v2

    const/4 v2, 0x4

    const-string/jumbo v3, ",displayName="

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object v10, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, ", calendarColor="

    aput-object v3, v1, v2

    const/4 v2, 0x7

    .line 530
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v3, ", visible="

    aput-object v3, v1, v2

    const/16 v2, 0x9

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 527
    invoke-static {v1}, Lavy;->a([Ljava/lang/String;)V

    .line 532
    invoke-static {v8, v10}, Lawi;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 534
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 535
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 536
    move-object v10, v14

    .line 539
    :cond_0
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 540
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    .line 541
    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Laow$f;->dt_ding_calendar_system_calendar_default_name:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    add-int/lit8 v12, v13, 0x1

    .end local v13    # "i":I
    .restart local v12    # "i":I
    :try_start_2
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 540
    invoke-static {v1}, Lieo;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 545
    :goto_3
    if-eqz v16, :cond_1

    .line 546
    new-instance v1, Lasu;

    invoke-static {v7}, Lavj;->a(I)I

    move-result v2

    invoke-direct {v1, v8, v10, v2}, Lasu;-><init>(ILjava/lang/String;I)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move v13, v12

    .line 548
    .end local v12    # "i":I
    .restart local v13    # "i":I
    goto/16 :goto_1

    .line 511
    .end local v7    # "calendarColor":I
    .end local v8    # "calendarId":I
    .end local v10    # "displayName":Ljava/lang/String;
    .end local v13    # "i":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "systemCalendarEvents":Ljava/util/List;, "Ljava/util/List<Lasu;>;"
    .end local v16    # "visible":Z
    :catch_0
    move-exception v11

    .line 512
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "[querySystemCalendar] failed"

    invoke-static {v1, v11}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 524
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v7    # "calendarColor":I
    .restart local v8    # "calendarId":I
    .restart local v13    # "i":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v15    # "systemCalendarEvents":Ljava/util/List;, "Ljava/util/List<Lasu;>;"
    :cond_2
    const/16 v16, 0x0

    goto/16 :goto_2

    .line 553
    .end local v7    # "calendarColor":I
    .end local v8    # "calendarId":I
    .end local v14    # "name":Ljava/lang/String;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 557
    .end local v13    # "i":I
    :cond_4
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lawi$5;->a:Lcom/alibaba/wukong/Callback;

    invoke-static {v1, v15}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 558
    return-void

    .line 550
    .restart local v13    # "i":I
    :catch_1
    move-exception v11

    move v12, v13

    .line 551
    .end local v13    # "i":I
    .local v11, "e":Ljava/lang/RuntimeException;
    .restart local v12    # "i":I
    :goto_5
    :try_start_3
    const-string/jumbo v1, "querySystemCalendar failed"

    invoke-static {v1, v11}, Lawm;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 553
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_4

    .end local v11    # "e":Ljava/lang/RuntimeException;
    .end local v12    # "i":I
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    .line 550
    .restart local v7    # "calendarColor":I
    .restart local v8    # "calendarId":I
    .restart local v10    # "displayName":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v16    # "visible":Z
    :catch_2
    move-exception v11

    goto :goto_5

    .end local v12    # "i":I
    .restart local v13    # "i":I
    :cond_5
    move v12, v13

    .end local v13    # "i":I
    .restart local v12    # "i":I
    goto :goto_3
.end method
