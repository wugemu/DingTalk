.class public Lgpq;
.super Ljava/lang/Object;
.source "CSpaceUserBaseInfoFetchUtil.java"


# static fields
.field private static volatile b:Lgpq;

.field private static final d:Ljava/lang/String;


# instance fields
.field public a:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Lgoh;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lfzs$h;->dt_space_get_user_info_failed:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lgpq;->d:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lgpq;->a:Lfp;

    .line 53
    const-string/jumbo v0, "CSpaceUserBaseInfoFetchUtil"

    iput-object v0, p0, Lgpq;->c:Ljava/lang/String;

    .line 58
    return-void
.end method

.method static synthetic a(Lgpq;)Lfp;
    .locals 1
    .param p0, "x0"    # Lgpq;

    .prologue
    .line 47
    iget-object v0, p0, Lgpq;->a:Lfp;

    return-object v0
.end method

.method public static a()Lgpq;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lgpq;->b:Lgpq;

    if-nez v0, :cond_1

    .line 62
    const-class v1, Lgpq;

    monitor-enter v1

    .line 63
    :try_start_0
    sget-object v0, Lgpq;->b:Lgpq;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lgpq;

    invoke-direct {v0}, Lgpq;-><init>()V

    sput-object v0, Lgpq;->b:Lgpq;

    .line 66
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    :cond_1
    sget-object v0, Lgpq;->b:Lgpq;

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lgpq;Landroid/content/Context;JJLcma;)V
    .locals 0
    .param p0, "x0"    # Lgpq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lcma;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p6}, Lgpq;->b(Landroid/content/Context;JJLcma;)V

    return-void
.end method

