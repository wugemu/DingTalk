.class public Levy;
.super Ljava/lang/Object;
.source "CallRecordsManager.java"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Levy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Levy;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/util/List;
    .locals 25
    .param p0, "maxNum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Levf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    if-gtz p0, :cond_1

    .line 30
    const/16 v16, 0x0

    .line 78
    :cond_0
    :goto_0
    return-object v16

    .line 32
    :cond_1
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v16, "logObjects":Ljava/util/List;, "Ljava/util/List<Levf;>;"
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v8

    invoke-virtual {v8}, Lcid;->c()Landroid/app/Application;

    move-result-object v11

    .line 35
    .local v11, "context":Landroid/content/Context;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 36
    .local v10, "calendar":Ljava/util/Calendar;
    const/4 v8, 0x2

    const/4 v9, -0x3

    invoke-virtual {v10, v8, v9}, Ljava/util/Calendar;->add(II)V

    .line 37
    const/4 v12, 0x0

    .line 39
    .local v12, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x5

    new-array v4, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "name"

    aput-object v9, v4, v8

    const/4 v8, 0x1

    const-string/jumbo v9, "number"

    aput-object v9, v4, v8

    const/4 v8, 0x2

    const-string/jumbo v9, "type"

    aput-object v9, v4, v8

    const/4 v8, 0x3

    const-string/jumbo v9, "date"

    aput-object v9, v4, v8

    const/4 v8, 0x4

    const-string/jumbo v9, "duration"

    aput-object v9, v4, v8

    const-string/jumbo v5, "date >= ?"

    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    .line 48
    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v8

    const-string/jumbo v7, "date DESC"

    .line 39
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 53
    :goto_1
    if-eqz v12, :cond_0

    .line 54
    const/16 v18, 0x0

    .line 55
    .local v18, "num":I
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    move/from16 v0, v18

    move/from16 v1, p0

    if-ge v0, v1, :cond_2

    .line 56
    const-string/jumbo v8, "number"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 57
    .local v19, "numberIndex":I
    move/from16 v0, v19

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, "number":Ljava/lang/String;
    const-string/jumbo v8, "name"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 60
    .local v17, "nameIndex":I
    move/from16 v0, v17

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v8, "type"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 63
    .local v21, "typeIndex":I
    move/from16 v0, v21

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 65
    .local v5, "type":I
    const-string/jumbo v8, "date"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v20

    .line 66
    .local v20, "timeIndex":I
    move/from16 v0, v20

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 68
    .local v6, "callTime":J
    const-string/jumbo v8, "duration"

    invoke-interface {v12, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 69
    .local v14, "durationIndex":I
    invoke-interface {v12, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 71
    .local v13, "duration":I
    new-instance v2, Levf;

    int-to-long v8, v13

    invoke-direct/range {v2 .. v9}, Levf;-><init>(Ljava/lang/String;Ljava/lang/String;IJJ)V

    .line 72
    .local v2, "callLog":Levf;
    const/4 v8, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v8, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 74
    add-int/lit8 v18, v18, 0x1

    .line 75
    goto :goto_2

    .line 50
    .end local v2    # "callLog":Levf;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "number":Ljava/lang/String;
    .end local v5    # "type":I
    .end local v6    # "callTime":J
    .end local v13    # "duration":I
    .end local v14    # "durationIndex":I
    .end local v17    # "nameIndex":I
    .end local v18    # "num":I
    .end local v19    # "numberIndex":I
    .end local v20    # "timeIndex":I
    .end local v21    # "typeIndex":I
    :catch_0
    move-exception v15

    .line 51
    .local v15, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "tele_conf"

    sget-object v9, Levy;->a:Ljava/lang/String;

    const/16 v22, 0x2

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const-string/jumbo v24, "Record call log exp: "

    aput-object v24, v22, v23

    const/16 v23, 0x1

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-static/range {v22 .. v22}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-static {v8, v9, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 76
    .end local v15    # "e":Ljava/lang/Exception;
    .restart local v18    # "num":I
    :cond_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method
