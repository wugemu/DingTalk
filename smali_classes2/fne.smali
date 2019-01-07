.class public Lfne;
.super Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;
.source "LocalContactDataSourceImpl.java"

# interfaces
.implements Lfmr;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfne$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lfmr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfne;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource;-><init>()V

    .line 497
    return-void
.end method

.method static synthetic a(Lfne;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 33
    .line 1513
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v3

    .line 1514
    const-string/jumbo v0, "UPDATE "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1515
    invoke-virtual {v3, p0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1516
    const-string/jumbo v0, " SET "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1517
    const/4 v0, 0x1

    .line 1518
    array-length v4, p2

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, p2, v2

    .line 1519
    if-eqz v0, :cond_0

    move v0, v1

    .line 1524
    :goto_1
    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1525
    const-string/jumbo v5, "=?"

    invoke-virtual {v3, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1518
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1522
    :cond_0
    const-string/jumbo v6, ","

    invoke-virtual {v3, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 1527
    :cond_1
    const-string/jumbo v0, " WHERE "

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1528
    invoke-virtual {v3, p1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1529
    const-string/jumbo v0, "=?"

    invoke-virtual {v3, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 1530
    invoke-virtual {v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    return-object v0
.end method

.method private static a(Landroid/database/Cursor;)Ljava/util/List;
    .locals 8
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 184
    .local v3, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz p0, :cond_6

    .line 186
    :try_start_0
    new-instance v0, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v0}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 188
    .local v0, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 190
    .local v4, "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 191
    invoke-virtual {v0}, Lcom/alibaba/android/user/entry/LocalContactEntry;->reset()V

    .line 192
    invoke-virtual {v0, p0}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 194
    iget-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 195
    iget-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v6, " "

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 198
    :cond_1
    iget-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 199
    iget-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v5}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 202
    :cond_2
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v0, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "namephone":Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 207
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 209
    invoke-static {v0}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v2

    .line 210
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v2, :cond_0

    .line 214
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 215
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v5}, Lcpt;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->pinyin:Ljava/lang/String;

    .line 218
    :cond_3
    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    iget-object v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 221
    :cond_4
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 224
    .end local v0    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v1    # "namephone":Ljava/lang/String;
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v4    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v5

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v5

    .restart local v0    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .restart local v4    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 227
    .end local v0    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v4    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    return-object v3
.end method

.method static synthetic a(Lfne;Lcom/alibaba/android/user/entry/LocalContactEntry;)Z
    .locals 5
    .param p0, "x0"    # Lfne;
    .param p1, "x1"    # Lcom/alibaba/android/user/entry/LocalContactEntry;

    .prologue
    .line 33
    .line 2231
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_official_mobile_conference_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2233
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lezg$l;->dt_official_mobile_message_title:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2234
    const-string/jumbo v2, "DingTalk"

    .line 2235
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    sget v4, Lezg$l;->dt_official_mobile_ding_message_title:I

    invoke-virtual {v3, v4}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2239
    iget-object v4, p1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 2240
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    .line 33
    goto :goto_0
.end method

.method static synthetic b(Lfne;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic c(Lfne;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lfne;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method

.method static synthetic e(Lfne;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f(Lfne;)Lcom/alibaba/bee/DBManager;
    .locals 1
    .param p0, "x0"    # Lfne;

    .prologue
    .line 33
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    return-object v0
.end method


# virtual methods
.method public final a([Ljava/lang/String;)I
    .locals 14
    .param p1, "cids"    # [Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/16 v10, 0x1f4

    const/4 v9, 0x0

    .line 414
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    move v6, v9

    .line 438
    :cond_1
    :goto_0
    return v6

    .line 417
    :cond_2
    array-length v0, p1

    if-gt v0, v10, :cond_3

    .line 418
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "cid"

    aput-object v5, v4, v9

    const-string/jumbo v5, " in("

    aput-object v5, v4, v11

    const-string/jumbo v5, ","

    .line 419
    invoke-static {v5, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const-string/jumbo v5, ") "

    aput-object v5, v4, v13

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 418
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    goto :goto_0

    .line 422
    :cond_3
    const/4 v6, 0x0

    .line 423
    .local v6, "count":I
    const/4 v7, 0x0

    .line 424
    .local v7, "p":I
    :goto_1
    array-length v0, p1

    if-ge v7, v0, :cond_1

    .line 426
    array-length v0, p1

    sub-int/2addr v0, v7

    if-gt v0, v10, :cond_4

    .line 427
    array-length v0, p1

    sub-int/2addr v0, v7

    new-array v8, v0, [Ljava/lang/String;

    .line 428
    .local v8, "subCids":[Ljava/lang/String;
    array-length v0, v8

    invoke-static {p1, v7, v8, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    :goto_2
    array-length v0, v8

    add-int/2addr v7, v0

    .line 434
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const-string/jumbo v5, "cid"

    aput-object v5, v4, v9

    const-string/jumbo v5, " in("

    aput-object v5, v4, v11

    const-string/jumbo v5, ","

    .line 435
    invoke-static {v5, v8}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const-string/jumbo v5, ") "

    aput-object v5, v4, v13

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 434
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    add-int/2addr v6, v0

    .line 437
    goto :goto_1

    .line 430
    .end local v8    # "subCids":[Ljava/lang/String;
    :cond_4
    new-array v8, v10, [Ljava/lang/String;

    .line 431
    .restart local v8    # "subCids":[Ljava/lang/String;
    invoke-static {p1, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2
.end method

.method public final a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 159
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pinyin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, " "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 160
    .local v7, "orderByString":Ljava/lang/String;
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    .line 161
    invoke-static {v4}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v8, v5

    .line 160
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 163
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {v9}, Lfne;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(J)Ljava/util/List;
    .locals 13
    .param p1, "uid"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfne$a;->e:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    .line 382
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 381
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 383
    .local v9, "cursor":Landroid/database/Cursor;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 385
    .local v12, "results":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz v9, :cond_5

    .line 387
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 388
    new-instance v10, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 389
    .local v10, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 391
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 392
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 395
    :cond_1
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 396
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 399
    :cond_2
    invoke-static {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v11

    .line 400
    .local v11, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v11, :cond_3

    iget-object v0, v11, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    iget-object v1, v11, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    :cond_3
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 406
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v11    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 409
    :cond_5
    return-object v12
.end method

.method public final a(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v10, 0x0

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-object v8

    .line 173
    :cond_0
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "pinyin"

    aput-object v1, v0, v10

    const-string/jumbo v1, " "

    aput-object v1, v0, v6

    sget-object v1, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 174
    .local v7, "orderByString":Ljava/lang/String;
    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "%"

    aput-object v1, v0, v10

    aput-object p1, v0, v6

    const-string/jumbo v1, "%"

    aput-object v1, v0, v2

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfne$a;->c:Ljava/lang/String;

    new-array v6, v6, [Ljava/lang/String;

    aput-object p1, v6, v10

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 178
    .local v9, "cursor":Landroid/database/Cursor;
    invoke-static {v9}, Lfne;->a(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v8

    goto :goto_0
.end method

.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/model/PhonebookObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 41
    .local p1, "phoneList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/model/PhonebookObject;>;"
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfne$1;

    invoke-direct {v2, p0, p1}, Lfne$1;-><init>(Lfne;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method public final b()I
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 535
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_official_mobile_conference_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 537
    .local v8, "dingtalkOfficialConference":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_official_mobile_message_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 538
    .local v9, "dingtalkOfficialMessage":Ljava/lang/String;
    const-string/jumbo v7, "DingTalk"

    .line 539
    .local v7, "dingtalkOfficial":Ljava/lang/String;
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Lezg$l;->dt_official_mobile_ding_message_title:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 542
    .local v6, "dingtalkDingMessage":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v10

    .line 543
    .local v10, "sb":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v0, "upper("

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 544
    const-string/jumbo v0, "name"

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 545
    const-string/jumbo v0, ") like ? "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 547
    const-string/jumbo v0, " or "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 548
    const-string/jumbo v0, "upper("

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 549
    const-string/jumbo v0, "name"

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 550
    const-string/jumbo v0, ") like ? "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 552
    const-string/jumbo v0, " or "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 553
    const-string/jumbo v0, "upper("

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 554
    const-string/jumbo v0, "name"

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 555
    const-string/jumbo v0, ") like ? "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 557
    const-string/jumbo v0, " or "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 558
    const-string/jumbo v0, "upper("

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 559
    const-string/jumbo v0, "name"

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 560
    const-string/jumbo v0, ") like ? "

    invoke-virtual {v10, v0}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 562
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    .line 563
    invoke-virtual {v10}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v8, v5, v11

    const/4 v11, 0x1

    aput-object v9, v5, v11

    const/4 v11, 0x2

    aput-object v7, v5, v11

    const/4 v11, 0x3

    aput-object v6, v5, v11

    .line 562
    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/bee/DBManager;->delete(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 11
    .param p1, "phoneNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 299
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-static {v4}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfne$a;->b:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 301
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_2

    .line 304
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 305
    new-instance v10, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 306
    .local v10, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 308
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 309
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 312
    :cond_0
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 316
    :cond_1
    invoke-static {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 319
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 322
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    :cond_2
    :goto_0
    return-object v7

    .line 319
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 79
    .local p1, "userList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfne$2;

    invoke-direct {v2, p0, p1}, Lfne$2;-><init>(Lfne;Ljava/util/List;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    goto :goto_0
.end method

.method public final c(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .local p1, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    const/4 v1, 0x0

    .line 116
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 119
    .local v0, "result":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v1, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfne$3;

    invoke-direct {v3, p0, p1, v0}, Lfne$3;-><init>(Lfne;Ljava/util/List;Ljava/util/concurrent/atomic/AtomicInteger;)V

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/bee/DBManager;->execInTransaction(Ljava/lang/String;Ljava/lang/Runnable;Lcom/alibaba/bee/SQLiteTransactionListener;)Z

    .line 153
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public final c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 14
    .param p1, "phoneNumber"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 328
    invoke-static {p1}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    :cond_0
    :goto_0
    return-object v5

    .line 333
    :cond_1
    const-string/jumbo v0, "pref_key_local_contacts_normalized"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 334
    invoke-virtual {p0, p1}, Lfne;->b(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v5

    goto :goto_0

    .line 337
    :cond_2
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    .line 338
    invoke-static {v4}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    .line 337
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 339
    .local v9, "cursor":Landroid/database/Cursor;
    if-eqz v9, :cond_0

    .line 343
    const/4 v13, 0x0

    .line 345
    .local v13, "result":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v11, "normalizedLocalContactObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_3
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    new-instance v10, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 349
    .local v10, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    invoke-virtual {v10, v9}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 351
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 352
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 355
    :cond_4
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 356
    iget-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v10, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 359
    :cond_5
    invoke-static {v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v12

    .line 360
    .local v12, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v12, :cond_3

    .line 363
    iget-object v0, v12, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 364
    move-object v13, v12

    .line 366
    :cond_6
    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 373
    .end local v10    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v11    # "normalizedLocalContactObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v12    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0

    .line 370
    .restart local v11    # "normalizedLocalContactObjectList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    :cond_7
    :try_start_1
    invoke-virtual {p0, v11}, Lfne;->c(Ljava/util/List;)I

    .line 371
    const-string/jumbo v0, "pref_key_local_contacts_normalized"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v13

    .line 376
    goto/16 :goto_0
.end method

.method public final d(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .locals 13
    .param p1, "cid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x0

    .line 444
    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v10

    .line 445
    .local v10, "dbName":Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 472
    :goto_0
    return-object v7

    .line 449
    :cond_0
    iget-object v0, p0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual {p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v3, "tb_local_contact"

    const-class v4, Lcom/alibaba/android/user/entry/LocalContactEntry;

    .line 450
    invoke-static {v4}, Lcom/alibaba/bee/DatabaseUtils;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lfne$a;->d:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v6, v8

    const-string/jumbo v8, "0,1"

    .line 449
    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 451
    .local v9, "cursor":Landroid/database/Cursor;
    const/4 v12, 0x0

    .line 452
    .local v12, "result":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v9, :cond_4

    .line 454
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    new-instance v11, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v11}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 456
    .local v11, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    invoke-virtual {v11, v9}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 458
    iget-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 459
    iget-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v1, " "

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 462
    :cond_1
    iget-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 463
    iget-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v0}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 466
    :cond_2
    invoke-static {v11}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    .line 469
    .end local v11    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    :cond_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v7, v12

    .line 472
    goto :goto_0

    .line 469
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public final d(Ljava/util/List;)Ljava/util/HashMap;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    .local p1, "phoneNumbers":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 245
    .local v16, "results":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    if-eqz p1, :cond_7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 247
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v15

    .line 248
    .local v15, "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    const-string/jumbo v1, "phonenumber"

    invoke-virtual {v15, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v1

    const-string/jumbo v2, " in ("

    invoke-virtual {v1, v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 249
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_1

    .line 250
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 251
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-eq v12, v1, :cond_0

    .line 252
    const-string/jumbo v1, ","

    invoke-virtual {v15, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 249
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 254
    :cond_0
    const-string/jumbo v1, ") "

    invoke-virtual {v15, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 257
    :cond_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "pinyin"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string/jumbo v3, " "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->ASC:Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/db/AbsDataSource$OrderBy;->keyValue()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 258
    .local v8, "orderByString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lfne;->c:Lcom/alibaba/bee/DBManager;

    invoke-virtual/range {p0 .. p0}, Lfne;->k()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/alibaba/android/user/entry/LocalContactEntry;

    const-string/jumbo v4, "tb_local_contact"

    const-class v5, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-static {v5}, Lcom/alibaba/android/user/entry/LocalContactEntry;->getColumnNames(Ljava/lang/Class;)[Ljava/lang/String;

    move-result-object v5

    .line 259
    invoke-virtual {v15}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 258
    invoke-virtual/range {v1 .. v9}, Lcom/alibaba/bee/DBManager;->query(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 260
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_7

    .line 262
    :try_start_0
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 264
    .local v17, "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 265
    new-instance v11, Lcom/alibaba/android/user/entry/LocalContactEntry;

    invoke-direct {v11}, Lcom/alibaba/android/user/entry/LocalContactEntry;-><init>()V

    .line 266
    .local v11, "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    invoke-virtual {v11, v10}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fillWithCursor(Landroid/database/Cursor;)V

    .line 268
    iget-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 269
    iget-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    const-string/jumbo v2, " "

    const-string/jumbo v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    .line 272
    :cond_3
    iget-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 273
    iget-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lfxg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    .line 276
    :cond_4
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, v11, Lcom/alibaba/android/user/entry/LocalContactEntry;->phoneNumber:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 277
    .local v13, "namephone":Ljava/lang/String;
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 281
    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 283
    invoke-static {v11}, Lcom/alibaba/android/user/entry/LocalContactEntry;->fromDBEntry(Lcom/alibaba/android/user/entry/LocalContactEntry;)Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    move-result-object v14

    .line 284
    .local v14, "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v14, :cond_5

    iget-object v1, v14, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/alibaba/android/user/contact/utils/LocalContactHelper;->a:Ljava/util/List;

    iget-object v2, v14, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->name:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    :cond_5
    iget-object v1, v14, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 290
    .end local v11    # "entry":Lcom/alibaba/android/user/entry/LocalContactEntry;
    .end local v13    # "namephone":Ljava/lang/String;
    .end local v14    # "object":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v17    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v17    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_6
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 294
    .end local v8    # "orderByString":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v12    # "i":I
    .end local v15    # "querySQL":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    .end local v17    # "uniKeys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_7
    return-object v16
.end method
