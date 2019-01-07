.class public abstract Lgej;
.super Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;
.source "DentryBaseViewHolder.java"


# instance fields
.field protected a:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "viewType"    # I

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter$c;-><init>(Landroid/view/View;)V

    .line 33
    iput p2, p0, Lgej;->a:I

    .line 34
    return-void
.end method

.method static a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;
    .locals 2
    .param p0, "viewModel"    # Lgeh;
    .param p1, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    const/4 v1, 0x0

    .line 102
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-object v1

    .line 105
    :cond_1
    invoke-virtual {p1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 106
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryModel()Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    goto :goto_0
.end method

.method private static a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V
    .locals 1
    .param p0, "operationButton"    # Landroid/view/View;
    .param p1, "viewModel"    # Lgeh;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    .line 87
    if-nez p0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 90
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lgpk;->a(Landroid/view/View;I)V

    .line 91
    if-eqz p2, :cond_0

    .line 3160
    iget-object v0, p2, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->a:Lged$a;

    .line 91
    if-eqz v0, :cond_0

    .line 92
    new-instance v0, Lgej$1;

    invoke-direct {v0, p2, p1}, Lgej$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Lgeh;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method static a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
    .locals 7
    .param p0, "operationButton"    # Landroid/view/View;
    .param p1, "viewModel"    # Lgeh;
    .param p2, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    .line 44
    invoke-static {p1, p2}, Lgej;->a(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v0

    .line 45
    .local v0, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 53
    :cond_1
    invoke-static {}, Lglr;->a()Z

    move-result v2

    .line 54
    .local v2, "isFileLinkFeatureEnable":Z
    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceTypeBelong()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lgqu;->a(Ljava/lang/String;)I

    move-result v3

    .line 56
    .local v3, "spaceType":I
    const/4 v1, 0x0

    .line 57
    .local v1, "isAclEnable":Z
    invoke-static {v3}, Lgqu;->h(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 58
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v1

    .line 64
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    .line 65
    if-nez v2, :cond_3

    .line 66
    invoke-static {}, Lgqd;->a()Lgqd;

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getAuthFlag()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "readPolicy"

    invoke-static {v4, v5}, Lgqd;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 67
    :cond_3
    invoke-static {p0, p1, p2}, Lgej;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    goto :goto_0

    .line 59
    :cond_4
    invoke-static {v3}, Lgqu;->d(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_conf_space_acl_permission_setting_enable"

    .line 2083
    invoke-virtual {v5, v6, v4}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 60
    if-eqz v5, :cond_5

    .line 61
    invoke-static {}, Lgqd;->a()Lgqd;

    move-result-object v5

    invoke-virtual {v0}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getSpaceId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgqd;->a(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    .line 72
    :cond_6
    invoke-static {v0}, Lgpv;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2184
    iget-boolean v4, p2, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->d:Z

    .line 73
    if-nez v4, :cond_7

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lgpr;->a(Lcom/alibaba/alimei/cspace/model/DentryModel;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    if-eqz v2, :cond_8

    .line 74
    invoke-static {v3}, Lgqu;->d(I)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {v3}, Lgqu;->h(I)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 75
    :cond_7
    invoke-static {p0, p1, p2}, Lgej;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    goto/16 :goto_0

    .line 80
    :cond_8
    invoke-static {v0}, Lgpv;->b(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 81
    invoke-static {p0, p1, p2}, Lgej;->a(Landroid/view/View;Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)V

    goto/16 :goto_0
.end method

.method static b(Lgeh;Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;)Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;
    .locals 2
    .param p0, "viewModel"    # Lgeh;
    .param p1, "adapter"    # Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;

    .prologue
    const/4 v1, 0x0

    .line 110
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return-object v1

    .line 113
    :cond_1
    invoke-virtual {p1, p0}, Lcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;->c(Lgeh;)Lcom/alibaba/dingtalk/cspace/model/CsDentry;

    move-result-object v0

    .line 114
    .local v0, "csDentry":Lcom/alibaba/dingtalk/cspace/model/CsDentry;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/CsDentry;->getDentryExtModel()Lcom/alibaba/dingtalk/cspace/model/DentryExtModel;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;)V
    .locals 0
    .param p1, "viewAdapter"    # Lcom/alibaba/dingtalk/cspace/widget/CsRecyclerViewAdapter;

    .prologue
    .line 41
    return-void
.end method

.method public abstract a(Lgeh;ILcom/alibaba/dingtalk/cspace/functions/dentrylist/view/DentryListViewAdapter;Landroid/content/Context;)V
.end method
