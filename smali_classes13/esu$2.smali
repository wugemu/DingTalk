.class public final Lesu$2;
.super Ljava/lang/Object;
.source "ContactSearchHelper.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lesu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcma;

.field final synthetic e:Lesu;


# direct methods
.method public constructor <init>(Lesu;Ljava/lang/String;IILcma;)V
    .locals 0
    .param p1, "this$0"    # Lesu;

    .prologue
    .line 123
    iput-object p1, p0, Lesu$2;->e:Lesu;

    iput-object p2, p0, Lesu$2;->a:Ljava/lang/String;

    iput p3, p0, Lesu$2;->b:I

    iput p4, p0, Lesu$2;->c:I

    iput-object p5, p0, Lesu$2;->d:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    .line 123
    check-cast p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;

    .line 1128
    iget-object v1, p0, Lesu$2;->e:Lesu;

    iget-object v2, p0, Lesu$2;->a:Ljava/lang/String;

    .line 2188
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    .line 2189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1130
    :cond_0
    new-instance v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;-><init>()V

    .line 1131
    sget-object v1, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;->OrgContact:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 3075
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->e:Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel$ContactSource;

    .line 1132
    iget-object v1, p0, Lesu$2;->e:Lesu;

    .line 4040
    iget-object v1, v1, Lesu;->b:Ljava/util/List;

    .line 4051
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->a:Ljava/util/List;

    .line 1133
    iget-object v1, p0, Lesu$2;->a:Ljava/lang/String;

    .line 5043
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->d:Ljava/lang/String;

    .line 1135
    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lesu$2;->b:I

    if-ge v1, v2, :cond_6

    .line 5067
    :cond_1
    iput-boolean v8, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->c:Z

    .line 6059
    iput v8, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->b:I

    .line 1143
    :goto_0
    iget-object v1, p0, Lesu$2;->d:Lcma;

    if-eqz v1, :cond_2

    .line 1144
    iget-object v1, p0, Lesu$2;->d:Lcma;

    invoke-interface {v1, v0}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 123
    :cond_2
    return-void

    .line 2193
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemWrapperObject;->orgNodeItemObjectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;

    .line 2194
    if-eqz v0, :cond_4

    .line 2197
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    if-eqz v4, :cond_5

    iget-object v4, v1, Lesu;->a:Ljava/util/List;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2198
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 2199
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v5, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2200
    iget-object v5, v1, Lesu;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2201
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    .line 2202
    iget-object v4, v1, Lesu;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2204
    :cond_5
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    if-eqz v4, :cond_4

    iget-object v4, v1, Lesu;->a:Ljava/util/List;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2205
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    invoke-static {v4, v5}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->getUserIdentityObject(Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;)Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    move-result-object v4

    .line 2206
    iget-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    invoke-static {v5, v2}, Lcos;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mobile:Ljava/lang/String;

    .line 2207
    iget-object v5, v1, Lesu;->b:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2208
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v4, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    cmp-long v4, v4, v10

    if-lez v4, :cond_4

    .line 2209
    iget-object v4, v1, Lesu;->a:Ljava/util/List;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgNodeItemObject;->employeeObject:Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeObject;->uid:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1139
    :cond_6
    const/4 v1, 0x1

    .line 6067
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->c:Z

    .line 1140
    iget v1, p0, Lesu$2;->c:I

    iget v2, p0, Lesu$2;->b:I

    add-int/2addr v1, v2

    .line 7059
    iput v1, v0, Lcom/alibaba/android/dingtalk/search/base/model/ContactSearchResultModel;->b:I

    goto/16 :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 156
    iget-object v0, p0, Lesu$2;->d:Lcma;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lesu$2;->d:Lcma;

    invoke-interface {v0, p1, p2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    return-void
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 151
    return-void
.end method
