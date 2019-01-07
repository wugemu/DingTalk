.class public Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;
.source "CSpaceMainAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;,
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lgic;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

.field private c:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-direct {p0, p1, p2}, Lcom/alibaba/dingtalk/cspace/listbase/ArrayListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a:Ljava/util/HashMap;

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

    .line 42
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 43
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;)Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->b:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$a;

    return-object v0
.end method

.method private static a(J)Ljava/lang/String;
    .locals 4
    .param p0, "spaceId"    # J

    .prologue
    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "pref_key_space_red_dot_of_org_space_"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 31
    invoke-static {p1, p2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 20
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    if-nez p2, :cond_3

    .line 53
    new-instance v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;)V

    .line 54
    .local v5, "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->space_main_org_item_layout:I

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 55
    sget v2, Lfzs$f;->img_org_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->a:Landroid/widget/ImageView;

    .line 56
    sget v2, Lfzs$f;->tv_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->b:Landroid/widget/TextView;

    .line 57
    sget v2, Lfzs$f;->tv_org_capacity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    .line 58
    sget v2, Lfzs$f;->red_dot_new:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->d:Landroid/widget/TextView;

    .line 59
    sget v2, Lfzs$f;->view_divider:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->e:Landroid/view/View;

    .line 60
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 65
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 66
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->e:Landroid/view/View;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 71
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 73
    .local v4, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v4, :cond_2

    .line 75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v11, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->a:Landroid/widget/ImageView;

    const/16 v16, 0x0

    move-object/from16 v2, p3

    check-cast v2, Landroid/widget/AbsListView;

    move-object/from16 v0, v16

    invoke-interface {v3, v11, v0, v2}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 76
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_0

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->a:Landroid/widget/ImageView;

    iget-object v11, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-object v11, v11, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->logoMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "viewGroup":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-interface {v2, v3, v11, v0}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 81
    :cond_0
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->b:Landroid/widget/TextView;

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const-wide/16 v14, 0x0

    .line 84
    .local v14, "tempPublicSpaceUsed":J
    const-wide/16 v12, 0x0

    .line 86
    .local v12, "tempPublicSpaceModifiedTime":J
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_1

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a:Ljava/util/HashMap;

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a:Ljava/util/HashMap;

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lgic;

    .line 88
    .local v10, "spaceUpdateInfo":Lgic;
    if-eqz v10, :cond_9

    .line 89
    iget-object v11, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->m:Landroid/content/Context;

    move-object/from16 v16, v0

    sget v17, Lfzs$h;->dt_space_capacity:I

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    iget-object v2, v10, Lgic;->f:Ljava/lang/Long;

    if-eqz v2, :cond_5

    iget-object v2, v10, Lgic;->f:Ljava/lang/Long;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 1046
    :goto_2
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 90
    aput-object v2, v18, v19

    const/16 v19, 0x1

    iget-object v2, v10, Lgic;->e:Ljava/lang/Long;

    if-eqz v2, :cond_6

    iget-object v2, v10, Lgic;->e:Ljava/lang/Long;

    .line 91
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2046
    :goto_3
    invoke-static {v2, v3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 91
    aput-object v2, v18, v19

    .line 89
    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, v10, Lgic;->d:Ljava/lang/Long;

    if-nez v2, :cond_7

    const-wide/16 v14, 0x0

    .line 93
    :goto_4
    iget-object v2, v10, Lgic;->b:Ljava/lang/Long;

    if-nez v2, :cond_8

    const-wide/16 v12, 0x0

    .line 98
    .end local v10    # "spaceUpdateInfo":Lgic;
    :cond_1
    :goto_5
    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v2, :cond_a

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    const-wide/16 v16, 0x0

    cmp-long v2, v2, v16

    if-lez v2, :cond_a

    .line 99
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v0, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->b(Ljava/lang/Long;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->spaceId:J

    .line 100
    invoke-static {v2, v3}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;->a(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcpk;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 101
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 102
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->d:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 107
    :goto_6
    move-wide v6, v14

    .line 108
    .local v6, "publicSpaceCapacityUsed":J
    move-wide v8, v12

    .line 110
    .local v8, "publicModifiedTime":J
    new-instance v2, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;JJ)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .end local v6    # "publicSpaceCapacityUsed":J
    .end local v8    # "publicModifiedTime":J
    .end local v12    # "tempPublicSpaceModifiedTime":J
    .end local v14    # "tempPublicSpaceUsed":J
    :cond_2
    return-object p2

    .line 62
    .end local v4    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .end local v5    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;
    .restart local p3    # "viewGroup":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;

    .restart local v5    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;
    goto/16 :goto_0

    .line 68
    :cond_4
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->e:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 90
    .end local p3    # "viewGroup":Landroid/view/ViewGroup;
    .restart local v4    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    .restart local v10    # "spaceUpdateInfo":Lgic;
    .restart local v12    # "tempPublicSpaceModifiedTime":J
    .restart local v14    # "tempPublicSpaceUsed":J
    :cond_5
    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 91
    :cond_6
    const-wide/16 v2, 0x0

    goto :goto_3

    .line 92
    :cond_7
    iget-object v2, v10, Lgic;->d:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_4

    .line 93
    :cond_8
    iget-object v2, v10, Lgic;->b:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    goto :goto_5

    .line 95
    :cond_9
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 104
    .end local v10    # "spaceUpdateInfo":Lgic;
    :cond_a
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    .line 105
    iget-object v2, v5, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceMainAdapter$b;->d:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-static {v2, v3}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_6
.end method
