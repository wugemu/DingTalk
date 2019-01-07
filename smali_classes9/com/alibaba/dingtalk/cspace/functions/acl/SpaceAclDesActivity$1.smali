.class final Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;
.super Ljava/lang/Object;
.source "SpaceAclDesActivity.java"

# interfaces
.implements Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    iput-object p2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 100
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v9, "allowMemberTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_root_mainpage_addsubmanager_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    :goto_0
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "modifyManager"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 112
    .local v8, "canEdit":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x3eb

    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V

    .line 114
    return-void

    .line 107
    .end local v8    # "canEdit":Z
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_subfolder_mainpage_addsubmanager_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 108
    invoke-static {}, Lgqd;->a()Lgqd;

    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lgqd;->a(ZZZ)Ljava/util/ArrayList;

    move-result-object v9

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .local p1, "item1Callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    .local p2, "item2Callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    .local p3, "item3Callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Ljava/lang/String;>;"
    const-wide/16 v8, 0x0

    .line 147
    new-instance v0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;Lcom/alibaba/wukong/Callback;)V

    .line 210
    .local v0, "listener":Lcma;, "Lcma<Ljava/util/List<Lgnv;>;>;"
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v2}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v3}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    .line 2874
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2875
    :cond_0
    const-string/jumbo v1, "20170720"

    sget v2, Lfzs$h;->dt_cspace_invalid_param_tip:I

    invoke-static {v2}, Lgon;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcma;->onException(Ljava/lang/String;Ljava/lang/String;)V

    .line 2876
    :goto_0
    return-void

    .line 2879
    :cond_1
    new-instance v4, Lgon$24;

    invoke-direct {v4, v1, v0}, Lgon$24;-><init>(Lgon;Lcma;)V

    .line 2914
    new-instance v5, Lgku;

    invoke-direct {v5}, Lgku;-><init>()V

    .line 3109
    invoke-static {v2, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v6

    .line 2915
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgku;->a:Ljava/lang/Long;

    .line 4109
    invoke-static {v3, v8, v9}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2916
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v5, Lgku;->b:Ljava/lang/Long;

    .line 2917
    iget-object v1, v1, Lgon;->c:Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;

    invoke-interface {v1, v5, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/CSpaceAclService;->listAcl(Lgku;Liyv;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 119
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_root_mainpage_adduploader_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 125
    :goto_0
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "modifyReaderUploader"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 126
    .local v8, "canEdit":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x3ea

    .line 127
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {v9, v9, v9}, Lgqd;->a(ZZZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 126
    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V

    .line 128
    return-void

    .line 122
    .end local v8    # "canEdit":Z
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_subfolder_mainpage_adduploader_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final c()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x1

    .line 133
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_root_mainpage_addviewer_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 139
    :goto_0
    invoke-static {}, Lgqd;->a()Lgqd;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->a:Ljava/lang/String;

    const-string/jumbo v1, "modifyReader"

    invoke-static {v0, v1}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    .line 140
    .local v8, "canEdit":Z
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->b(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->a(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity$1;->b:Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;

    invoke-static {v0}, Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;->c(Lcom/alibaba/dingtalk/cspace/functions/acl/SpaceAclDesActivity;)J

    move-result-wide v4

    const-wide/16 v6, 0x3e9

    .line 141
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-static {v9, v9, v9}, Lgqd;->a(ZZZ)Ljava/util/ArrayList;

    move-result-object v9

    .line 140
    invoke-static/range {v1 .. v9}, Lfzu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JJZLjava/util/ArrayList;)V

    .line 142
    return-void

    .line 136
    .end local v8    # "canEdit":Z
    :cond_0
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v0

    const-string/jumbo v1, "space_permission_subfolder_mainpage_addviewer_click"

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
