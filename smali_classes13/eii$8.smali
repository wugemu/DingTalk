.class final Leii$8;
.super Ljava/lang/Object;
.source "ConfigEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Leii;


# direct methods
.method constructor <init>(Leii;J)V
    .locals 0
    .param p1, "this$0"    # Leii;

    .prologue
    .line 455
    iput-object p1, p0, Leii$8;->b:Leii;

    iput-wide p2, p0, Leii$8;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 458
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "dt_org"

    const-string/jumbo v7, "oa_report_limit"

    invoke-virtual {v5, v6, v7}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 459
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 460
    const-string/jumbo v4, "20"

    .line 463
    :cond_0
    :try_start_0
    iget-object v5, p0, Leii$8;->b:Leii;

    invoke-static {v5}, Leii;->f(Leii;)I

    move-result v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-le v5, v6, :cond_2

    .line 501
    :cond_1
    :goto_0
    return-void

    .line 467
    :catch_0
    move-exception v5

    const-string/jumbo v5, "ConfigEngine"

    const-string/jumbo v6, "ConfigEngine"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "getOATopicReportCount error value is"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_2
    const-class v5, Lcom/alibaba/android/rimet/biz/idl/service/OrgValidateIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/rimet/biz/idl/service/OrgValidateIService;

    .line 471
    .local v3, "service":Lcom/alibaba/android/rimet/biz/idl/service/OrgValidateIService;
    if-eqz v3, :cond_1

    .line 474
    new-instance v1, Lejz;

    invoke-direct {v1}, Lejz;-><init>()V

    .line 475
    .local v1, "oaOrgCheckModel":Lejz;
    iget-wide v6, p0, Leii$8;->a:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v1, Lejz;->a:Ljava/lang/Long;

    .line 476
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v1, Lejz;->b:Ljava/util/List;

    .line 477
    invoke-static {}, Leel;->f()Leek;

    move-result-object v5

    invoke-interface {v5}, Leek;->a()Ljava/util/List;

    move-result-object v0

    .line 478
    .local v0, "mOrgMicroAPPList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;>;"
    if-eqz v0, :cond_5

    .line 479
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcms;->k(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x32

    if-le v5, v6, :cond_3

    .line 480
    const-string/jumbo v5, "oa"

    const-string/jumbo v6, "handleOrgValidate"

    const-string/jumbo v7, "iswifi not and mOrgMicroAPPList.size > 50"

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 483
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;

    .line 484
    .local v2, "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    if-eqz v2, :cond_4

    iget-wide v6, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_4

    .line 485
    iget-object v6, v1, Lejz;->b:Ljava/util/List;

    iget-wide v8, v2, Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;->orgId:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 489
    .end local v2    # "orgMicroAPPObject":Lcom/alibaba/dingtalk/oabase/models/OrgMicroAPPObject;
    :cond_5
    new-instance v5, Leii$8$1;

    invoke-direct {v5, p0}, Leii$8$1;-><init>(Leii$8;)V

    invoke-interface {v3, v1, v5}, Lcom/alibaba/android/rimet/biz/idl/service/OrgValidateIService;->report(Lejz;Liyv;)V

    goto/16 :goto_0
.end method
