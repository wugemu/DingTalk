.class final Lcom/alibaba/alimei/calendar/alerts/AlertService$a;
.super Landroid/os/Handler;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/alerts/AlertService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;Landroid/os/Looper;)V
    .locals 0
    .param p1, "service"    # Landroid/app/Service;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->a:Landroid/app/Service;

    .line 103
    return-void
.end method

.method private a()V
    .locals 24

    .prologue
    .line 121
    const-string/jumbo v18, "[AlertService] start remind"

    invoke-static/range {v18 .. v18}, Lafg;->a(Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/alimei/framework/account/AccountApi;->hasAccountLogin()Z

    move-result v18

    if-nez v18, :cond_1

    .line 124
    const-string/jumbo v18, "[AlertService] not login"

    invoke-static/range {v18 .. v18}, Lafg;->a(Ljava/lang/String;)V

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    invoke-static {}, Lafv;->e()Lcom/alibaba/alimei/framework/account/AccountApi;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lcom/alibaba/alimei/framework/account/AccountApi;->getDefaultAccountName()Ljava/lang/String;

    move-result-object v4

    .line 129
    .local v4, "account":Ljava/lang/String;
    invoke-static {v4}, Lafv;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/CalendarApi;

    move-result-object v9

    .line 130
    .local v9, "calendarApi":Lcom/alibaba/alimei/sdk/api/CalendarApi;
    if-nez v9, :cond_2

    .line 131
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "[AlertService] get CalendarApi null, account="

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    invoke-static/range {v18 .. v18}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_2
    invoke-interface {v9, v4}, Lcom/alibaba/alimei/sdk/api/CalendarApi;->queryMainAccount(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;

    move-result-object v16

    .line 136
    .local v16, "mainAccount":Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;
    if-nez v16, :cond_3

    .line 137
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "[AlertService] mainAccount is null"

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lafg;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 141
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 143
    .local v10, "currentTime":J
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v17, "selection":Ljava/lang/StringBuilder;
    const-string/jumbo v18, "state"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string/jumbo v18, "=? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string/jumbo v18, "alarmTime"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string/jumbo v18, ">=? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string/jumbo v18, "alarmTime"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string/jumbo v18, "<=? AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string/jumbo v18, "calendar_id"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string/jumbo v18, " ="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/calendar/CalendarModel;->id:J

    move-wide/from16 v18, v0

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 154
    const-class v18, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    const-string/jumbo v19, "calendar.db"

    invoke-static/range {v18 .. v19}, Lcom/alibaba/alimei/orm/query/Select;->newViewSelect(Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/alimei/orm/query/Select;

    move-result-object v6

    .line 155
    .local v6, "alertSelect":Lcom/alibaba/alimei/orm/query/Select;
    const/16 v18, 0xf

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const-string/jumbo v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "event_id"

    aput-object v20, v18, v19

    const/16 v19, 0x2

    const-string/jumbo v20, "state"

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string/jumbo v20, "title"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    const-string/jumbo v20, "eventLocation"

    aput-object v20, v18, v19

    const/16 v19, 0x5

    const-string/jumbo v20, "selfAttendeeStatus"

    aput-object v20, v18, v19

    const/16 v19, 0x6

    const-string/jumbo v20, "allDay"

    aput-object v20, v18, v19

    const/16 v19, 0x7

    const-string/jumbo v20, "alarmTime"

    aput-object v20, v18, v19

    const/16 v19, 0x8

    const-string/jumbo v20, "minutes"

    aput-object v20, v18, v19

    const/16 v19, 0x9

    const-string/jumbo v20, "begin"

    aput-object v20, v18, v19

    const/16 v19, 0xa

    const-string/jumbo v20, "end"

    aput-object v20, v18, v19

    const/16 v19, 0xb

    const-string/jumbo v20, "description"

    aput-object v20, v18, v19

    const/16 v19, 0xc

    const-string/jumbo v20, "sync_data2"

    aput-object v20, v18, v19

    const/16 v19, 0xd

    const-string/jumbo v20, "organizer"

    aput-object v20, v18, v19

    const/16 v19, 0xe

    const-string/jumbo v20, "message_server_id"

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/alibaba/alimei/orm/query/Select;->addColumns([Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 173
    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-wide/32 v22, 0xea60

    sub-long v22, v10, v22

    .line 174
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x2

    .line 175
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    aput-object v21, v19, v20

    .line 171
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/alibaba/alimei/orm/query/Select;->where(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    invoke-virtual {v6}, Lcom/alibaba/alimei/orm/query/Select;->execute()Ljava/util/List;

    move-result-object v5

    .line 178
    .local v5, "alertList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;>;"
    if-eqz v5, :cond_0

    .line 182
    const-string/jumbo v18, "calendar.db"

    invoke-static/range {v18 .. v18}, Lcom/alibaba/alimei/orm/AlimeiOrm;->getDatabase(Ljava/lang/String;)Lcom/alibaba/alimei/orm/IDatabase;

    move-result-object v12

    .line 183
    .local v12, "database":Lcom/alibaba/alimei/orm/IDatabase;
    if-eqz v12, :cond_0

    .line 187
    invoke-interface {v12}, Lcom/alibaba/alimei/orm/IDatabase;->beginTransaction()V

    .line 189
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_4
    :goto_1
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    .line 190
    .local v8, "alertViews":Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;
    if-eqz v8, :cond_4

    .line 194
    new-instance v7, Lcom/alibaba/alimei/orm/query/Update;

    const-class v19, Lcom/alibaba/alimei/sdk/db/calendar/entry/CalendarAlerts;

    const-string/jumbo v20, "calendar.db"

    const-string/jumbo v21, "CalendarAlerts"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v7, v0, v1, v2}, Lcom/alibaba/alimei/orm/query/Update;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .local v7, "alertUpdate":Lcom/alibaba/alimei/orm/query/Update;
    const-string/jumbo v19, "_id"

    iget-wide v0, v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->_id:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->columnWhere(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string/jumbo v19, "state"

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-virtual {v7, v0, v1}, Lcom/alibaba/alimei/orm/query/Update;->addUpdateColumn(Ljava/lang/String;Ljava/lang/Object;)V

    .line 199
    invoke-virtual {v7}, Lcom/alibaba/alimei/orm/query/Update;->execute()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 202
    .end local v7    # "alertUpdate":Lcom/alibaba/alimei/orm/query/Update;
    .end local v8    # "alertViews":Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;
    :catch_0
    move-exception v14

    .line 203
    .local v14, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    invoke-interface {v12}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    .line 208
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_5
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;

    .line 209
    .restart local v8    # "alertViews":Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;
    if-eqz v8, :cond_5

    .line 213
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->sync_data2:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/alibaba/alimei/sdk/db/calendar/entry/Events;->isBodySaveFile(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 214
    iget-object v0, v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->description:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lail;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    iput-object v0, v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->description:Ljava/lang/String;

    .line 217
    :cond_6
    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string/jumbo v21, "[AlertService] showAlimeiCalendarNotification"

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lafg;->a(Ljava/lang/String;)V

    .line 218
    iget-object v13, v8, Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;->description:Ljava/lang/String;

    .line 219
    .local v13, "desc":Ljava/lang/String;
    if-eqz v13, :cond_7

    invoke-static {}, Lcom/alibaba/alimei/calendar/alerts/AlertService;->a()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 220
    const-string/jumbo v13, ""

    .line 222
    :cond_7
    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v19

    invoke-static {}, Lcom/alibaba/alimei/calendar/alerts/AlertService;->b()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_8

    .line 223
    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static {}, Lcom/alibaba/alimei/calendar/alerts/AlertService;->b()I

    move-result v22

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-static {}, Lcom/alibaba/alimei/calendar/alerts/AlertService;->c()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v19 .. v19}, Lzc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 225
    :cond_8
    move-object v15, v13

    .line 2017
    .local v15, "finalDesc":Ljava/lang/String;
    sget-object v19, Lhcv$a;->a:Lhcv;

    .line 226
    new-instance v20, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v8, v15}, Lcom/alibaba/alimei/calendar/alerts/AlertService$a$1;-><init>(Lcom/alibaba/alimei/calendar/alerts/AlertService$a;Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v20}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 201
    .end local v8    # "alertViews":Lcom/alibaba/alimei/sdk/db/calendar/entry/AlertViews;
    .end local v13    # "desc":Ljava/lang/String;
    .end local v15    # "finalDesc":Ljava/lang/String;
    :cond_9
    :try_start_2
    invoke-interface {v12}, Lcom/alibaba/alimei/orm/IDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    invoke-interface {v12}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    goto/16 :goto_2

    :catchall_0
    move-exception v18

    invoke-interface {v12}, Lcom/alibaba/alimei/orm/IDatabase;->endTransaction()V

    throw v18
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 107
    .line 1112
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 1113
    const-string/jumbo v1, "action"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1114
    const-string/jumbo v1, "alibaba.alimei.action.event.reminder"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-direct {p0}, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->a()V

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/alerts/AlertService$a;->a:Landroid/app/Service;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/alibaba/alimei/calendar/alerts/AlertReceiver;->a(Landroid/app/Service;I)V

    .line 109
    return-void
.end method
