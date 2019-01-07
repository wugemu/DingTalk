.class final Lfnb$1;
.super Ljava/lang/Object;
.source "CommonContactDataSourceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfnb;->a(Ljava/util/List;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic c:Lfnb;


# direct methods
.method constructor <init>(Lfnb;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .param p1, "this$0"    # Lfnb;

    .prologue
    .line 33
    iput-object p1, p0, Lfnb$1;->c:Lfnb;

    iput-object p2, p0, Lfnb$1;->a:Ljava/util/List;

    iput-object p3, p0, Lfnb$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    .prologue
    .line 36
    const/16 v16, 0x0

    .line 38
    .local v16, "statement":Lcom/alibaba/bee/SQLiteStatement;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb$1;->c:Lfnb;

    invoke-static {v2}, Lfnb;->b(Lfnb;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfnb$1;->c:Lfnb;

    invoke-static {v3}, Lfnb;->a(Lfnb;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-class v5, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v6, "tb_common_contact"

    .line 39
    invoke-static {v5, v6}, Lcom/alibaba/bee/DatabaseUtils;->getReplaceStatement(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 38
    invoke-virtual {v2, v3, v4, v5}, Lcom/alibaba/bee/DBManager;->compileStatement(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Lcom/alibaba/bee/SQLiteStatement;

    move-result-object v16

    .line 40
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb$1;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;

    .line 41
    .local v12, "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    invoke-static {v12}, Lcom/alibaba/android/user/entry/CommonContactEntry;->toDBEntry(Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;)Lcom/alibaba/android/user/entry/CommonContactEntry;

    move-result-object v11

    .line 42
    .local v11, "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb$1;->c:Lfnb;

    invoke-static {v2}, Lfnb;->d(Lfnb;)Lcom/alibaba/bee/DBManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lfnb$1;->c:Lfnb;

    invoke-static {v3}, Lfnb;->c(Lfnb;)Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/alibaba/android/user/entry/CommonContactEntry;

    const-string/jumbo v5, "tb_common_contact"

    const-class v6, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-static {v6}, Lcom/alibaba/android/user/entry/CommonContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "uid = ? "

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    iget-wide v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->uid:J

    move-wide/from16 v18, v0

    .line 43
    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 42
    invoke-virtual/range {v2 .. v10}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v13

    .line 44
    .local v13, "cursor":Landroid/database/Cursor;
    if-eqz v13, :cond_1

    .line 46
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    new-instance v15, Lcom/alibaba/android/user/entry/CommonContactEntry;

    invoke-direct {v15}, Lcom/alibaba/android/user/entry/CommonContactEntry;-><init>()V

    .line 48
    .local v15, "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    invoke-virtual {v15, v13}, Lcom/alibaba/android/user/entry/CommonContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 49
    iget-wide v2, v15, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 50
    iget-wide v2, v15, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    .line 51
    iget-wide v2, v15, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    .end local v15    # "entry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    :cond_0
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 57
    :cond_1
    const-string/jumbo v2, "common_contact_chat"

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 58
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    .line 64
    :cond_2
    :goto_1
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->chatCount:J

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    add-long/2addr v2, v4

    iget-wide v4, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->count:J

    .line 65
    iget-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->modifyTime:J

    .line 68
    :cond_3
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lcom/alibaba/android/user/entry/CommonContactEntry;->bindArgs(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 69
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/bee/SQLiteStatement;->execute()V

    .line 70
    invoke-interface/range {v16 .. v16}, Lcom/alibaba/bee/SQLiteStatement;->clearBindings()V

    .line 71
    move-object/from16 v0, p0

    iget-object v2, v0, Lfnb$1;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 73
    .end local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v12    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catch_0
    move-exception v14

    .line 74
    .local v14, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 76
    invoke-static/range {v16 .. v16}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    .line 77
    .end local v14    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 54
    .restart local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .restart local v12    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 76
    .end local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v12    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v13    # "cursor":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    invoke-static/range {v16 .. v16}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    throw v2

    .line 59
    .restart local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .restart local v12    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    :cond_4
    :try_start_5
    const-string/jumbo v2, "common_contact_ding"

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 60
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->dingCount:J

    goto :goto_1

    .line 61
    :cond_5
    const-string/jumbo v2, "common_contact_tele"

    iget-object v3, v12, Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;->contactType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    const-wide/16 v2, 0x1

    iput-wide v2, v11, Lcom/alibaba/android/user/entry/CommonContactEntry;->teleCount:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 76
    .end local v11    # "commonContactEntry":Lcom/alibaba/android/user/entry/CommonContactEntry;
    .end local v12    # "commonContactObject":Lcom/alibaba/android/dingtalk/userbase/model/CommonContactObject;
    .end local v13    # "cursor":Landroid/database/Cursor;
    :cond_6
    invoke-static/range {v16 .. v16}, Lfnb;->a(Lcom/alibaba/bee/SQLiteStatement;)V

    goto :goto_2
.end method
