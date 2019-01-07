.class public final Lcom/alibaba/android/user/contact/utils/LocalContactHelper;
.super Ljava/lang/Object;
.source "LocalContactHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/utils/LocalContactHelper$LocalContactSyncThread;
    }
.end annotation


# static fields
.field public static a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    sput-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->b:[Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    sput-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    const-string/jumbo v1, "DingTalk"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    const-string/jumbo v1, "\u9489\u9489"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    const-string/jumbo v1, "\u91d8\u91d8"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "_id"

    aput-object v1, v0, v2

    const-string/jumbo v1, "display_name"

    aput-object v1, v0, v3

    const-string/jumbo v1, "data1"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string/jumbo v2, "contact_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 400
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->d:I

    return v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "phoneNumber"    # Ljava/lang/String;

    .prologue
    const/16 v12, 0x39

    const/16 v11, 0x30

    const/16 v10, 0x2a

    const/16 v9, 0x23

    .line 429
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 430
    const-string/jumbo v7, ""

    .line 474
    :goto_0
    return-object v7

    .line 432
    :cond_0
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 433
    .local v1, "countryCode":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    new-instance v6, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 434
    .local v6, "mobile":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 435
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "length":I
    const/4 v2, 0x0

    .line 439
    .local v2, "index":I
    const/4 v3, 0x0

    .line 440
    .local v3, "isHasCountryCode":Z
    const-string/jumbo v7, "+"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 441
    const/4 v2, 0x1

    .line 442
    const/4 v3, 0x1

    .line 449
    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    .line 450
    add-int/lit8 v7, v2, 0x7

    add-int/lit8 v5, v7, 0x1

    .line 451
    .local v5, "max_cc_location":I
    :goto_2
    if-ge v2, v5, :cond_5

    if-ge v2, v4, :cond_5

    .line 452
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 453
    .local v0, "c":C
    const-string/jumbo v7, "86"

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 455
    if-lt v0, v11, :cond_2

    if-le v0, v12, :cond_3

    :cond_2
    if-eq v0, v9, :cond_3

    if-ne v0, v10, :cond_5

    .line 457
    :cond_3
    invoke-virtual {v1, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 451
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 444
    .end local v0    # "c":C
    .end local v5    # "max_cc_location":I
    :cond_4
    const-string/jumbo v7, "00"

    invoke-virtual {p0, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 445
    const/4 v2, 0x2

    .line 446
    const/4 v3, 0x1

    goto :goto_1

    .line 464
    :cond_5
    :goto_3
    if-ge v2, v4, :cond_9

    .line 465
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 466
    .restart local v0    # "c":C
    if-lt v0, v11, :cond_6

    if-le v0, v12, :cond_7

    :cond_6
    if-eq v0, v9, :cond_7

    if-ne v0, v10, :cond_8

    .line 468
    :cond_7
    invoke-virtual {v6, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(C)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 464
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 474
    .end local v0    # "c":C
    .end local v2    # "index":I
    .end local v3    # "isHasCountryCode":Z
    .end local v4    # "length":I
    :cond_9
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_a
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "+"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public static a(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 356
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;J)Ljava/util/List;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    if-nez p0, :cond_1

    .line 95
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 182
    :cond_0
    :goto_0
    return-object v12

    .line 97
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 98
    .local v2, "resolver":Landroid/content/ContentResolver;
    if-nez v2, :cond_2

    .line 99
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 101
    :cond_2
    const/4 v12, 0x0

    .line 102
    .local v12, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/16 v16, 0x0

    .line 104
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "sort_key"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 107
    if-eqz v16, :cond_a

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_a

    .line 109
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->d()V

    .line 110
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v22

    .line 111
    .local v22, "total":I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v15

    .line 112
    .local v15, "count":I
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v15}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .local v13, "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :try_start_1
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v11, "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v10, "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v14, "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :goto_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 120
    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "cid":Ljava/lang/String;
    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 122
    .local v17, "name":Ljava/lang/String;
    const/4 v3, 0x2

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 123
    .local v20, "phoneNumber":Ljava/lang/String;
    const/4 v3, 0x3

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 125
    .local v9, "contactId":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    add-int/lit8 v22, v22, -0x1

    .line 127
    goto :goto_1

    .line 130
    :cond_3
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 131
    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v17

    .line 134
    :cond_4
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 135
    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    .line 138
    :cond_5
    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 139
    add-int/lit8 v22, v22, -0x1

    .line 140
    goto :goto_1

    .line 143
    :cond_6
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v17, v3, v4

    const/4 v4, 0x1

    aput-object v20, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 144
    .local v18, "namePhone":Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 145
    add-int/lit8 v22, v22, -0x1

    .line 146
    goto :goto_1

    .line 149
    :cond_7
    move-object/from16 v0, v18

    invoke-interface {v11, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    new-instance v19, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct/range {v19 .. v19}, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;-><init>()V

    .line 152
    .local v19, "phoneContact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    move-object/from16 v0, v19

    iput-object v8, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    .line 153
    move-object/from16 v0, v17

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 154
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 156
    invoke-static/range {v20 .. v20}, Lot;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    .line 157
    invoke-static/range {v17 .. v17}, Lcpt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 158
    const-string/jumbo v3, "none"

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 159
    const-string/jumbo v3, "N"

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    .line 160
    const/4 v3, 0x0

    move-object/from16 v0, v19

    iput v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 161
    invoke-static/range {v20 .. v20}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 162
    move-object/from16 v0, v19

    invoke-static {v10, v14, v2, v9, v0}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 163
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    .line 170
    .end local v8    # "cid":Ljava/lang/String;
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v17    # "name":Ljava/lang/String;
    .end local v18    # "namePhone":Ljava/lang/String;
    .end local v19    # "phoneContact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v20    # "phoneNumber":Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v12, v13

    .end local v13    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v15    # "count":I
    .end local v22    # "total":I
    .restart local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :goto_2
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has_copy_local_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 171
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    if-eqz v16, :cond_8

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_8

    .line 174
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v12, v3

    goto/16 :goto_0

    .line 165
    .end local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v13    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v14    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v15    # "count":I
    .restart local v22    # "total":I
    :cond_9
    :try_start_3
    invoke-static {v10, v14, v2}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;)V

    .line 166
    sput v22, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v12, v13

    .line 173
    .end local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "contactKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v13    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v14    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v15    # "count":I
    .end local v22    # "total":I
    .restart local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_a
    if-eqz v16, :cond_b

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_b

    .line 174
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 177
    :cond_b
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->b()Lfmr;

    move-result-object v3

    .line 178
    invoke-interface {v3, v12}, Lfmr;->c(Ljava/util/List;)I

    move-result v21

    .line 179
    .local v21, "result":I
    if-lez v21, :cond_0

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, p1

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has_copy_local_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 173
    .end local v21    # "result":I
    :catchall_0
    move-exception v3

    :goto_3
    if-eqz v16, :cond_c

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->isClosed()Z

    move-result v4

    if-nez v4, :cond_c

    .line 174
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 173
    .end local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v13    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v15    # "count":I
    .restart local v22    # "total":I
    :catchall_1
    move-exception v3

    move-object v12, v13

    .end local v13    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v12    # "contactList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    goto :goto_3

    .line 170
    .end local v15    # "count":I
    .end local v22    # "total":I
    :catch_1
    move-exception v3

    goto/16 :goto_2
.end method

.method private static a(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/List;
    .locals 24
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "isNeedUpload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "oldMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 190
    .local v2, "resolver":Landroid/content/ContentResolver;
    new-instance v12, Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-direct {v12, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 192
    .local v12, "contactList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/4 v15, 0x0

    .line 194
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->c:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 195
    if-eqz v15, :cond_14

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_14

    .line 197
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->d()V

    .line 198
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v23

    .line 199
    .local v23, "total":I
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 201
    .local v22, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v11, "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v14, "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 204
    .local v10, "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 205
    .local v13, "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 206
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;-><init>()V

    .line 207
    .local v8, "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    const/4 v3, 0x0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    .line 208
    const/4 v3, 0x1

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 209
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 210
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 211
    .local v9, "contactId":Ljava/lang/String;
    invoke-static {v10, v13, v2, v9, v8}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V

    .line 212
    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 295
    .end local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v14    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "total":I
    :catch_0
    move-exception v16

    .line 296
    .local v16, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "getIncrementContacts error:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    if-eqz v15, :cond_0

    .line 299
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 302
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_1
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v3

    invoke-virtual {v3}, Lfmz;->b()Lfmr;

    move-result-object v3

    invoke-interface {v3, v12}, Lfmr;->c(Ljava/util/List;)I

    move-result v21

    .line 303
    .local v21, "result":I
    if-lez v21, :cond_1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->b()Lchy;

    move-result-object v3

    invoke-virtual {v3}, Lchy;->getCurrentUid()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 304
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " has_copy_local_contact"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 306
    :cond_1
    return-object v12

    .line 215
    .end local v21    # "result":I
    .restart local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v14    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "total":I
    :cond_2
    :try_start_2
    invoke-static {v10, v13, v2}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;)V

    .line 217
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v18

    .line 218
    .local v18, "l":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 219
    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 220
    .local v19, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    move/from16 v0, v17

    invoke-interface {v11, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 222
    .restart local v9    # "contactId":Ljava/lang/String;
    if-eqz v19, :cond_3

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 223
    :cond_3
    add-int/lit8 v23, v23, -0x1

    .line 218
    :cond_4
    :goto_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 227
    :cond_5
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 228
    add-int/lit8 v23, v23, -0x1

    .line 229
    goto :goto_3

    .line 232
    :cond_6
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 233
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 236
    :cond_7
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 237
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    const-string/jumbo v4, " "

    const-string/jumbo v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v19

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 240
    :cond_8
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "_"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    move-object/from16 v0, v19

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 242
    .local v20, "namePhone":Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 243
    add-int/lit8 v23, v23, -0x1

    .line 244
    goto :goto_3

    .line 246
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 249
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 250
    .restart local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-nez v8, :cond_b

    .line 251
    new-instance v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .end local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    invoke-direct {v8}, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;-><init>()V

    .line 252
    .restart local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    .line 253
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 254
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 255
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lot;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    .line 256
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v3}, Lcpt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 257
    const-wide/16 v4, 0x0

    iput-wide v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 258
    const-string/jumbo v3, "none"

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 259
    const-string/jumbo v3, "N"

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    .line 260
    const/4 v3, 0x0

    iput v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 261
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 262
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    .line 263
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    .line 264
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_3

    .line 298
    .end local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v14    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v17    # "i":I
    .end local v18    # "l":I
    .end local v19    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v20    # "namePhone":Ljava/lang/String;
    .end local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "total":I
    :catchall_0
    move-exception v3

    if-eqz v15, :cond_a

    .line 299
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_a
    throw v3

    .line 265
    .restart local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .restart local v9    # "contactId":Ljava/lang/String;
    .restart local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v11    # "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v13    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v14    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .restart local v17    # "i":I
    .restart local v18    # "l":I
    .restart local v19    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .restart local v20    # "namePhone":Ljava/lang/String;
    .restart local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v23    # "total":I
    :cond_b
    :try_start_3
    iget-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 266
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 268
    :cond_c
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    .line 269
    iget-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v19

    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 271
    const-wide/16 v4, 0x0

    iput-wide v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->uid:J

    .line 272
    const-string/jumbo v3, "none"

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->relation:Ljava/lang/String;

    .line 274
    :cond_d
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    .line 275
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lot;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneCode:Ljava/lang/String;

    .line 276
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v3}, Lcpt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 277
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 278
    const/4 v3, 0x0

    iput v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->tag:I

    .line 279
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 280
    :cond_e
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    iget-object v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    iget-object v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    .line 281
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 282
    :cond_f
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    .line 283
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;

    .line 284
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 285
    :cond_10
    if-eqz p2, :cond_12

    iget-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "N"

    iget-object v4, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->isUpload:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 286
    :cond_11
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 287
    :cond_12
    if-nez p2, :cond_4

    iget-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 288
    move-object/from16 v0, v19

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 289
    invoke-interface {v12, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 292
    .end local v8    # "contact":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v9    # "contactId":Ljava/lang/String;
    .end local v19    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v20    # "namePhone":Ljava/lang/String;
    :cond_13
    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->clear()V

    .line 293
    sput v23, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->d:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    .end local v10    # "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "contactIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v14    # "contacts":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v17    # "i":I
    .end local v18    # "l":I
    .end local v22    # "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v23    # "total":I
    :cond_14
    if-eqz v15, :cond_0

    .line 299
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public static a(Landroid/content/Context;Z)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isNeedUpload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    .line 374
    .local v0, "changeList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v6

    invoke-virtual {v6}, Lfmz;->b()Lfmr;

    move-result-object v6

    invoke-interface {v6}, Lfmr;->a()Ljava/util/List;

    move-result-object v5

    .line 375
    .local v5, "oldObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v5, :cond_3

    .line 376
    new-instance v3, Ljava/util/HashMap;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-direct {v3, v6}, Ljava/util/HashMap;-><init>(I)V

    .line 377
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 378
    .local v2, "con":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    iget-object v7, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    invoke-interface {v3, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 380
    .end local v2    # "con":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_0
    invoke-static {p0, v3, p1}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Landroid/content/Context;Ljava/util/Map;Z)Ljava/util/List;

    move-result-object v0

    .line 381
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 383
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 384
    .local v1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 385
    .local v4, "model":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v4, :cond_1

    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 386
    iget-object v7, v4, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->cid:Ljava/lang/String;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 389
    .end local v4    # "model":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 390
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v6

    invoke-virtual {v6}, Lfmz;->b()Lfmr;

    move-result-object v7

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    invoke-interface {v7, v6}, Lfmr;->a([Ljava/lang/String;)I

    .line 394
    .end local v1    # "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_3
    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 360
    .local p0, "userIdentityObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    const-string/jumbo v0, "LocalContactHelper"

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/utils/LocalContactHelper$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper$1;-><init>(Ljava/util/List;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 366
    return-void
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;)V
    .locals 8
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;",
            "Landroid/content/ContentResolver;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 77
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 80
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 1311
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_2

    array-length v3, v0

    if-gtz v3, :cond_3

    .line 84
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 1314
    :cond_3
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1315
    array-length v3, v0

    .line 1316
    :goto_2
    if-ge v2, v3, :cond_5

    .line 1317
    aget-object v4, v0, v2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    aget-object v4, v1, v2

    if-eqz v4, :cond_4

    .line 1318
    aget-object v4, v0, v2

    aget-object v5, v1, v2

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1323
    :cond_5
    :try_start_0
    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "contact_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "data1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data4"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "contact_id in("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, ","

    .line 1329
    invoke-static {v4, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, ") AND mimetype"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v3, "= ?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string/jumbo v5, "vnd.android.cursor.item/organization"

    aput-object v5, v4, v0

    const/4 v5, 0x0

    move-object v0, p2

    .line 1323
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1332
    if-eqz v1, :cond_7

    .line 1333
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 1334
    :cond_6
    :goto_3
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1335
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 1336
    if-eqz v0, :cond_6

    .line 1337
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->company:Ljava/lang/String;

    .line 1338
    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->jobTitle:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    .line 1343
    :catch_0
    move-exception v0

    .line 1344
    :goto_4
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1346
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1347
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1346
    :cond_7
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1347
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 1346
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v6, :cond_8

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_8

    .line 1347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v0

    .line 1346
    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_5

    .line 1343
    :catch_1
    move-exception v0

    move-object v1, v6

    goto :goto_4
.end method

.method private static a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;)V
    .locals 2
    .param p2, "resolver"    # Landroid/content/ContentResolver;
    .param p3, "contactId"    # Ljava/lang/String;
    .param p4, "contactObject"    # Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "contactIdMerger":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "contactMerger":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    .line 72
    invoke-static {p0, p1, p2}, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a(Ljava/util/List;Ljava/util/List;Landroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public static b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 503
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v0

    invoke-virtual {v0}, Lfmz;->b()Lfmr;

    move-result-object v0

    invoke-interface {v0}, Lfmr;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static c()I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 514
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 516
    const/4 v6, 0x0

    .line 518
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 528
    :goto_0
    if-eqz v6, :cond_0

    .line 530
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 532
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 537
    :goto_1
    return v0

    .line 521
    :catch_0
    move-exception v8

    .line 522
    .local v8, "se":Ljava/lang/SecurityException;
    invoke-virtual {v8}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 523
    const-string/jumbo v0, "local_contact"

    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v2, "getSystemContactsCount exception:"

    aput-object v2, v1, v9

    invoke-virtual {v8}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 524
    .end local v8    # "se":Ljava/lang/SecurityException;
    :catch_1
    move-exception v7

    .line 525
    .local v7, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v7}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 526
    const-string/jumbo v0, "local_contact"

    new-array v1, v11, [Ljava/lang/String;

    const-string/jumbo v2, "getSystemContactsCount exception:"

    aput-object v2, v1, v9

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 532
    .end local v7    # "npe":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_0
    move v0, v9

    .line 537
    goto :goto_1
.end method

.method private static d()V
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_need_system_contacts_read_statistics"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 508
    const-string/jumbo v0, "general_open_mobilecontact_click"

    invoke-static {v0}, Lfxo;->a(Ljava/lang/String;)V

    .line 509
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "pref_key_need_system_contacts_read_statistics"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 511
    :cond_0
    return-void
.end method
