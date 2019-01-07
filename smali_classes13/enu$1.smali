.class public final Lenu$1;
.super Ljava/lang/Object;
.source "SearchHelper.java"

# interfaces
.implements Lcca;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcma;


# direct methods
.method public constructor <init>(Ljava/lang/String;IILcma;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lenu$1;->a:Ljava/lang/String;

    iput p2, p0, Lenu$1;->b:I

    iput p3, p0, Lenu$1;->c:I

    iput-object p4, p0, Lenu$1;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .param p1, "group"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 195
    iget-object v3, p0, Lenu$1;->a:Ljava/lang/String;

    iget v4, p0, Lenu$1;->b:I

    iget v5, p0, Lenu$1;->c:I

    sget-object v6, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;->Friend:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 1062
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;-><init>()V

    .line 2043
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->d:Ljava/lang/String;

    .line 2059
    iput v4, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->b:I

    .line 1066
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    move v3, v1

    .line 1067
    :goto_0
    if-nez v3, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v5, v3, :cond_4

    .line 2067
    :goto_1
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->c:Z

    .line 2075
    iput-object v6, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 1070
    if-eqz p2, :cond_c

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_c

    .line 1072
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1073
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1074
    if-eqz v1, :cond_1

    .line 1077
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 1078
    new-instance v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v6}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 1079
    :cond_2
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1080
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1081
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1082
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1083
    const-string/jumbo v7, "uid"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1084
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3044
    const-wide/16 v8, 0x0

    invoke-static {v1, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    .line 1084
    iput-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    goto :goto_3

    :cond_3
    move v3, v2

    .line 1066
    goto :goto_0

    :cond_4
    move v1, v2

    .line 1067
    goto :goto_1

    .line 1085
    :cond_5
    const-string/jumbo v7, "nick"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1086
    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    goto :goto_3

    .line 1087
    :cond_6
    const-string/jumbo v7, "orgId"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1088
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->oid:J

    goto :goto_3

    .line 1089
    :cond_7
    const-string/jumbo v7, "empName"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1090
    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->orgUserName:Ljava/lang/String;

    goto :goto_3

    .line 1091
    :cond_8
    const-string/jumbo v7, "orgName"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1092
    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->company:Ljava/lang/String;

    goto :goto_3

    .line 1093
    :cond_9
    const-string/jumbo v7, "depName"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1095
    const-string/jumbo v7, "avatar"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1096
    iput-object v1, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    goto/16 :goto_3

    .line 1099
    :cond_a
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 3051
    :cond_b
    iput-object v3, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->a:Ljava/util/List;

    .line 196
    .local v0, "result":Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;
    :cond_c
    iget-object v1, p0, Lenu$1;->d:Lcma;

    if-eqz v1, :cond_d

    .line 197
    iget-object v1, p0, Lenu$1;->d:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 199
    :cond_d
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;)V"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "datas":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    return-void
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "canLoad"    # Z

    .prologue
    .line 207
    return-void
.end method
