.class final Lflu$3;
.super Ljava/lang/Object;
.source "LocalOrgEmployeeCacheManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lflu;->a(JLcma;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcma;


# direct methods
.method constructor <init>(JLcma;)V
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lflu$3;->a:J

    iput-object p3, p0, Lflu$3;->b:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 82
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v10

    invoke-virtual {v10}, Lfmz;->b()Lfmr;

    move-result-object v0

    .line 83
    .local v0, "localContactDataSource":Lfmr;
    if-eqz v0, :cond_1

    .line 84
    iget-wide v10, p0, Lflu$3;->a:J

    invoke-interface {v0, v10, v11}, Lfmr;->a(J)Ljava/util/List;

    move-result-object v2

    .line 85
    .local v2, "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;

    .line 87
    .local v1, "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    if-eqz v1, :cond_0

    iget-object v11, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 88
    iget-object v6, v1, Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;->unitePhone:Ljava/lang/String;

    .line 89
    .local v6, "result":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lflu$3$1;

    invoke-direct {v11, p0, v6}, Lflu$3$1;-><init>(Lflu$3;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 160
    .end local v1    # "localContactObject":Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;
    .end local v2    # "localContactObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/LocalContactObject;>;"
    .end local v6    # "result":Ljava/lang/String;
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-static {}, Lcom/alibaba/android/user/internal/IMContextEngine;->a()Lcom/alibaba/android/user/internal/IMContextEngine;

    move-result-object v10

    invoke-virtual {v10}, Lcom/alibaba/android/user/internal/IMContextEngine;->e()Lfbn;

    move-result-object v10

    iget-wide v12, p0, Lflu$3;->a:J

    invoke-virtual {v10, v12, v13}, Lfbn;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    move-result-object v9

    .line 103
    .local v9, "userProfileObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;
    if-eqz v9, :cond_2

    iget-boolean v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->isFriend:Z

    if-eqz v10, :cond_2

    iget-object v10, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 104
    iget-object v6, v9, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->mobile:Ljava/lang/String;

    .line 105
    .restart local v6    # "result":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lflu$3$2;

    invoke-direct {v11, p0, v6}, Lflu$3$2;-><init>(Lflu$3;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 115
    .end local v6    # "result":Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v7, "uidList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-wide v10, p0, Lflu$3;->a:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-static {}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a()Lcom/alibaba/android/dingtalk/search/base/SearchInterface;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/alibaba/android/dingtalk/search/base/SearchInterface;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    .line 118
    .local v5, "recommendUserList":Ljava/util/List;, "Ljava/util/List<Lcco;>;"
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_4

    .line 119
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcco;

    .line 120
    .local v8, "userIntimacyModel":Lcco;
    if-eqz v8, :cond_3

    invoke-interface {v8}, Lcco;->getMobile()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 121
    invoke-interface {v8}, Lcco;->getMobile()Ljava/lang/String;

    move-result-object v6

    .line 122
    .restart local v6    # "result":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lflu$3$3;

    invoke-direct {v11, p0, v6}, Lflu$3$3;-><init>(Lflu$3;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 130
    iget-wide v10, p0, Lflu$3;->a:J

    invoke-interface {v8}, Lcco;->getOrgId()J

    move-result-wide v12

    invoke-static {v10, v11, v12, v13}, Lflu;->a(JJ)V

    goto/16 :goto_0

    .line 135
    .end local v6    # "result":Ljava/lang/String;
    .end local v8    # "userIntimacyModel":Lcco;
    :cond_4
    invoke-static {}, Lfmz;->a()Lfmz;

    move-result-object v10

    invoke-virtual {v10}, Lfmz;->i()Lfmt;

    move-result-object v3

    .line 136
    .local v3, "orgEmployeeClosestDataSource":Lfmt;
    if-eqz v3, :cond_5

    .line 137
    iget-wide v10, p0, Lflu$3;->a:J

    invoke-interface {v3, v10, v11}, Lfmt;->a(J)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;

    move-result-object v4

    .line 138
    .local v4, "orgEmployeeClosestObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    if-eqz v4, :cond_5

    iget-object v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->mobile:Ljava/lang/String;

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 139
    iget-object v6, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->mobile:Ljava/lang/String;

    .line 140
    .restart local v6    # "result":Ljava/lang/String;
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lflu$3$4;

    invoke-direct {v11, p0, v6}, Lflu$3$4;-><init>(Lflu$3;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 148
    iget-wide v10, p0, Lflu$3;->a:J

    iget-wide v12, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;->orgId:J

    invoke-static {v10, v11, v12, v13}, Lflu;->a(JJ)V

    goto/16 :goto_0

    .line 152
    .end local v4    # "orgEmployeeClosestObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeClosestObject;
    .end local v6    # "result":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v10

    new-instance v11, Lflu$3$5;

    invoke-direct {v11, p0}, Lflu$3$5;-><init>(Lflu$3;)V

    invoke-virtual {v10, v11}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
