.class final Lflr$7;
.super Ljava/lang/Object;
.source "ContactHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lflr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 674
    iput-object p1, p0, Lflr$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 681
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v7, p0, Lflr$7;->a:Ljava/lang/String;

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 682
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v7, "scale"

    const/16 v8, 0xc8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sput-object v7, Lflr;->b:Ljava/lang/Integer;

    .line 685
    const-string/jumbo v7, "lowerLimit"

    const/4 v8, 0x6

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 686
    .local v0, "createCount":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "create_org_limit_member"

    invoke-static {v7, v8, v0}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 689
    const-string/jumbo v7, "popRate"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 690
    .local v1, "createOrgV2Rate":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "pref_key_popRate"

    int-to-long v10, v1

    invoke-static {v7, v8, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 693
    const-string/jumbo v7, "newFlow"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 694
    .local v5, "isCreateOrgV2":Z
    const-string/jumbo v7, "pref_key_newFlow"

    invoke-static {v7, v5}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 697
    const-string/jumbo v7, "newFlowRate"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 698
    .local v3, "createOrgV4Rate":I
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "pref_key_v4_rate"

    int-to-long v10, v3

    invoke-static {v7, v8, v10, v11}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 701
    const-string/jumbo v7, "employeeOldFlow"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 702
    .local v2, "createOrgV4EmployeeOldFlow":Z
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v7

    invoke-virtual {v7}, Lcid;->c()Landroid/app/Application;

    move-result-object v7

    const-string/jumbo v8, "pref_key_v4_employee_old_flow"

    invoke-static {v7, v8, v2}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 707
    .end local v0    # "createCount":I
    .end local v1    # "createOrgV2Rate":I
    .end local v2    # "createOrgV4EmployeeOldFlow":Z
    .end local v3    # "createOrgV4Rate":I
    .end local v5    # "isCreateOrgV2":Z
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 704
    :catch_0
    move-exception v4

    .line 705
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