.method static synthetic a(Lgpq;Landroid/content/Context;JJLgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 12
    .param p0, "x0"    # Lgpq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # J
    .param p4, "x3"    # J
    .param p6, "x4"    # Lgoh;
    .param p7, "x5"    # Ljava/lang/String;
    .param p8, "x6"    # Ljava/lang/String;
    .param p9, "x7"    # Lcma;

    .prologue
    .line 47
    .line 1167
    const-wide/16 v4, 0x0

    cmp-long v4, p4, v4

    if-gtz v4, :cond_1

    .line 1169
    if-eqz p6, :cond_0

    .line 1170
    move-object/from16 v0, p6

    move-object/from16 v1, p9

    invoke-virtual {p0, v0, v1}, Lgpq;->a(Lgoh;Lcma;)V

    .line 1172
    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object/from16 v2, p9

    invoke-direct {p0, v0, v1, v2}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    :cond_1
    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p9

    .line 1176
    invoke-direct/range {v4 .. v10}, Lgpq;->b(Landroid/content/Context;JJLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lgpq;Landroid/content/Context;Ljava/util/List;JLjava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 13
    .param p0, "x0"    # Lgpq;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # J
    .param p5, "x4"    # Ljava/util/List;
    .param p6, "x5"    # Ljava/lang/String;
    .param p7, "x6"    # Ljava/lang/String;
    .param p8, "x7"    # Lcma;

    .prologue
    .line 47
    .line 1291
    if-eqz p8, :cond_1

    .line 1295
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 1296
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p8

    invoke-virtual {p0, v4, v0}, Lgpq;->a(Ljava/util/List;Lcma;)V

    .line 4361
    .end local p1    # "x1":Landroid/content/Context;
    .end local p6    # "x5":Ljava/lang/String;
    .end local p7    # "x6":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1300
    .restart local p1    # "x1":Landroid/content/Context;
    .restart local p6    # "x5":Ljava/lang/String;
    .restart local p7    # "x6":Ljava/lang/String;
    :cond_2
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    if-eqz p5, :cond_4

    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_4

    .line 1303
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 1304
    iget-object v5, p0, Lgpq;->a:Lfp;

    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    .line 2096
    const/4 v10, 0x0

    invoke-virtual {v5, v8, v9, v10}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1304
    check-cast v5, Lgoh;

    .line 1306
    if-nez v5, :cond_3

    .line 1307
    new-instance v5, Lgoh;

    invoke-direct {v5}, Lgoh;-><init>()V

    .line 1310
    :cond_3
    iget-wide v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    iput-wide v8, v5, Lgoh;->a:J

    .line 1311
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    iput-object v8, v5, Lgoh;->b:Ljava/lang/String;

    .line 1312
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iput-object v8, v5, Lgoh;->c:Ljava/lang/String;

    .line 1313
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    iput-object v8, v5, Lgoh;->e:Ljava/lang/String;

    .line 1314
    iget-object v8, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isActive:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iput-boolean v8, v5, Lgoh;->f:Z

    .line 1316
    iget-object v8, p0, Lgpq;->a:Lfp;

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-virtual {v8, v10, v11, v5}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1

    .line 1320
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1322
    iget-object v4, p0, Lgpq;->a:Lfp;

    .line 3096
    const/4 v7, 0x0

    invoke-virtual {v4, v8, v9, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1322
    if-eqz v4, :cond_5

    .line 1323
    iget-object v4, p0, Lgpq;->a:Lfp;

    .line 4096
    const/4 v7, 0x0

    invoke-virtual {v4, v8, v9, v7}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1323
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1326
    :cond_5
    new-instance v4, Lgoh;

    invoke-direct {v4}, Lgoh;-><init>()V

    .line 1327
    iput-wide v8, v4, Lgoh;->a:J

    .line 1328
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    sget v8, Lfzs$h;->dt_space_get_user_info_failed:I

    invoke-virtual {v7, v8}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v4, Lgoh;->b:Ljava/lang/String;

    .line 1329
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1333
    :cond_6
    const-wide/16 v4, 0x0

    cmp-long v4, p3, v4

    if-gtz v4, :cond_a

    .line 1334
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 1335
    move-object/from16 v0, p8

    invoke-virtual {p0, v6, v0}, Lgpq;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 1338
    :cond_7
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo p6, "500"

    .line 1339
    .end local p6    # "x5":Ljava/lang/String;
    :cond_8
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object p7, Lgpq;->d:Ljava/lang/String;

    .line 1341
    .end local p7    # "x6":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-direct {p0, v0, v1, v2}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1343
    const-string/jumbo v4, "CSpace"

    const-string/jumbo v5, "CSpaceUserBaseInfoFetchUtil"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "doWhenGetUsersProfileInfoResult : "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object p6, v6, v7

    const/4 v7, 0x2

    aput-object p7, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4355
    .restart local p6    # "x5":Ljava/lang/String;
    .restart local p7    # "x6":Ljava/lang/String;
    :cond_a
    if-eqz p8, :cond_1

    .line 4359
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 4360
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p8

    invoke-virtual {p0, v4, v0}, Lgpq;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 4364
    :cond_c
    new-instance v10, Lgpq$4;

    move-object/from16 v0, p8

    invoke-direct {v10, p0, p2, v0}, Lgpq$4;-><init>(Lgpq;Ljava/util/List;Lcma;)V

    .line 4381
    if-eqz p1, :cond_d

    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_d

    .line 4382
    const-class v4, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "x1":Landroid/content/Context;
    invoke-static {v10, v4, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcma;

    move-object v10, v4

    .line 4384
    :cond_d
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v4

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v5, p2

    move-wide/from16 v6, p3

    invoke-virtual/range {v4 .. v10}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;JZZLcma;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lgpq;Lgoh;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "x0"    # Lgpq;
    .param p1, "x1"    # Lgoh;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Lcma;

    .prologue
    .line 47
    .line 1241
    if-eqz p1, :cond_0

    .line 1242
    invoke-virtual {p0, p1, p4}, Lgpq;->a(Lgoh;Lcma;)V

    :goto_0
    return-void

    .line 1244
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0
.end method

.method static synthetic a(Lgpq;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 9
    .param p0, "x0"    # Lgpq;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;
    .param p5, "x5"    # Lcma;

    .prologue
    const/4 v8, 0x0

    .line 47
    .line 4388
    if-eqz p5, :cond_1

    .line 4392
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 4393
    :cond_0
    invoke-virtual {p0, v8, p5}, Lgpq;->a(Ljava/util/List;Lcma;)V

    .line 4432
    .end local p3    # "x3":Ljava/lang/String;
    .end local p4    # "x4":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 4397
    .restart local p3    # "x3":Ljava/lang/String;
    .restart local p4    # "x4":Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4399
    if-eqz p2, :cond_5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 4400
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgc;

    .line 4401
    iget-object v1, v0, Lcgc;->b:Lcet;

    if-eqz v1, :cond_3

    .line 4405
    iget-object v1, p0, Lgpq;->a:Lfp;

    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 5096
    invoke-virtual {v1, v4, v5, v8}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4405
    check-cast v1, Lgoh;

    .line 4407
    if-nez v1, :cond_4

    .line 4408
    new-instance v1, Lgoh;

    invoke-direct {v1}, Lgoh;-><init>()V

    .line 4411
    :cond_4
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, v1, Lgoh;->a:J

    .line 4412
    iget-object v4, v0, Lcgc;->b:Lcet;

    iget-object v4, v4, Lcet;->c:Ljava/lang/String;

    iput-object v4, v1, Lgoh;->d:Ljava/lang/String;

    .line 4414
    iget-object v4, p0, Lgpq;->a:Lfp;

    iget-object v0, v0, Lcgc;->b:Lcet;

    iget-object v0, v0, Lcet;->a:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7, v1}, Lfp;->b(JLjava/lang/Object;)V

    goto :goto_1

    .line 4418
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4419
    iget-object v0, p0, Lgpq;->a:Lfp;

    .line 6096
    invoke-virtual {v0, v4, v5, v8}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4419
    if-eqz v0, :cond_6

    .line 4421
    iget-object v0, p0, Lgpq;->a:Lfp;

    .line 7096
    invoke-virtual {v0, v4, v5, v8}, Lfp;->a(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4421
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4424
    :cond_6
    new-instance v0, Lgoh;

    invoke-direct {v0}, Lgoh;-><init>()V

    .line 4425
    iput-wide v4, v0, Lgoh;->a:J

    .line 4426
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lfzs$h;->dt_space_get_user_info_failed:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lgoh;->b:Ljava/lang/String;

    .line 4427
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 4431
    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 4432
    invoke-virtual {p0, v2, p5}, Lgpq;->a(Ljava/util/List;Lcma;)V

    goto/16 :goto_0

    .line 4434
    :cond_8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo p3, "500"

    .line 4435
    .end local p3    # "x3":Ljava/lang/String;
    :cond_9
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object p4, Lgpq;->d:Ljava/lang/String;

    .line 4437
    .end local p4    # "x4":Ljava/lang/String;
    :cond_a
    invoke-direct {p0, p3, p4, p5}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 4439
    const-string/jumbo v0, "CSpace"

    const-string/jumbo v1, "CSpaceUserBaseInfoFetchUtil"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "doWhenGetUsersEmployInfoResult failed : "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    aput-object p4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 2
    .param p1, "errorCode"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;
    .param p3, "callback"    # Lcma;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 470
    if-nez p3, :cond_0

    .line 480
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpq$7;

    invoke-direct {v1, p0, p3, p1, p2}, Lgpq$7;-><init>(Lgpq;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lgpq;->d:Ljava/lang/String;

    return-object v0
.end method

.method private b(Landroid/content/Context;JJLcma;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J
    .param p4, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Lcma",
            "<",
            "Lgoh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 184
    .local p6, "callback":Lcma;, "Lcma<Lgoh;>;"
    if-nez p6, :cond_0

    .line 236
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    return-void

    .line 188
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_1

    .line 189
    const-string/jumbo v0, "20170720"

    const-string/jumbo v1, "uid invalid"

    invoke-direct {p0, v0, v1, p6}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 193
    :cond_1
    new-instance v6, Lgpq$2;

    invoke-direct {v6, p0, p2, p3, p6}, Lgpq$2;-><init>(Lgpq;JLcma;)V

    .line 229
    .local v6, "employCallback":Lcma;, "Lcma<Lcgc;>;"
    if-eqz p1, :cond_2

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 230
    const-class v0, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v6, v0, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "employCallback":Lcma;, "Lcma<Lcgc;>;"
    check-cast v6, Lcma;

    .line 234
    .restart local v6    # "employCallback":Lcma;, "Lcma<Lcgc;>;"
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->b(JJLcma;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;JJLcma;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uid"    # J
    .param p4, "orgId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "JJ",
            "Lcma",
            "<",
            "Lgoh;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 86
    .line 1094
    .local p6, "callback":Lcma;, "Lcma<Lgoh;>;"
    if-eqz p6, :cond_0

    .line 1098
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    .line 1099
    const-string/jumbo v2, "20170720"

    const-string/jumbo v3, "uid invalid"

    move-object/from16 v0, p6

    invoke-direct {p0, v2, v3, v0}, Lgpq;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 1100
    .end local p1    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 1103
    .restart local p1    # "context":Landroid/content/Context;
    :cond_1
    new-instance v2, Lgpq$1;

    const/4 v10, 0x0

    move-object v3, p0

    move-wide v4, p2

    move-object v6, p1

    move-wide/from16 v7, p4

    move-object/from16 v9, p6

    invoke-direct/range {v2 .. v10}, Lgpq$1;-><init>(Lgpq;JLandroid/content/Context;JLcma;Z)V

    .line 1155
    if-eqz p1, :cond_2

    instance-of v3, p1, Landroid/app/Activity;

    if-eqz v3, :cond_2

    .line 1156
    const-class v3, Lcma;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-static {v2, v3, p1}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcma;

    .line 1159
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3, p2, p3, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    goto :goto_0
.end method

.method public final a(Lgoh;Lcma;)V
    .locals 2
    .param p1, "model"    # Lgoh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgoh;",
            "Lcma",
            "<",
            "Lgoh;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 444
    .local p2, "callback":Lcma;, "Lcma<Lgoh;>;"
    if-nez p2, :cond_0

    .line 454
    :goto_0
    return-void

    .line 448
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpq$5;

    invoke-direct {v1, p0, p2, p1}, Lgpq$5;-><init>(Lgpq;Lcma;Lgoh;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(Ljava/util/List;Lcma;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lgoh;",
            ">;",
            "Lcma",
            "<",
            "Ljava/util/List",
            "<",
            "Lgoh;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 457
    .local p1, "models":Ljava/util/List;, "Ljava/util/List<Lgoh;>;"
    .local p2, "callback":Lcma;, "Lcma<Ljava/util/List<Lgoh;>;>;"
    if-nez p2, :cond_0

    .line 467
    :goto_0
    return-void

    .line 461
    :cond_0
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lgpq$6;

    invoke-direct {v1, p0, p2, p1}, Lgpq$6;-><init>(Lgpq;Lcma;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
