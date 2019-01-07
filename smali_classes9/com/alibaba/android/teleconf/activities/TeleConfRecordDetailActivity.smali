.class public Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "TeleConfRecordDetailActivity.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private A:Lewj;

.field private B:Landroid/view/View$OnClickListener;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/LinearLayout;

.field private i:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

.field private j:Leut;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ListView;

.field private n:Leus;

.field private o:Lcom/alibaba/wukong/im/MessageListener;

.field private p:Ljava/lang/String;

.field private q:[Ljava/lang/String;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;"
        }
    .end annotation
.end field

.field private s:J

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/app/Activity;

.field private y:Ljava/lang/String;

.field private z:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    .line 119
    iput-object p0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->x:Landroid/app/Activity;

    .line 126
    new-instance v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->B:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/ConfRecordItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 435
    .local p1, "recordItems":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/ConfRecordItem;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 436
    :cond_0
    const/4 v12, 0x0

    .line 569
    :cond_1
    return-object v12

    .line 438
    :cond_2
    new-instance v13, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$21;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$21;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    move-object/from16 v0, p1

    invoke-static {v0, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 445
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v7, "itemMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;>;"
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_16

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 447
    .local v6, "item":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v6, :cond_3

    .line 451
    new-instance v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->DetailItemInfo:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-direct {v11, v14}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;)V

    .line 452
    .local v11, "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    if-eqz v11, :cond_3

    .line 454
    const-string/jumbo v14, ""

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->b:Ljava/lang/String;

    .line 455
    iget-wide v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->beginTime:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    iput-wide v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    .line 456
    iget-wide v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    .line 3419
    invoke-static {v14, v15}, Leyr;->b(J)Ljava/lang/String;

    move-result-object v14

    .line 456
    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->c:Ljava/lang/String;

    .line 458
    iget-boolean v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog:Z

    iput-boolean v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->h:Z

    .line 460
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCallLog()Z

    move-result v14

    if-eqz v14, :cond_9

    .line 461
    invoke-virtual {v6}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOutgoing()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 462
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 468
    :goto_1
    iget-wide v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    invoke-static {v14, v15}, Leyr;->e(J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->f:Ljava/lang/String;

    .line 487
    :cond_4
    :goto_2
    const/4 v14, 0x2

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v14, v15, :cond_5

    const/4 v14, 0x3

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v14, v15, :cond_d

    .line 489
    :cond_5
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VoipCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    .line 504
    :goto_3
    iget-wide v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    .line 4058
    const-wide/16 v16, 0x0

    cmp-long v16, v14, v16

    if-gez v16, :cond_14

    .line 4059
    const-string/jumbo v9, "Invalid"

    .line 505
    .local v9, "mapKey":Ljava/lang/String;
    :goto_4
    invoke-interface {v7, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 506
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 507
    .local v8, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    if-nez v8, :cond_6

    .line 508
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    :cond_6
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 463
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    .end local v9    # "mapKey":Ljava/lang/String;
    :cond_7
    iget-wide v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-nez v14, :cond_8

    .line 464
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    goto :goto_1

    .line 466
    :cond_8
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    goto :goto_1

    .line 471
    :cond_9
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v14

    invoke-virtual {v14}, Lcid;->b()Lchy;

    move-result-object v14

    invoke-virtual {v14}, Lchy;->getCurrentUid()J

    move-result-wide v14

    iget-wide v0, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    move-wide/from16 v16, v0

    cmp-long v14, v14, v16

    if-nez v14, :cond_a

    .line 472
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    .line 476
    :goto_5
    iget v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordStatus:I

    if-nez v14, :cond_c

    .line 477
    sget v14, Leuj$l;->conf_txt_free_call_missed:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->getString(I)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->f:Ljava/lang/String;

    .line 478
    iget-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Calling:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-ne v14, v15, :cond_b

    .line 479
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->CallingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    goto :goto_2

    .line 474
    :cond_a
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    goto :goto_5

    .line 480
    :cond_b
    iget-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    sget-object v15, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->Incoming:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    if-ne v14, v15, :cond_4

    .line 481
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;->IncomingEx:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->e:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$CallStatus;

    goto/16 :goto_2

    .line 484
    :cond_c
    iget-wide v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->lastTime:J

    invoke-static {v14, v15}, Leyr;->e(J)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->f:Ljava/lang/String;

    goto/16 :goto_2

    .line 490
    :cond_d
    const/4 v14, 0x1

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v14, v15, :cond_e

    iget v14, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-nez v14, :cond_f

    .line 492
    :cond_e
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    goto/16 :goto_3

    .line 493
    :cond_f
    const/4 v14, 0x5

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-eq v14, v15, :cond_10

    const/4 v14, 0x4

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v14, v15, :cond_11

    .line 495
    :cond_10
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->VideoCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    goto/16 :goto_3

    .line 496
    :cond_11
    const/4 v14, 0x6

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v14, v15, :cond_12

    .line 497
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->BizCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    goto/16 :goto_3

    .line 498
    :cond_12
    const/4 v14, 0x7

    iget v15, v6, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v14, v15, :cond_13

    .line 499
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PhoneCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    goto/16 :goto_3

    .line 501
    :cond_13
    sget-object v14, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;->PstnCall:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    iput-object v14, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->g:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$RecordType;

    goto/16 :goto_3

    .line 4062
    :cond_14
    invoke-static {v14, v15}, Lcog;->g(J)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_4

    .line 514
    .restart local v9    # "mapKey":Ljava/lang/String;
    :cond_15
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 515
    .restart local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    invoke-interface {v7, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 522
    .end local v6    # "item":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .end local v8    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    .end local v9    # "mapKey":Ljava/lang/String;
    .end local v11    # "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    :cond_16
    const/4 v12, 0x0

    .line 523
    .local v12, "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 525
    new-instance v10, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-direct {v10, v13}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 526
    .local v10, "mapList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;>;>;"
    new-instance v13, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$2;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-static {v10, v13}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 544
    new-instance v12, Ljava/util/ArrayList;

    .end local v12    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 546
    .restart local v12    # "resultList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_17
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 547
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 548
    .local v3, "detailObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;>;"
    if-eqz v3, :cond_17

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_17

    .line 552
    new-instance v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    sget-object v13, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoHeader:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-direct {v11, v13}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;)V

    .line 553
    .restart local v11    # "object":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    const/4 v13, 0x0

    invoke-interface {v3, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    iget-wide v0, v13, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    iput-wide v0, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    .line 554
    iget-wide v0, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->d:J

    move-wide/from16 v16, v0

    .line 4424
    invoke-static/range {v16 .. v17}, Leyr;->a(J)Ljava/lang/String;

    move-result-object v13

    .line 554
    iput-object v13, v11, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;->b:Ljava/lang/String;

    .line 555
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 557
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_18
    :goto_7
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_19

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    .line 558
    .local v2, "detailObj":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    if-eqz v2, :cond_18

    .line 561
    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 564
    .end local v2    # "detailObj":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    :cond_19
    new-instance v5, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;

    sget-object v13, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;->InfoFooter:Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;

    invoke-direct {v5, v13}, Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;-><init>(Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject$DetailInfoItemType;)V

    .line 565
    .local v5, "footer":Lcom/alibaba/android/teleconf/data/TeleConfRecordDetailObject;
    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6
.end method

.method private static a(JLjava/util/List;)V
    .locals 6
    .param p0, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p2, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    const-wide/16 v4, 0x0

    cmp-long v3, p0, v4

    if-lez v3, :cond_0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_1

    .line 858
    :cond_0
    :goto_0
    return-void

    .line 843
    :cond_1
    const/4 v0, 0x0

    .line 844
    .local v0, "keyObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 845
    .local v1, "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v1, :cond_2

    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, p0, v4

    if-nez v4, :cond_2

    .line 846
    move-object v0, v1

    goto :goto_1

    .line 850
    .end local v1    # "profileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v2, "resList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;>;"
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 853
    invoke-interface {p2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 854
    invoke-interface {v2, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 856
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 857
    invoke-interface {p2, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 9
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    const/4 v8, 0x1

    .line 82
    .line 5233
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5268
    :cond_0
    :goto_0
    return-void

    .line 5236
    :cond_1
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Goto free call "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5237
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5238
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .line 5239
    if-eqz v0, :cond_2

    .line 5243
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-eqz v3, :cond_2

    .line 5244
    invoke-static {v0}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 5247
    :cond_3
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5248
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v8, :cond_7

    .line 5249
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 5250
    if-eqz v0, :cond_0

    .line 5251
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    if-eqz v1, :cond_5

    .line 5252
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->u:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 5253
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->u:Ljava/lang/String;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    sget-object v6, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lewn;->a(Landroid/app/Activity;Ljava/lang/String;JLcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto/16 :goto_0

    .line 5255
    :cond_4
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "phone_calllist_vip_servicecall_quite_org_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 5256
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    const-string/jumbo v2, "Invalid corp id when vip call"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5257
    invoke-static {p0}, Leyw;->b(Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 5260
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 5261
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-static {v1}, Leyv;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5262
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 5263
    iput v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->source:I

    .line 5265
    :cond_6
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v1

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v1, p0, v0, v2}, Lewn;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto/16 :goto_0

    .line 5269
    :cond_7
    invoke-static {}, Lewn;->a()Lewn;

    move-result-object v0

    sget-object v2, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v0, p0, v1, v2}, Lewn;->a(Landroid/app/Activity;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;J)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 82
    .line 7079
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 7082
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Goto detail "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7083
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;J)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;JLjava/util/List;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;

    .prologue
    .line 82
    invoke-static {p1, p2, p3}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(JLjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 82
    .line 8744
    if-eqz p1, :cond_0

    .line 8745
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 8746
    if-eqz v0, :cond_0

    .line 8747
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$6;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Ljava/lang/String;)V
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    .line 10583
    if-eqz p1, :cond_3

    .line 10584
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 10585
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSystemCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 10586
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 11574
    invoke-static {p2, v0}, Leyv;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 11575
    if-eqz v1, :cond_2

    .line 11576
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    invoke-static {v0}, Leyv;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10586
    :cond_1
    :goto_0
    return-void

    .line 11578
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 10587
    :cond_3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10588
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)V
    .locals 7
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v6, 0x0

    .line 82
    .line 7864
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    if-nez v0, :cond_1

    .line 7865
    :cond_0
    :goto_0
    return-void

    .line 7868
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 7869
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/Message;

    .line 7870
    if-eqz v0, :cond_2

    .line 7874
    new-instance v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-direct {v3, v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;-><init>(Lcom/alibaba/wukong/im/Message;)V

    .line 7875
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 7877
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    iget-object v5, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->recordKey:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7878
    invoke-virtual {v3}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7879
    iget-boolean v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    iput-boolean v0, v3, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSelfCanVisitExternal:Z

    .line 7881
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 7885
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 7889
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 7890
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7891
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    .line 7893
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    .line 7894
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 7895
    const-string/jumbo v0, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Update old "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ", new "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7898
    :cond_6
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$8;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 7909
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 7910
    if-eqz v0, :cond_0

    .line 7912
    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    iget-wide v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 7913
    iget-wide v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callerId:J

    iput-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    .line 7914
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 7916
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    invoke-static {v0, v1, v2}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(JLjava/util/List;)V

    .line 7918
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$9;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method

.method private a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V
    .locals 4
    .param p1, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 347
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isBizCall()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isExternal()Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 349
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isShowWriteVisitRecord()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 351
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->l:Landroid/widget/TextView;

    sget v2, Leuj$l;->dt_contact_profile_externalcontact_follower_recored:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 352
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$18;

    invoke-direct {v2, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$18;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isShowAddExternalContact()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->l:Landroid/widget/TextView;

    sget v2, Leuj$l;->dt_add_to_ext_contact:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 363
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 364
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$19;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$19;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    :cond_2
    :goto_0
    return-void

    .line 374
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 375
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # J

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    return-wide p1
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    return-object p1
.end method

.method private b()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 666
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 667
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 668
    .local v0, "confItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetNicks:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 674
    .end local v0    # "confItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    .line 6019
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    if-nez v0, :cond_1

    .line 6021
    :cond_0
    :goto_0
    return-void

    .line 6023
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6024
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->z:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    if-eqz v1, :cond_2

    .line 6025
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$11;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-static {v1}, Lewj;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v1

    .line 6040
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6042
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    const/4 v2, 0x0

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$13;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v1, v2, v3}, Lewj;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Landroid/content/DialogInterface$OnClickListener;)Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    move-result-object v1

    .line 6061
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6063
    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    sget v2, Leuj$l;->icon_copy:I

    sget v3, Leuj$l;->and_copy_to_clipboard:I

    invoke-direct {v1, v2, v3}, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;-><init>(II)V

    .line 6065
    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$14;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$14;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    .line 6125
    iput-object v2, v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->h:Landroid/content/DialogInterface$OnClickListener;

    .line 6073
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6074
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Leuj$l;->dt_conf_callselect_btn_make_call:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6075
    iget-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    sget-object v3, Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;->CALL_LOG_DETAIL:Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;

    invoke-virtual {v2, v1, v0, v3}, Lewj;->a(Ljava/lang/String;Ljava/util/List;Lcom/alibaba/dingtalk/telebase/models/TelQuickStartSource;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)V
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    .prologue
    .line 82
    .line 9633
    if-nez p1, :cond_1

    .line 9634
    :cond_0
    :goto_0
    return-void

    .line 9637
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    .line 9638
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9639
    invoke-static {p1}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v1

    .line 9640
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 9641
    :goto_1
    invoke-static {}, Lewl;->a()Lewl;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;

    invoke-direct {v5, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$4;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual/range {v0 .. v5}, Lewl;->a(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;Ljava/lang/String;Ljava/lang/String;ZLewl$c;)V

    goto :goto_0

    .line 9640
    :cond_2
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->workMobile:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Leut;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->j:Leut;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    return-object p1
.end method

.method private c()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 965
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    .line 966
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    .line 967
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    if-eqz v1, :cond_2

    .line 969
    :cond_0
    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    .line 1016
    :cond_1
    :goto_0
    return-void

    .line 972
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 973
    .local v0, "recordItem":Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    .line 5109
    invoke-static {v1, v10, v11}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v8

    .line 974
    .local v8, "uid":J
    cmp-long v1, v8, v10

    if-gtz v1, :cond_3

    .line 975
    const-string/jumbo v1, "tele_conf"

    sget-object v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    const-string/jumbo v3, "Invalid uid"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    invoke-direct {p0, v6}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Lcom/alibaba/android/teleconf/data/ConfRecordItem;)V

    goto :goto_0

    .line 980
    :cond_3
    invoke-static {v6}, Lcms;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 981
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 982
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isToday()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 983
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgIdValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 984
    move-wide v4, v8

    .line 985
    .local v4, "destUid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    new-instance v6, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;

    invoke-direct {v6, p0, v0, v4, v5}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$10;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Lcom/alibaba/android/teleconf/data/ConfRecordItem;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(JJLcma;)V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->s:J

    return-wide v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->x:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic n(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/android/teleconf/widget/UnFoldGridView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    return-object v0
.end method

.method static synthetic o(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic p(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    return-object v0
.end method

.method static synthetic q(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Leus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n:Leus;

    return-object v0
.end method

.method static synthetic r(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->h:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic t(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    const/4 v1, 0x0

    .line 82
    .line 11593
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 11594
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 11595
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 11596
    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    aget-object v3, v3, v0

    .line 11597
    invoke-static {v3}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 11598
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11595
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11601
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 11603
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 11604
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b()V

    .line 11605
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    new-instance v2, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$3;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v3, v0, v1, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(JLcma;)V

    .line 11627
    :cond_1
    :goto_1
    return-void

    .line 11677
    :cond_2
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    const-string/jumbo v0, "EVENTBUTLER"

    .line 11678
    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$5;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$5;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    const-class v4, Lcma;

    invoke-interface {v0, v3, v4, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 11677
    invoke-virtual {v1, v2, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/util/List;Lcma;)V

    goto :goto_1

    .line 11628
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b()V

    goto :goto_1
.end method

.method static synthetic u(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c()V

    return-void
.end method

.method static synthetic v(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->z:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    return-object v0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 158
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onAttachedToWindow()V

    .line 163
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    const/4 v2, 0x0

    .line 145
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 146
    sget v0, Leuj$j;->activity_teleconf_record_detail:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->setContentView(I)V

    .line 147
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Leuj$l;->title_call_details:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 2190
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2191
    const-string/jumbo v0, "conversation_id"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->p:Ljava/lang/String;

    .line 2192
    const-string/jumbo v0, "conf_records_item_list"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    .line 2193
    const-string/jumbo v0, "conf_call_biz_call_info"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->z:Lcom/alibaba/dingtalk/telebase/models/TelBizNumInfo;

    .line 2195
    const-string/jumbo v0, "friend_new_request_ids"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2197
    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    .line 2199
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 2200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->v:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2201
    if-eqz v0, :cond_4

    .line 2202
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    if-nez v1, :cond_2

    .line 2203
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 2204
    const/4 v1, 0x4

    iget v3, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->callType:I

    if-ne v1, v3, :cond_6

    .line 2205
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 2206
    if-eqz v3, :cond_2

    array-length v1, v3

    if-lez v1, :cond_2

    move v1, v2

    .line 2207
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 2208
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 2209
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->c()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_5

    .line 2210
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    if-nez v4, :cond_1

    .line 2211
    new-array v4, v10, [Ljava/lang/String;

    iput-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    .line 2213
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    aget-object v1, v3, v1

    aput-object v1, v4, v2

    .line 2224
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 2225
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2226
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isSingleUserCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2227
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    .line 2229
    :cond_3
    iget-boolean v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isYourVIP:Z

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    .line 2230
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    if-eqz v1, :cond_4

    .line 2231
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->getOrgCorpId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->u:Ljava/lang/String;

    .line 2238
    :cond_4
    sget v0, Leuj$i;->history_records_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m:Landroid/widget/ListView;

    .line 2239
    sget v0, Leuj$i;->ll_loading:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->h:Landroid/widget/LinearLayout;

    .line 2241
    sget v0, Leuj$i;->tv_bottom_conf_action:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->l:Landroid/widget/TextView;

    .line 2242
    sget v0, Leuj$i;->bottom_conf_action_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->k:Landroid/view/View;

    .line 2245
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_record_detail_header:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2246
    sget v0, Leuj$i;->layout_multi_user_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 2247
    sget v0, Leuj$i;->layout_single_user_number_info:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    .line 2248
    sget v0, Leuj$i;->user_number:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g:Landroid/widget/TextView;

    .line 2249
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g:Landroid/widget/TextView;

    new-instance v4, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$12;

    invoke-direct {v4, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$12;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2257
    sget v0, Leuj$i;->user_avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 2258
    sget v0, Leuj$i;->external_contact_icon:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c:Landroid/widget/ImageView;

    .line 2259
    sget v0, Leuj$i;->user_nick:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->d:Landroid/widget/TextView;

    .line 2260
    sget v0, Leuj$i;->user_title:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->e:Landroid/widget/TextView;

    .line 2262
    sget v0, Leuj$i;->conf_action_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->C:Landroid/view/View;

    .line 2263
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->C:Landroid/view/View;

    iget-object v4, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2264
    sget v0, Leuj$i;->tv_conf_action:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->D:Landroid/widget/TextView;

    .line 2266
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 2267
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    array-length v0, v0

    if-le v0, v10, :cond_7

    .line 2269
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->D:Landroid/widget/TextView;

    sget v4, Leuj$l;->dt_conference_callcenter_startconference:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 2270
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2271
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2273
    sget v0, Leuj$i;->grid_users:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    .line 2274
    new-instance v0, Leut;

    invoke-direct {v0, p0}, Leut;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->j:Leut;

    .line 2275
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->j:Leut;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2277
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->i:Lcom/alibaba/android/teleconf/widget/UnFoldGridView;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$15;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$15;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/teleconf/widget/UnFoldGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2290
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$16;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$16;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2331
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v0, v1, v9, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2333
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Leuj$j;->layout_conf_record_detail_header_item:I

    invoke-virtual {v0, v1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2334
    sget v1, Leuj$i;->header_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 2335
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2336
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v9, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 2338
    new-instance v0, Leus;

    invoke-direct {v0, p0}, Leus;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n:Leus;

    .line 2339
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->m:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n:Leus;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2341
    new-instance v0, Lewj;

    invoke-direct {v0, p0}, Lewj;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    .line 2343
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->c()V

    .line 2381
    const-string/jumbo v0, "EVENTBUTLER"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/eventbus/EventButler;

    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$20;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    const-class v2, Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1, v2, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageListener;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o:Lcom/alibaba/wukong/im/MessageListener;

    .line 2414
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->addMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 2808
    sget-object v0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    .line 2809
    new-instance v1, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$7;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 154
    return-void

    .line 2207
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2219
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->q:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2302
    :cond_7
    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2304
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 2305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2306
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2308
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity$17;-><init>(Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 2322
    :cond_9
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->C:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2324
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->t:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 2325
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2326
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->g:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->y:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2328
    :cond_a
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->f:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o:Lcom/alibaba/wukong/im/MessageListener;

    if-eqz v0, :cond_0

    .line 173
    const-class v0, Lcom/alibaba/wukong/im/MessageService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/MessageService;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o:Lcom/alibaba/wukong/im/MessageListener;

    invoke-interface {v0, v1}, Lcom/alibaba/wukong/im/MessageService;->removeMessageListener(Lcom/alibaba/wukong/im/MessageListener;)V

    .line 174
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->o:Lcom/alibaba/wukong/im/MessageListener;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n:Leus;

    if-eqz v0, :cond_1

    .line 177
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->n:Leus;

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 180
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->w:Ljava/util/List;

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    if-eqz v0, :cond_3

    .line 183
    iget-object v0, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    invoke-virtual {v0}, Lewj;->a()V

    .line 184
    iput-object v2, p0, Lcom/alibaba/android/teleconf/activities/TeleConfRecordDetailActivity;->A:Lewj;

    .line 186
    :cond_3
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 187
    return-void
.end method
