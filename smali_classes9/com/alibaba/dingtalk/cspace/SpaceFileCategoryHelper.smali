.class public Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;
.super Ljava/lang/Object;
.source "SpaceFileCategoryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;,
        Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;,
        Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;,
        Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$b;,
        Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;
    .locals 2

    .prologue
    .line 48
    sget-object v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    if-nez v0, :cond_1

    .line 49
    const-class v1, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    monitor-enter v1

    .line 50
    :try_start_0
    sget-object v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    invoke-direct {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;-><init>()V

    sput-object v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    .line 53
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_1
    sget-object v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;->a:Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;

    return-object v0

    .line 53
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "fileCategorySelectedCallback"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;

    .prologue
    .line 116
    if-nez p0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    new-instance v0, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;-><init>(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$c;)V

    .line 121
    .local v0, "dialog":Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$CategoryDialog;->show()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/app/Activity;Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;Lgoa;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "category"    # Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;
    .param p3, "paramModel"    # Lgoa;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x1

    .line 128
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    invoke-static {p1}, Lcms;->d(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 133
    sget v2, Lfzs$h;->network_error:I

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v1, "property":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "type"

    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->getStatisticString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string/jumbo v4, "source"

    .line 1070
    iget-boolean v2, p3, Lgoa;->d:Z

    if-eqz v2, :cond_e

    .line 1074
    iget-object v2, p3, Lgoa;->c:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "/"

    iget-object v5, p3, Lgoa;->c:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    .line 1075
    :goto_1
    iget v5, p3, Lgoa;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 1076
    if-eqz v2, :cond_5

    const-string/jumbo v2, "my_root"

    .line 139
    :goto_2
    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v2

    const-string/jumbo v3, "space_filter_click"

    invoke-interface {v2, v3, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 141
    invoke-virtual {p2}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$Category;->getCategoryString()Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, "categoryType":Ljava/lang/String;
    const-string/jumbo v2, "NAVIGATOR"

    invoke-static {v2}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v2, p1}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v2

    const-string/jumbo v3, "https://qr.dingtalk.com/space/category.html"

    .line 144
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;

    invoke-direct {v5, p0, v0, p3}, Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper$1;-><init>(Lcom/alibaba/dingtalk/cspace/SpaceFileCategoryHelper;Ljava/lang/String;Lgoa;)V

    .line 143
    invoke-interface {v2, v3, v4, v5}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)Z

    goto :goto_0

    .line 1074
    .end local v0    # "categoryType":Ljava/lang/String;
    :cond_4
    const/4 v2, 0x0

    goto :goto_1

    .line 1076
    :cond_5
    const-string/jumbo v2, "my_sub"

    goto :goto_2

    .line 1078
    :cond_6
    iget v5, p3, Lgoa;->e:I

    if-ne v5, v3, :cond_8

    .line 1079
    if-eqz v2, :cond_7

    const-string/jumbo v2, "share_org_root"

    goto :goto_2

    :cond_7
    const-string/jumbo v2, "share_org_sub"

    goto :goto_2

    .line 1081
    :cond_8
    iget v3, p3, Lgoa;->e:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_a

    .line 1082
    if-eqz v2, :cond_9

    const-string/jumbo v2, "chatorg_root"

    goto :goto_2

    :cond_9
    const-string/jumbo v2, "chatorg_sub"

    goto :goto_2

    .line 1084
    :cond_a
    iget v3, p3, Lgoa;->e:I

    const/4 v5, 0x4

    if-ne v3, v5, :cond_c

    .line 1085
    if-eqz v2, :cond_b

    const-string/jumbo v2, "chatgroup_root"

    goto :goto_2

    :cond_b
    const-string/jumbo v2, "chatgroup_sub"

    goto :goto_2

    .line 1087
    :cond_c
    iget v3, p3, Lgoa;->e:I

    const/4 v5, 0x5

    if-ne v3, v5, :cond_e

    .line 1088
    if-eqz v2, :cond_d

    const-string/jumbo v2, "chatsingle_root"

    goto/16 :goto_2

    :cond_d
    const-string/jumbo v2, "chatsingle_sub"

    goto/16 :goto_2

    .line 1090
    :cond_e
    const-string/jumbo v2, "share_root"

    goto/16 :goto_2
.end method
