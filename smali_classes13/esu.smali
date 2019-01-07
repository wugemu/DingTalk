.class public final Lesu;
.super Ljava/lang/Object;
.source "ContactSearchHelper.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lesu;->a:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lesu;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;-><init>()V

    .line 235
    .local v0, "filterObject":Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;
    const-string/jumbo v1, "2"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->type:Ljava/lang/String;

    .line 236
    const-string/jumbo v1, "sys.mobile.visible"

    iput-object v1, v0, Lcom/alibaba/android/dingtalk/userbase/model/FilterObject;->appId:Ljava/lang/String;

    .line 238
    return-object v0
.end method

.method static synthetic a(Lesu;Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;Ljava/util/List;Lcma;)V
    .locals 8
    .param p0, "x0"    # Lesu;
    .param p1, "x1"    # Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Lcma;

    .prologue
    .line 40
    .line 2039
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->d:Ljava/lang/String;

    .line 2217
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 1105
    :cond_0
    iget-object v0, p0, Lesu;->b:Ljava/util/List;

    .line 3051
    iput-object v0, p1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->a:Ljava/util/List;

    .line 1107
    if-eqz p3, :cond_1

    .line 1108
    invoke-interface {p3, p1}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 40
    :cond_1
    return-void

    .line 2221
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 2222
    if-eqz v0, :cond_3

    iget-object v3, p0, Lesu;->a:Ljava/util/List;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 2223
    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v3, v1}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2224
    iget-object v3, p0, Lesu;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2225
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_3

    .line 2226
    iget-object v3, p0, Lesu;->a:Ljava/util/List;

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
