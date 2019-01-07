.class public final Laew;
.super Ljava/lang/Object;
.source "MailAtConversationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laew$a;
    }
.end annotation


# static fields
.field private static a:Laew;

.field private static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Laew;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static a(Ljava/lang/String;)Labi;
    .locals 4
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 251
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v2

    .line 262
    :goto_0
    return-object v1

    .line 255
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    .local v0, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v1, Labi;

    invoke-direct {v1}, Labi;-><init>()V

    .line 259
    .local v1, "reqModel":Labi;
    iput-object v2, v1, Labi;->a:Ljava/util/List;

    .line 260
    iput-object v0, v1, Labi;->b:Ljava/util/List;

    goto :goto_0
.end method

.method public static a()Laew;
    .locals 2

    .prologue
    .line 38
    sget-object v1, Laew;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 39
    :try_start_0
    sget-object v0, Laew;->a:Laew;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Laew;

    invoke-direct {v0}, Laew;-><init>()V

    sput-object v0, Laew;->a:Laew;

    .line 42
    :cond_0
    sget-object v0, Laew;->a:Laew;

    monitor-exit v1

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/List;)Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)",
            "Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;"
        }
    .end annotation

    .prologue
    .local p0, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v3, 0x0

    .line 139
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 163
    :goto_0
    return-object v2

    .line 143
    :cond_1
    new-instance v2, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    invoke-direct {v2}, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;-><init>()V

    .line 144
    .local v2, "extData":Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;
    new-instance v1, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 146
    .local v1, "atListStr":Lcom/alibaba/doraemon/performance/DDStringBuilder;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 147
    .local v0, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v0, :cond_2

    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 151
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 152
    const-string/jumbo v5, ","

    invoke-virtual {v1, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    goto :goto_1

    .line 155
    .end local v0    # "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_4

    .line 157
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 158
    invoke-virtual {v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->atList:Ljava/lang/String;

    goto :goto_0

    :cond_4
    move-object v2, v3

    .line 163
    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/util/List;I)Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "maxUsers"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;I)",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;"
        }
    .end annotation

    .prologue
    .local p1, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 50
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    :cond_0
    const/4 v0, 0x0

    .line 63
    :goto_0
    return-object v0

    .line 54
    :cond_1
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "dialog":Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;
    const-string/jumbo v1, ""

    .line 1218
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->c:Ljava/lang/String;

    .line 1226
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 57
    const/4 v4, 0x3

    .line 2070
    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2074
    new-instance v5, Lcom/alibaba/doraemon/performance/DDStringBuilder;

    invoke-direct {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;-><init>()V

    .line 2076
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v2, v3

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 2077
    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 2080
    if-ge v2, v4, :cond_7

    .line 2081
    iget-object v1, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->alias:Ljava/lang/String;

    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2082
    const-string/jumbo v1, ","

    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 2083
    add-int/lit8 v1, v2, 0x1

    :goto_2
    move v2, v1

    .line 2085
    goto :goto_1

    .line 2071
    :cond_3
    const-string/jumbo v1, ""

    .line 2239
    :goto_3
    iput-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 3230
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 3275
    iput-boolean v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 61
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0

    .line 2088
    :cond_4
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    .line 2089
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v5, v1}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->setLength(I)V

    .line 2092
    :cond_5
    invoke-virtual {v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2093
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v2, v4, :cond_6

    .line 2094
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    aput-object v1, v2, v3

    sget v1, Laxo$i;->dt_mail_more_contact:I

    new-array v4, v8, [Ljava/lang/Object;

    .line 2095
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 2094
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2098
    :cond_6
    sget v2, Laxo$i;->dt_mail_at_in_body:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v1, v4, v3

    invoke-virtual {p0, v2, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_7
    move v1, v2

    goto :goto_2
.end method

.method static synthetic a(Laew;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p0, "x0"    # Laew;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v2, 0x0

    .line 33
    .line 3319
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v2

    .line 3320
    :goto_0
    return-object v0

    .line 3323
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3324
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Labw;

    .line 3335
    if-eqz v0, :cond_3

    .line 3339
    iget-object v3, v0, Labw;->b:Ljava/lang/String;

    invoke-static {v3}, Lafh;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3340
    new-instance v3, Lcom/alibaba/alimei/sdk/model/AddressModel;

    iget-object v5, v0, Labw;->b:Ljava/lang/String;

    iget-object v0, v0, Labw;->a:Ljava/lang/String;

    invoke-direct {v3, v5, v0}, Lcom/alibaba/alimei/sdk/model/AddressModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    .line 3326
    :goto_2
    if-eqz v0, :cond_2

    .line 3327
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    move-object v0, v2

    .line 3342
    goto :goto_2

    :cond_4
    move-object v0, v1

    .line 33
    goto :goto_0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    .local p1, "toList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    :cond_0
    const/4 p0, 0x0

    .line 114
    .end local p0    # "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_1
    :goto_0
    return-object p0

    .line 109
    .restart local p0    # "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    :cond_2
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 113
    invoke-interface {p0, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public static a(Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/alimei/sdk/model/AddressModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    .local p0, "models":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    :cond_0
    const/4 v3, 0x0

    .line 135
    :cond_1
    return-object v3

    .line 122
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 123
    .local v3, "targets":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 124
    .local v0, "addessList":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;>;"
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 125
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/alimei/sdk/model/AddressModel;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 128
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/AddressModel;

    .line 129
    .local v1, "address":Lcom/alibaba/alimei/sdk/model/AddressModel;
    if-eqz v1, :cond_3

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/AddressModel;->address:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 132
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static b(Ljava/util/List;)Labi;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;",
            ">;)",
            "Labi;"
        }
    .end annotation

    .prologue
    .local p0, "atList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;>;"
    const/4 v4, 0x0

    .line 266
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_1

    .line 305
    :cond_0
    return-object v4

    .line 270
    :cond_1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v7, "uids":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 272
    .local v1, "cids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;

    .line 273
    .local v3, "obj":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    if-eqz v3, :cond_2

    .line 276
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getType()Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    move-result-object v2

    .line 277
    .local v2, "dataType":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->CONTACT:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v9, :cond_3

    .line 3310
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    if-eqz v9, :cond_7

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    instance-of v9, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    if-eqz v9, :cond_7

    .line 3311
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getData()Ljava/io/Serializable;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-object v6, v9

    .line 279
    .local v6, "uid":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :goto_1
    if-eqz v6, :cond_2

    .line 280
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 282
    .end local v6    # "uid":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_3
    sget-object v9, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;->GROUP_CONVERSATION:Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;

    if-ne v2, v9, :cond_2

    .line 283
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;->getId()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "cid":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 285
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 290
    .end local v0    # "cid":Ljava/lang/String;
    .end local v2    # "dataType":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .end local v3    # "obj":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_4
    new-instance v4, Labi;

    invoke-direct {v4}, Labi;-><init>()V

    .line 291
    .local v4, "reqModel":Labi;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v4, Labi;->a:Ljava/util/List;

    .line 292
    iput-object v1, v4, Labi;->b:Ljava/util/List;

    .line 294
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 295
    .local v8, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    new-instance v5, Labj;

    invoke-direct {v5}, Labj;-><init>()V

    .line 296
    .local v5, "singleModel":Labj;
    if-eqz v8, :cond_5

    .line 297
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v5, Labj;->a:Ljava/lang/Long;

    .line 298
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 299
    iget-wide v10, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    iput-object v10, v5, Labj;->b:Ljava/lang/Long;

    .line 301
    :cond_6
    iget-object v10, v4, Labi;->a:Ljava/util/List;

    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v4    # "reqModel":Labi;
    .end local v5    # "singleModel":Labj;
    .end local v8    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    .restart local v2    # "dataType":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject$MessageDataType;
    .restart local v3    # "obj":Lcom/alibaba/android/dingtalkim/base/model/MessageRecipientDataObject;
    :cond_7
    move-object v6, v4

    goto :goto_1
.end method
