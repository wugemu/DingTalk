.class public Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
.source "CSpaceGroupFolderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;,
        Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter",
        "<",
        "Lgiy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;

.field public b:J

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->m:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/widget/TextView;J)V
    .locals 2
    .param p1, "tvSize"    # Landroid/widget/TextView;
    .param p2, "size"    # J

    .prologue
    .line 143
    if-nez p1, :cond_0

    .line 151
    :goto_0
    return-void

    .line 146
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 3046
    invoke-static {p2, p3}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->m:Landroid/content/Context;

    sget v1, Lfzs$h;->cspace_no_file:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(I)V
    .locals 0
    .param p1, "mMode"    # I

    .prologue
    .line 154
    iput p1, p0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->d:I

    .line 155
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "i"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    .line 49
    if-nez p2, :cond_1

    .line 50
    new-instance v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v12, v0, v2}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;B)V

    .line 51
    .local v12, "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lfzs$g;->cspace_group_sub_item:I

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 52
    sget v2, Lfzs$f;->img_icon:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->a:Landroid/widget/ImageView;

    .line 53
    sget v2, Lfzs$f;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->b:Landroid/widget/TextView;

    .line 54
    sget v2, Lfzs$f;->tv_safe_mode:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->c:Landroid/widget/TextView;

    .line 55
    sget v2, Lfzs$f;->if_show_more:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 56
    sget v2, Lfzs$f;->tv_time:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->e:Landroid/widget/TextView;

    .line 57
    sget v2, Lfzs$f;->tv_capacity:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->f:Landroid/widget/TextView;

    .line 58
    sget v2, Lfzs$f;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->g:Landroid/view/View;

    .line 59
    sget v2, Lfzs$f;->bottom_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->h:Landroid/view/View;

    .line 60
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 66
    :goto_0
    add-int/lit8 v2, p1, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 67
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->h:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 68
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->g:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 74
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgiy;

    .line 75
    .local v4, "model":Lgiy;
    if-nez v4, :cond_3

    .line 102
    :cond_0
    :goto_2
    return-object p2

    .line 62
    .end local v4    # "model":Lgiy;
    .end local v12    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;

    .restart local v12    # "viewHolder":Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;
    goto :goto_0

    .line 70
    :cond_2
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->g:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->h:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 78
    .restart local v4    # "model":Lgiy;
    :cond_3
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->b:Landroid/widget/TextView;

    iget-object v3, v4, Lgiy;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v2, v4, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "S_M_T"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 81
    :try_start_0
    iget-object v2, v4, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "S_M_T"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 82
    .local v10, "modifyTime":J
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->e:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->e:Landroid/widget/TextView;

    invoke-static {v10, v11}, Lgqh;->b(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    .end local v10    # "modifyTime":J
    :goto_3
    iget-object v2, v4, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "S_U_Q"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 92
    :try_start_1
    iget-object v2, v4, Lgiy;->f:Ljava/util/Map;

    const-string/jumbo v3, "S_U_Q"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 93
    .local v8, "capacity":Ljava/lang/String;
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->f:Landroid/widget/TextView;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a(Landroid/widget/TextView;J)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 100
    .end local v8    # "capacity":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->b:J

    iget-object v13, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->d:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v14, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->c:Landroid/widget/TextView;

    .line 1109
    if-eqz v4, :cond_0

    iget-object v2, v4, Lgiy;->f:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 1113
    invoke-static {v4}, Lgps;->a(Lgiy;)Ljava/lang/String;

    move-result-object v2

    .line 2109
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v16

    .line 1115
    iget-object v2, v4, Lgiy;->l:Ljava/lang/Long;

    if-nez v2, :cond_6

    const-wide/16 v2, 0x0

    .line 1116
    :goto_5
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Lgpt;->a(Ljava/lang/Long;)Z

    move-result v5

    .line 1117
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Lfzv;->a(Ljava/lang/Long;)Z

    move-result v2

    .line 1119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a:Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v3, v14, v2, v15}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$a;->a(Landroid/widget/TextView;ZLjava/lang/String;)V

    .line 1122
    move-object/from16 v0, p0

    iget v2, v0, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->d:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    if-eqz v5, :cond_7

    .line 1123
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1124
    new-instance v2, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;Lgiy;ZJ)V

    invoke-virtual {v13, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    :catch_0
    move-exception v2

    .line 88
    :cond_4
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->e:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 94
    :catch_1
    move-exception v9

    .line 95
    .local v9, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v9}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_4

    .line 98
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    iget-object v2, v12, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter$b;->f:Landroid/widget/TextView;

    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v7}, Lcom/alibaba/dingtalk/cspace/adapter/CSpaceGroupFolderAdapter;->a(Landroid/widget/TextView;J)V

    goto :goto_4

    .line 1115
    :cond_6
    iget-object v2, v4, Lgiy;->l:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_5

    .line 1132
    :cond_7
    const/16 v2, 0x8

    invoke-virtual {v13, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 1133
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method
