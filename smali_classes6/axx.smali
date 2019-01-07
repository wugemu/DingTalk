.class public final Laxx;
.super Landroid/widget/BaseAdapter;
.source "DingCompleteAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Z

.field public e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

.field public f:Lbhw;

.field public g:Lbih$a;

.field private h:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Ljava/util/HashSet;)V
    .locals 1
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lbff;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lbff;>;"
    .local p3, "checkedSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Laxx;->b:I

    .line 41
    iput-object p1, p0, Laxx;->h:Landroid/app/Activity;

    .line 42
    iput-object p2, p0, Laxx;->a:Ljava/util/List;

    .line 43
    iput-object p3, p0, Laxx;->c:Ljava/util/HashSet;

    .line 44
    return-void
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/ding/base/objects/ObjectDing;)V
    .locals 1
    .param p1, "objectDing"    # Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .prologue
    .line 47
    iput-object p1, p0, Laxx;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 48
    invoke-virtual {p0}, Laxx;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 49
    invoke-virtual {p0}, Laxx;->notifyDataSetChanged()V

    .line 51
    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Laxx;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Laxx;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 60
    iget-object v0, p0, Laxx;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    if-nez p2, :cond_3

    .line 72
    move-object/from16 v0, p0

    iget-object v3, v0, Laxx;->h:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Laxp$g;->ding_item_ding_task_complete:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v2, Lbih;

    move-object/from16 v0, p0

    iget-object v3, v0, Laxx;->h:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Laxx;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->d(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v4, v0, Laxx;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    invoke-static {v4}, Lbkh;->B(Lcom/alibaba/android/ding/base/objects/ObjectDing;)Z

    move-result v7

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v2 .. v7}, Lbih;-><init>(Landroid/app/Activity;Laxx;Landroid/view/View;ZZ)V

    .line 74
    .local v2, "holder":Lbih;
    move-object/from16 v0, p0

    iget-object v3, v0, Laxx;->g:Lbih$a;

    .line 1269
    iput-object v3, v2, Lbih;->j:Lbih$a;

    .line 75
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 79
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Laxx;->a:Ljava/util/List;

    move/from16 v0, p1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lbff;

    .line 80
    .local v9, "userObject":Lbff;
    move-object/from16 v0, p0

    iget-object v3, v0, Laxx;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v8, 0x1

    .line 81
    .local v8, "isLastPosition":Z
    :goto_1
    move-object/from16 v0, p0

    iget v7, v0, Laxx;->b:I

    .line 2082
    if-eqz v9, :cond_2

    .line 2083
    iput-object v9, v2, Lbih;->m:Lbff;

    .line 2084
    invoke-virtual {v2, v9, v7}, Lbih;->a(Lchg;I)V

    .line 2161
    if-nez v7, :cond_6

    .line 2162
    iget-object v3, v2, Lbih;->f:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2163
    iget-object v4, v2, Lbih;->f:Landroid/widget/CheckBox;

    iget-object v3, v2, Lbih;->l:Laxx;

    .line 3115
    iget-object v3, v3, Laxx;->c:Ljava/util/HashSet;

    .line 2163
    if-eqz v3, :cond_5

    iget-object v3, v2, Lbih;->l:Laxx;

    .line 4115
    iget-object v3, v3, Laxx;->c:Ljava/util/HashSet;

    .line 2163
    iget-wide v10, v9, Lchg;->e:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 4170
    :goto_3
    iget-object v3, v2, Lbih;->f:Landroid/widget/CheckBox;

    new-instance v4, Lbih$2;

    invoke-direct {v4, v2, v9}, Lbih$2;-><init>(Lbih;Lchg;)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2087
    sget v5, Laxp$c;->text_color_gray:I

    .line 2088
    const/4 v4, 0x0

    .line 2089
    const/4 v3, 0x0

    .line 2090
    const/4 v6, 0x0

    .line 2091
    iget-object v10, v2, Lbih;->l:Laxx;

    .line 5119
    iget-boolean v10, v10, Laxx;->d:Z

    .line 2091
    if-eqz v10, :cond_9

    .line 2092
    iget v10, v9, Lbff;->a:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1

    iget-wide v10, v9, Lbff;->j:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_1

    .line 2093
    iget-object v10, v2, Lbih;->l:Laxx;

    .line 6103
    iget-object v10, v10, Laxx;->e:Lcom/alibaba/android/ding/base/objects/ObjectDing;

    .line 2094
    if-eqz v10, :cond_1

    .line 2095
    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v3, v12, v14

    if-eqz v3, :cond_0

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v12

    iget-wide v14, v9, Lbff;->j:J

    cmp-long v3, v12, v14

    if-ltz v3, :cond_7

    .line 2096
    :cond_0
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Laxp$i;->dt_complete_time_at:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v9, Lbff;->j:J

    invoke-static {v12, v13}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v3, v4, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2097
    const-string/jumbo v3, ""

    .line 2116
    :cond_1
    :goto_4
    invoke-static {v9}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v10

    .line 7206
    iget-object v11, v2, Lbih;->c:Landroid/widget/TextView;

    invoke-virtual {v11, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8130
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 8131
    iget-object v6, v2, Lbih;->i:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8189
    :goto_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 8190
    iget-object v6, v2, Lbih;->d:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2119
    :goto_6
    invoke-virtual {v2, v5}, Lbih;->a(I)V

    .line 9140
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 9141
    iget-object v3, v2, Lbih;->h:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2121
    :goto_7
    check-cast p3, Landroid/widget/AbsListView;

    .line 9210
    .end local p3    # "parent":Landroid/view/ViewGroup;
    iget-object v3, v2, Lbih;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9211
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, v2, Lbih;->k:Landroid/app/Activity;

    const/high16 v6, 0x41900000    # 18.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    :goto_8
    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9212
    iget-object v3, v2, Lbih;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {v9}, Lbjh;->a(Lchg;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v9, Lchg;->g:Ljava/lang/String;

    move-object/from16 v0, p3

    invoke-virtual {v3, v5, v6, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 9213
    iget-object v3, v2, Lbih;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v5, Lbih$3;

    invoke-direct {v5, v2, v9}, Lbih$3;-><init>(Lbih;Lchg;)V

    invoke-virtual {v3, v5}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9222
    iget-object v3, v2, Lbih;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 9223
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, v2, Lbih;->k:Landroid/app/Activity;

    const/high16 v5, 0x41900000    # 18.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    :goto_9
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 9227
    iget-object v3, v2, Lbih;->a:Landroid/view/View;

    new-instance v4, Lbih$4;

    invoke-direct {v4, v2, v7, v9}, Lbih$4;-><init>(Lbih;ILchg;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9255
    :cond_2
    if-eqz v8, :cond_f

    .line 9256
    iget-object v3, v2, Lbih;->e:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 9257
    iget-object v3, v2, Lbih;->g:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :goto_a
    return-object p2

    .line 77
    .end local v2    # "holder":Lbih;
    .end local v8    # "isLastPosition":Z
    .end local v9    # "userObject":Lbff;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbih;

    .restart local v2    # "holder":Lbih;
    goto/16 :goto_0

    .line 80
    .restart local v9    # "userObject":Lbff;
    :cond_4
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 2163
    .restart local v8    # "isLastPosition":Z
    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_2

    .line 2165
    :cond_6
    iget-object v3, v2, Lbih;->f:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto/16 :goto_3

    .line 2099
    :cond_7
    iget-wide v4, v9, Lbff;->j:J

    invoke-virtual {v10}, Lcom/alibaba/android/ding/base/objects/ObjectDing;->i()J

    move-result-wide v10

    .line 6265
    sub-long/2addr v4, v10

    const-wide/32 v10, 0x5265c00

    div-long/2addr v4, v10

    long-to-int v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 2100
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Laxp$i;->dt_finished_dalay:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-wide v12, v9, Lbff;->j:J

    invoke-static {v12, v13}, Lbkb;->a(J)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v4, v5, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2101
    const/4 v5, 0x1

    if-le v3, v5, :cond_8

    .line 2102
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v5

    invoke-virtual {v5}, Lcid;->c()Landroid/app/Application;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Laxp$i;->dt_overdue_days:I

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v11, v12

    invoke-virtual {v5, v10, v11}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2104
    :goto_b
    sget v5, Laxp$c;->uidic_global_color_c11_3:I

    goto/16 :goto_4

    .line 2103
    :cond_8
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v3

    invoke-virtual {v3}, Lcid;->c()Landroid/app/Application;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Laxp$i;->dt_overdue_during_days:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const-string/jumbo v12, "1"

    aput-object v12, v10, v11

    invoke-virtual {v3, v5, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_b

    .line 2109
    :cond_9
    iget-object v4, v2, Lbih;->h:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2110
    iget-wide v10, v9, Lbff;->i:J

    const-wide/16 v12, 0x0

    cmp-long v4, v10, v12

    if-gtz v4, :cond_10

    .line 2111
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v6, Laxp$i;->dt_ding_task_status_unread:I

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2113
    :goto_c
    invoke-virtual {v9}, Lbff;->a()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v16, v4

    move-object v4, v6

    move-object/from16 v6, v16

    goto/16 :goto_4

    .line 8133
    :cond_a
    iget-object v10, v2, Lbih;->i:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8134
    iget-object v10, v2, Lbih;->i:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 8192
    :cond_b
    iget-object v6, v2, Lbih;->d:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8193
    iget-object v6, v2, Lbih;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 9143
    :cond_c
    iget-object v5, v2, Lbih;->h:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 9144
    iget-object v5, v2, Lbih;->h:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 9211
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_d
    iget-object v5, v2, Lbih;->k:Landroid/app/Activity;

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v5, v6}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    goto/16 :goto_8

    .line 9223
    :cond_e
    iget-object v4, v2, Lbih;->k:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    goto/16 :goto_9

    .line 9259
    :cond_f
    iget-object v3, v2, Lbih;->g:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 9260
    iget-object v3, v2, Lbih;->e:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_a

    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_10
    move-object v4, v6

    goto :goto_c
.end method
