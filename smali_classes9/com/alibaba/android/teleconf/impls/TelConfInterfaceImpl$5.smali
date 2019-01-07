.class final Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$5;
.super Ljava/lang/Object;
.source "TelConfInterfaceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    .prologue
    .line 877
    iput-object p1, p0, Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl$5;->a:Lcom/alibaba/android/teleconf/impls/TelConfInterfaceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 881
    :try_start_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcpj;->a(Landroid/content/Context;)Z

    move-result v3

    .line 882
    .local v3, "isMulti":Z
    const/4 v4, 0x0

    .line 883
    .local v4, "simCardNum":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-static {v5}, Lcpj;->d(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 884
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    if-eqz v2, :cond_0

    .line 885
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 888
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 889
    .local v0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "isMulti"

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    const-string/jumbo v5, "simNum"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v5

    const/4 v6, 0x0

    const-string/jumbo v7, "tele_device_multi_card_type"

    invoke-interface {v5, v6, v7, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 893
    invoke-static {}, Lewh;->a()Lewh;

    move-result-object v5

    .line 2446
    const-wide/16 v6, 0x0

    .line 2447
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v8

    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->A()Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v8

    .line 2448
    if-eqz v8, :cond_1

    .line 2449
    iget-wide v6, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    .line 2451
    :cond_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2452
    const-string/jumbo v9, "permission_check_list"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2453
    const-string/jumbo v9, "gray_voip_recommendation"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2454
    const-string/jumbo v9, "gray_ringtone_call_mode"

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2455
    invoke-static {}, Leyd;->a()Leyd;

    move-result-object v9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    new-instance v7, Lewh$2;

    invoke-direct {v7, v5}, Lewh$2;-><init>(Lewh;)V

    .line 3384
    if-eqz v8, :cond_2

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 897
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    .end local v3    # "isMulti":Z
    .end local v4    # "simCardNum":I
    :cond_2
    :goto_0
    return-void

    .line 3387
    .restart local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    .restart local v3    # "isMulti":Z
    .restart local v4    # "simCardNum":I
    :cond_3
    const-class v5, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;

    .line 3388
    if-eqz v5, :cond_2

    .line 3391
    new-instance v10, Leyd$2;

    invoke-direct {v10, v9, v7}, Leyd$2;-><init>(Leyd;Leyo$d;)V

    invoke-interface {v5, v6, v8, v10}, Lcom/alibaba/android/teleconf/sdk/idl/service/CallAdminIService;->getGraySwitch(Ljava/lang/Long;Ljava/util/List;Liyv;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    .end local v0    # "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "infos":Ljava/util/List;, "Ljava/util/List<Lckp;>;"
    .end local v3    # "isMulti":Z
    .end local v4    # "simCardNum":I
    :catch_0
    move-exception v1

    .line 895
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
