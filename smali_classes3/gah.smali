.class public final Lgah;
.super Ljava/lang/Object;
.source "CsSpaceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgah$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static a(Lgah$a;Lcma;)V
    .locals 5
    .param p0, "request"    # Lgah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgah$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsSpace;>;"
    if-nez p1, :cond_0

    .line 164
    :goto_0
    return-void

    .line 118
    :cond_0
    if-eqz p0, :cond_1

    .line 1052
    iget-object v2, p0, Lgah$a;->a:Ljava/lang/String;

    .line 118
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    :cond_1
    const-string/jumbo v2, "INVALID_PARAM"

    sget v3, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v3}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v3

    .line 1255
    invoke-static {v2, v3, p1}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    goto :goto_0

    .line 2079
    :cond_2
    iget-boolean v2, p0, Lgah$a;->d:Z

    .line 123
    if-eqz v2, :cond_3

    .line 3021
    invoke-static {}, Lgak$a;->a()Lgak;

    move-result-object v2

    .line 3052
    iget-object v3, p0, Lgah$a;->a:Ljava/lang/String;

    .line 3061
    iget-object v2, v2, Lgak;->b:Ljava/util/Map;

    invoke-static {v2, v3}, Lgak;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 125
    .local v0, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    if-eqz v0, :cond_3

    .line 3088
    iput-object v0, p0, Lgah$a;->e:Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    .line 127
    invoke-static {p0, p1}, Lgah;->c(Lgah$a;Lcma;)V

    goto :goto_0

    .line 132
    .end local v0    # "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    :cond_3
    new-instance v1, Lgah$1;

    invoke-direct {v1, p0, p1}, Lgah$1;-><init>(Lgah$a;Lcma;)V

    .line 163
    .local v1, "resultListener":Lcma;, "Lcma<Lgic;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v2

    .line 4052
    iget-object v3, p0, Lgah$a;->a:Ljava/lang/String;

    .line 163
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v1}, Lgon;->a(Ljava/lang/String;ZLcma;)V

    goto :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Ljava/lang/String;Lcma;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcma;

    .prologue
    .line 27
    .line 11255
    invoke-static {p0, p1, p2}, Lgpr;->a(Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 27
    return-void
.end method

.method static b(Lgah$a;Lcma;)V
    .locals 8
    .param p0, "request"    # Lgah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgah$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 207
    .line 4070
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsSpace;>;"
    iget-boolean v3, p0, Lgah$a;->c:Z

    .line 207
    if-nez v3, :cond_0

    .line 208
    invoke-static {p0, p1}, Lgah;->c(Lgah$a;Lcma;)V

    .line 6102
    :goto_0
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lgah$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v1

    .line 213
    .local v1, "csSpace":Lcom/alibaba/dingtalk/cspace/model/CsSpace;
    invoke-virtual {v1}, Lcom/alibaba/dingtalk/cspace/model/CsSpace;->getOrg()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v0

    .line 214
    .local v0, "csOrg":Lcom/alibaba/dingtalk/cspace/model/CsOrg;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->getId()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gtz v3, :cond_2

    .line 215
    :cond_1
    invoke-static {p0, p1}, Lgah;->c(Lgah$a;Lcma;)V

    goto :goto_0

    .line 5035
    :cond_2
    new-instance v2, Lgag$a;

    invoke-direct {v2}, Lgag$a;-><init>()V

    .line 220
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->getId()J

    move-result-wide v4

    .line 5048
    iput-wide v4, v2, Lgag$a;->a:J

    .line 5079
    iget-boolean v3, p0, Lgah$a;->d:Z

    .line 6066
    iput-boolean v3, v2, Lgag$a;->b:Z

    .line 222
    .local v2, "orgRequest":Lgag$a;
    new-instance v4, Lgah$3;

    invoke-direct {v4, v1, p0, p1}, Lgah$3;-><init>(Lcom/alibaba/dingtalk/cspace/model/CsSpace;Lgah$a;Lcma;)V

    .line 6100
    if-nez v2, :cond_3

    .line 6101
    const-string/jumbo v3, "INVALID_PARAM"

    sget v5, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v5}, Lgpr;->a(I)Ljava/lang/String;

    move-result-object v5

    .line 6140
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v6

    new-instance v7, Lgag$2;

    invoke-direct {v7, v4, v3, v5}, Lgag$2;-><init>(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lhcv;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7062
    :cond_3
    iget-boolean v3, v2, Lgag$a;->b:Z

    .line 6105
    if-eqz v3, :cond_5

    .line 8021
    invoke-static {}, Lgak$a;->a()Lgak;

    move-result-object v3

    .line 8044
    iget-wide v6, v2, Lgag$a;->a:J

    .line 8073
    iget-object v3, v3, Lgak;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v3, v5}, Lgak;->a(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 6107
    if-eqz v3, :cond_5

    .line 8078
    iput-object v3, v2, Lgag$a;->c:Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    .line 6122
    :cond_4
    :goto_1
    invoke-static {v2, v4}, Lgag;->a(Lgag$a;Lcma;)V

    goto :goto_0

    .line 9044
    :cond_5
    iget-wide v6, v2, Lgag$a;->a:J

    .line 6114
    invoke-static {v6, v7}, Lgpz;->e(J)Ljava/lang/String;

    move-result-object v3

    .line 6115
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 6116
    invoke-virtual {v2}, Lgag$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v5

    .line 10044
    iget-wide v6, v2, Lgag$a;->a:J

    .line 6117
    invoke-virtual {v5, v6, v7}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->setId(J)V

    .line 6118
    invoke-virtual {v5, v3}, Lcom/alibaba/dingtalk/cspace/model/CsOrg;->setName(Ljava/lang/String;)V

    .line 11021
    invoke-static {}, Lgak$a;->a()Lgak;

    move-result-object v3

    .line 11044
    iget-wide v6, v2, Lgag$a;->a:J

    .line 6119
    invoke-virtual {v2}, Lgag$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsOrg;

    move-result-object v5

    .line 11077
    iget-object v3, v3, Lgak;->a:Ljava/util/Map;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v3, v6, v5}, Lgak;->a(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1
.end method

.method static c(Lgah$a;Lcma;)V
    .locals 1
    .param p0, "request"    # Lgah$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgah$a;",
            "Lcma",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/CsSpace;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "listener":Lcma;, "Lcma<Lcom/alibaba/dingtalk/cspace/model/CsSpace;>;"
    if-nez p0, :cond_0

    .line 251
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-virtual {p0}, Lgah$a;->a()Lcom/alibaba/dingtalk/cspace/model/CsSpace;

    move-result-object v0

    invoke-static {v0, p1}, Lgpr;->a(Ljava/lang/Object;Lcma;)V

    goto :goto_0
.end method
