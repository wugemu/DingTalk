.class public Leyt;
.super Ljava/lang/Object;
.source "LocalContactUtil.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Leyt;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Leyt;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;)I
    .locals 12
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 490
    const/4 v6, 0x0

    .line 491
    .local v6, "row":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 523
    :cond_0
    :goto_0
    return v9

    .line 494
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v10

    invoke-virtual {v10}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 496
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    invoke-static {p0}, Leyt;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 497
    .local v4, "rawContactId":J
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_0

    .line 500
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    .local v3, "num":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 505
    const-string/jumbo v8, "raw_contact_id=? AND mimetype=? AND (data2=? OR data2=?) AND data1=?"

    .line 510
    .local v8, "where":Ljava/lang/String;
    const/4 v10, 0x5

    new-array v7, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    const-string/jumbo v11, "vnd.android.cursor.item/phone_v2"

    aput-object v11, v7, v10

    const/4 v10, 0x2

    const-string/jumbo v11, "0"

    .line 512
    aput-object v11, v7, v10

    const/4 v10, 0x3

    const-string/jumbo v11, "2"

    .line 513
    aput-object v11, v7, v10

    const/4 v10, 0x4

    aput-object v3, v7, v10

    .line 515
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v10, v11, v8, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 517
    .local v1, "deletedRow":I
    add-int/2addr v6, v1

    .line 518
    goto :goto_1

    .line 519
    .end local v1    # "deletedRow":I
    .end local v3    # "num":Ljava/lang/String;
    .end local v4    # "rawContactId":J
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 520
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    move v9, v6

    .line 523
    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)J
    .locals 14
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    const-wide/16 v12, -0x1

    .line 122
    :cond_0
    :goto_0
    return-wide v12

    .line 88
    :cond_1
    const-wide/16 v12, -0x1

    .line 90
    .local v12, "rawContactId":J
    const/4 v11, 0x0

    .line 91
    .local v11, "rawContactCur":Landroid/database/Cursor;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    .line 92
    .local v8, "context":Landroid/content/Context;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "display_name=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 95
    .local v6, "allCursor":Landroid/database/Cursor;
    if-nez v6, :cond_3

    .line 116
    if-eqz v6, :cond_2

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    const-wide/16 v12, -0x1

    goto :goto_0

    .line 98
    :cond_3
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 100
    .local v10, "idColumn":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    .local v7, "contactID":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string/jumbo v3, "contact_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v7, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 104
    if-eqz v11, :cond_4

    .line 105
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 106
    const-string/jumbo v0, "_id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 113
    .end local v7    # "contactID":Ljava/lang/String;
    .end local v10    # "idColumn":I
    :cond_4
    if-eqz v11, :cond_5

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_5
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 110
    :catch_0
    move-exception v9

    .line 111
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    if-eqz v11, :cond_6

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_6
    if-eqz v6, :cond_0

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 113
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_7

    .line 114
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 116
    :cond_7
    if-eqz v6, :cond_8

    .line 117
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 23
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "numberType"    # Ljava/lang/String;
    .param p3, "company"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "website"    # Ljava/lang/String;
    .param p6, "remark"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .prologue
    .line 210
    .local p2, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_0

    if-eqz p2, :cond_0

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v18

    if-nez v18, :cond_2

    .line 211
    :cond_0
    const-wide/16 v14, -0x1

    .line 326
    :cond_1
    :goto_0
    return-wide v14

    .line 214
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v18

    if-nez v18, :cond_3

    .line 215
    const-string/jumbo v18, "tele_conf"

    sget-object v19, Leyt;->a:Ljava/lang/String;

    const-string/jumbo v20, "You are national user, can not add"

    invoke-static/range {v18 .. v20}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-wide/16 v14, -0x1

    goto :goto_0

    .line 218
    :cond_3
    const-wide/16 v4, -0x1

    .line 220
    .local v4, "contactId":J
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcid;->c()Landroid/app/Application;

    move-result-object v6

    .line 221
    .local v6, "context":Landroid/content/Context;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 223
    .local v17, "values":Landroid/content/ContentValues;
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object p0, v18, v19

    const/16 v19, 0x1

    const-string/jumbo v20, "local_contact"

    aput-object v20, v18, v19

    invoke-static/range {v18 .. v18}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 224
    .local v10, "nameLocalKey":Ljava/lang/String;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v6, v10, v0}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v9

    .line 225
    .local v9, "hasExist":Z
    invoke-static/range {p0 .. p0}, Leyt;->a(Ljava/lang/String;)J

    move-result-wide v14

    .line 226
    .local v14, "rawContactId":J
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-gez v18, :cond_9

    .line 228
    if-eqz v9, :cond_5

    .line 229
    const-string/jumbo v18, "tele_conf"

    sget-object v19, Leyt;->a:Ljava/lang/String;

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object p0, v20, v21

    const/16 v21, 0x1

    const-string/jumbo v22, " has exist, but no permission."

    aput-object v22, v20, v21

    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v18 .. v20}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 322
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "hasExist":Z
    .end local v10    # "nameLocalKey":Ljava/lang/String;
    .end local v14    # "rawContactId":J
    .end local v17    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    .line 323
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .end local v7    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    move-wide v14, v4

    .line 326
    goto :goto_0

    .line 233
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v9    # "hasExist":Z
    .restart local v10    # "nameLocalKey":Ljava/lang/String;
    .restart local v14    # "rawContactId":J
    .restart local v17    # "values":Landroid/content/ContentValues;
    :cond_5
    :try_start_1
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v16

    .line 234
    .local v16, "rawContactUri":Landroid/net/Uri;
    if-eqz v16, :cond_1

    .line 237
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    .line 238
    const-wide/16 v18, 0x0

    cmp-long v18, v14, v18

    if-lez v18, :cond_1

    .line 242
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 243
    const-string/jumbo v18, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string/jumbo v18, "mimetype"

    const-string/jumbo v19, "vnd.android.cursor.item/name"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const-string/jumbo v18, "data2"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 249
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-static {v6, v10, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 262
    .end local v16    # "rawContactUri":Landroid/net/Uri;
    :cond_6
    move-wide v4, v14

    .line 264
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_7
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_b

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 265
    .local v12, "number":Ljava/lang/String;
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 268
    invoke-static {v12}, Leyt;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 269
    .local v8, "existedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_8

    move-object/from16 v0, p0

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_7

    .line 272
    :cond_8
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 273
    const-string/jumbo v19, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 274
    const-string/jumbo v19, "mimetype"

    const-string/jumbo v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string/jumbo v19, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_a

    .line 277
    const-string/jumbo v19, "data2"

    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 279
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 280
    .local v13, "phoneLabel":Ljava/lang/String;
    const-string/jumbo v19, "data3"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .end local v13    # "phoneLabel":Ljava/lang/String;
    :goto_3
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    sget-object v20, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_2

    .line 252
    .end local v8    # "existedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "number":Ljava/lang/String;
    :cond_9
    invoke-static/range {p0 .. p0}, Leyt;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    .line 253
    .local v11, "numList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v11, :cond_6

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x14

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 254
    const-string/jumbo v18, "tele_conf"

    sget-object v19, Leyt;->a:Ljava/lang/String;

    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string/jumbo v22, "Insert number into "

    aput-object v22, v20, v21

    const/16 v21, 0x1

    aput-object p0, v20, v21

    const/16 v21, 0x2

    const-string/jumbo v22, " fail because beyond max limit "

    aput-object v22, v20, v21

    const/16 v21, 0x3

    const-string/jumbo v22, "20"

    .line 258
    aput-object v22, v20, v21

    .line 255
    invoke-static/range {v20 .. v20}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 254
    invoke-static/range {v18 .. v20}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 282
    .end local v11    # "numList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "existedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "number":Ljava/lang/String;
    :cond_a
    const-string/jumbo v19, "data2"

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_3

    .line 287
    .end local v8    # "existedNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v12    # "number":Ljava/lang/String;
    :cond_b
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 289
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 290
    const-string/jumbo v18, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 291
    const-string/jumbo v18, "mimetype"

    const-string/jumbo v19, "vnd.android.cursor.item/organization"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const-string/jumbo v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string/jumbo v18, "data2"

    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 294
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 296
    :cond_c
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_d

    .line 298
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 299
    const-string/jumbo v18, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 300
    const-string/jumbo v18, "mimetype"

    const-string/jumbo v19, "vnd.android.cursor.item/email_v2"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const-string/jumbo v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string/jumbo v18, "data2"

    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 306
    :cond_d
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_e

    .line 307
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 308
    const-string/jumbo v18, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 309
    const-string/jumbo v18, "mimetype"

    const-string/jumbo v19, "vnd.android.cursor.item/website"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string/jumbo v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    const-string/jumbo v18, "data2"

    const/16 v19, 0x5

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 315
    :cond_e
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 316
    invoke-virtual/range {v17 .. v17}, Landroid/content/ContentValues;->clear()V

    .line 317
    const-string/jumbo v18, "raw_contact_id"

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 318
    const-string/jumbo v18, "mimetype"

    const-string/jumbo v19, "vnd.android.cursor.item/note"

    invoke-virtual/range {v17 .. v19}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string/jumbo v18, "data1"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    sget-object v19, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method public static a(JI)Z
    .locals 18
    .param p0, "rawContactId"    # J
    .param p2, "drawableId"    # I

    .prologue
    .line 413
    const-wide/16 v14, 0x0

    cmp-long v14, p0, v14

    if-gez v14, :cond_1

    .line 414
    const/4 v14, 0x0

    .line 462
    :cond_0
    :goto_0
    return v14

    .line 417
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v14

    invoke-virtual {v14}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v14

    if-nez v14, :cond_2

    .line 418
    const-string/jumbo v14, "tele_conf"

    sget-object v15, Leyt;->a:Ljava/lang/String;

    const-string/jumbo v16, "You are national user can not photo"

    invoke-static/range {v14 .. v16}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const/4 v14, 0x0

    goto :goto_0

    .line 422
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    .line 423
    .local v3, "context":Landroid/content/Context;
    const/4 v10, 0x0

    .line 424
    .local v10, "sourceBitmap":Landroid/graphics/Bitmap;
    const/4 v8, 0x0

    .line 427
    .local v8, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 428
    .local v7, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v14, 0x1

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 429
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 430
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 431
    .local v12, "srcWidth":I
    iget v11, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 433
    .local v11, "srcHeight":I
    const/4 v6, 0x1

    .line 434
    .local v6, "inSampleSize":I
    const/16 v14, 0x96

    if-gt v12, v14, :cond_3

    const/16 v14, 0x96

    if-le v11, v14, :cond_4

    .line 435
    :cond_3
    int-to-float v14, v11

    const/high16 v15, 0x43160000    # 150.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 436
    .local v5, "heightRatio":I
    int-to-float v14, v12

    const/high16 v15, 0x43160000    # 150.0f

    div-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v13

    .line 438
    .local v13, "widthRatio":I
    if-ge v5, v13, :cond_6

    move v6, v5

    .line 441
    .end local v5    # "heightRatio":I
    .end local v13    # "widthRatio":I
    :cond_4
    :goto_1
    const/4 v14, 0x0

    iput-boolean v14, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 442
    iput v6, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 443
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    move/from16 v0, p2

    invoke-static {v14, v0, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 444
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .local v9, "os":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v15, 0x64

    invoke-virtual {v10, v14, v15, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 446
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 447
    .local v2, "avatar":[B
    move-wide/from16 v0, p0

    invoke-static {v0, v1, v2}, Leyt;->a(J[B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v14

    .line 451
    if-eqz v9, :cond_5

    .line 453
    :try_start_2
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 458
    :cond_5
    :goto_2
    if-eqz v10, :cond_0

    .line 459
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .end local v2    # "avatar":[B
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "heightRatio":I
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v13    # "widthRatio":I
    :cond_6
    move v6, v13

    .line 438
    goto :goto_1

    .line 448
    .end local v5    # "heightRatio":I
    .end local v6    # "inSampleSize":I
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v11    # "srcHeight":I
    .end local v12    # "srcWidth":I
    .end local v13    # "widthRatio":I
    :catch_0
    move-exception v4

    .line 449
    .local v4, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 451
    if-eqz v8, :cond_7

    .line 453
    :try_start_4
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 458
    :cond_7
    :goto_4
    if-eqz v10, :cond_8

    .line 459
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 462
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 451
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    :goto_5
    if-eqz v8, :cond_9

    .line 453
    :try_start_5
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 458
    :cond_9
    :goto_6
    if-eqz v10, :cond_a

    .line 459
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    :cond_a
    throw v14

    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "avatar":[B
    .restart local v6    # "inSampleSize":I
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "srcHeight":I
    .restart local v12    # "srcWidth":I
    :catch_1
    move-exception v15

    goto :goto_2

    .end local v2    # "avatar":[B
    .end local v6    # "inSampleSize":I
    .end local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .end local v11    # "srcHeight":I
    .end local v12    # "srcWidth":I
    .restart local v4    # "e":Ljava/lang/Exception;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception v14

    goto :goto_4

    .end local v4    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v15

    goto :goto_6

    .line 451
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v6    # "inSampleSize":I
    .restart local v7    # "options":Landroid/graphics/BitmapFactory$Options;
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "srcHeight":I
    .restart local v12    # "srcWidth":I
    :catchall_1
    move-exception v14

    move-object v8, v9

    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_5

    .line 448
    .end local v8    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "os":Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v4

    move-object v8, v9

    .end local v9    # "os":Ljava/io/ByteArrayOutputStream;
    .restart local v8    # "os":Ljava/io/ByteArrayOutputStream;
    goto :goto_3
.end method

.method public static a(J[B)Z
    .locals 8
    .param p0, "rawContactId"    # J
    .param p2, "drawableData"    # [B

    .prologue
    const/4 v3, 0x0

    .line 380
    const-wide/16 v4, 0x0

    cmp-long v4, p0, v4

    if-ltz v4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    if-gtz v4, :cond_1

    .line 403
    :cond_0
    :goto_0
    return v3

    .line 386
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->P()Z

    move-result v4

    if-nez v4, :cond_2

    .line 387
    const-string/jumbo v4, "tele_conf"

    sget-object v5, Leyt;->a:Ljava/lang/String;

    const-string/jumbo v6, "You are national user can not photo"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 391
    :cond_2
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 393
    .local v0, "context":Landroid/content/Context;
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 394
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "raw_contact_id"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 395
    const-string/jumbo v4, "mimetype"

    const-string/jumbo v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    const-string/jumbo v4, "data15"

    invoke-virtual {v2, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 397
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    const/4 v3, 0x1

    goto :goto_0

    .line 400
    .end local v2    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v1

    .line 401
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 156
    const/4 v11, 0x0

    .line 157
    .local v11, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    :goto_0
    return-object v0

    .line 160
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    .line 161
    .local v7, "context":Landroid/content/Context;
    const/4 v13, 0x0

    .line 163
    .local v13, "phoneNumberCursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Leyt;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, "contactId":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "=? "

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, "where":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v6, v4, v0

    .line 167
    .local v4, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 169
    if-eqz v13, :cond_2

    .line 170
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 172
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 175
    .end local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v12, "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    const-string/jumbo v0, "data1"

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 176
    .local v10, "numberIndex":I
    invoke-interface {v13, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 178
    .local v9, "number":Ljava/lang/String;
    invoke-interface {v12, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-nez v0, :cond_1

    move-object v11, v12

    .line 186
    .end local v3    # "where":Ljava/lang/String;
    .end local v4    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "number":Ljava/lang/String;
    .end local v10    # "numberIndex":I
    .end local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    if-eqz v13, :cond_3

    .line 187
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .end local v6    # "contactId":Ljava/lang/String;
    :cond_3
    :goto_1
    move-object v0, v11

    .line 191
    goto :goto_0

    .line 183
    :catch_0
    move-exception v8

    .line 184
    .local v8, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    if-eqz v13, :cond_3

    .line 187
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 186
    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v13, :cond_4

    .line 187
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 186
    .end local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "where":Ljava/lang/String;
    .restart local v4    # "selectionArgs":[Ljava/lang/String;
    .restart local v6    # "contactId":Ljava/lang/String;
    .restart local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 183
    .end local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v8

    move-object v11, v12

    .end local v12    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "numbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 6
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 338
    :cond_0
    :goto_0
    return v2

    .line 334
    :cond_1
    invoke-static {p0}, Leyt;->a(Ljava/lang/String;)J

    move-result-wide v0

    .line 335
    .local v0, "rawContactId":J
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-lez v3, :cond_0

    .line 336
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)I
    .locals 12
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 527
    const/4 v6, 0x0

    .line 528
    .local v6, "row":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 548
    :goto_0
    return v9

    .line 532
    :cond_0
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v9

    invoke-virtual {v9}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    .line 533
    .local v0, "context":Landroid/content/Context;
    invoke-static {p0}, Leyt;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 535
    .local v4, "rawContactId":J
    const-string/jumbo v3, "display_name=?"

    .line 536
    .local v3, "nameWhere":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v2, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p0, v2, v9

    .line 537
    .local v2, "nameSelectionArgs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v3, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 539
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-lez v9, :cond_1

    .line 540
    const-string/jumbo v8, "raw_contact_id=?"

    .line 541
    .local v8, "where":Ljava/lang/String;
    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v9

    .line 542
    .local v7, "selectionArgs":[Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v9, v10, v8, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "context":Landroid/content/Context;
    .end local v2    # "nameSelectionArgs":[Ljava/lang/String;
    .end local v3    # "nameWhere":Ljava/lang/String;
    .end local v4    # "rawContactId":J
    .end local v7    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "where":Ljava/lang/String;
    :cond_1
    :goto_1
    move v9, v6

    .line 548
    goto :goto_0

    .line 544
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static e(Ljava/lang/String;)Ljava/util/List;
    .locals 14
    .param p0, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 43
    const/4 v6, 0x0

    .line 77
    :cond_0
    :goto_0
    return-object v6

    .line 44
    :cond_1
    const/4 v6, 0x0

    .line 45
    .local v6, "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    .line 46
    .local v8, "context":Landroid/content/Context;
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v1, "display_name"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string/jumbo v1, "data1"

    aput-object v1, v2, v0

    .line 49
    .local v2, "projection":[Ljava/lang/String;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v4, "data1"

    aput-object v4, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v4, " = \'"

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v4, "\'"

    aput-object v4, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, "where":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 58
    .local v9, "cursor":Landroid/database/Cursor;
    if-nez v9, :cond_3

    .line 73
    if-eqz v9, :cond_2

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 61
    :cond_3
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v7, "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 63
    invoke-interface {v9, v11}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 65
    const-string/jumbo v0, "display_name"

    .line 66
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 67
    .local v13, "nameFieldColumnIndex":I
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 68
    .local v12, "name":Ljava/lang/String;
    invoke-interface {v7, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 73
    .end local v12    # "name":Ljava/lang/String;
    .end local v13    # "nameFieldColumnIndex":I
    :cond_4
    if-eqz v9, :cond_6

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v6, v7

    .end local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 70
    .end local v11    # "i":I
    :catch_0
    move-exception v10

    .line 71
    .local v10, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    if-eqz v9, :cond_0

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 73
    .end local v10    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v9, :cond_5

    .line 74
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0

    .line 73
    .end local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    :catchall_1
    move-exception v0

    move-object v6, v7

    .end local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_3

    .line 70
    .end local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v10

    move-object v6, v7

    .end local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2

    .end local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    move-object v6, v7

    .end local v7    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v6    # "contactNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto/16 :goto_0
.end method

.method private static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v5, 0x0

    .line 126
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-object v5

    .line 130
    :cond_1
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v8

    .line 131
    .local v8, "context":Landroid/content/Context;
    const/4 v7, 0x0

    .line 132
    .local v7, "contactId":Ljava/lang/String;
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "_id"

    aput-object v3, v2, v11

    const-string/jumbo v3, "display_name=? "

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 136
    .local v6, "allCursor":Landroid/database/Cursor;
    if-nez v6, :cond_2

    .line 147
    if-eqz v6, :cond_0

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 139
    :cond_2
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 140
    const-string/jumbo v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 141
    .local v10, "idColumn":I
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 147
    .end local v10    # "idColumn":I
    :cond_3
    if-eqz v6, :cond_4

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    :goto_1
    move-object v5, v7

    .line 152
    goto :goto_0

    .line 144
    :catch_0
    move-exception v9

    .line 145
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    if-eqz v6, :cond_4

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 147
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_5

    .line 148
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v0
.end method
