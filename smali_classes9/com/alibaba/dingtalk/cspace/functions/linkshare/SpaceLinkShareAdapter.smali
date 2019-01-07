.class public Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;
.super Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;
.source "SpaceLinkShareAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;,
        Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter",
        "<",
        "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

.field private final b:Landroid/graphics/ColorMatrixColorFilter;

.field private final d:Landroid/graphics/ColorMatrixColorFilter;

.field private e:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 54
    .local v0, "colorMatrix":Landroid/graphics/ColorMatrix;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 55
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->b:Landroid/graphics/ColorMatrixColorFilter;

    .line 56
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 57
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->d:Landroid/graphics/ColorMatrixColorFilter;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;)Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->a:Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 66
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;>;"
    invoke-static {}, Lgqh;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->e:J

    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/dingtalk/cspace/listbase/CSpaceListBaseAdapter;->a(Ljava/util/List;)V

    .line 69
    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 73
    invoke-virtual {p0, p1}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;

    .line 75
    .local v0, "model":Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;
    if-nez v0, :cond_0

    move-object v2, v3

    .line 144
    :goto_0
    return-object v2

    .line 81
    :cond_0
    if-nez p2, :cond_1

    .line 82
    new-instance v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;

    invoke-direct {v1, p0, v8}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;B)V

    .line 83
    .local v1, "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->m:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v4, Lfzs$g;->cspace_recent_opreation_item:I

    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 84
    sget v2, Lfzs$f;->checkbox:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->h:Landroid/widget/CheckBox;

    .line 85
    sget v2, Lfzs$f;->img_file_icon:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->i:Landroid/widget/ImageView;

    .line 86
    sget v2, Lfzs$f;->img_more_operation_button:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 87
    sget v2, Lfzs$f;->tv_file_name:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->a:Landroid/widget/TextView;

    .line 88
    sget v2, Lfzs$f;->tv_expired_flag:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 2151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->d:Landroid/widget/TextView;

    .line 89
    sget v2, Lfzs$f;->tv_file_path:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->b:Landroid/widget/TextView;

    .line 90
    sget v2, Lfzs$f;->tv_info_2:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 4151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->c:Landroid/widget/TextView;

    .line 91
    sget v2, Lfzs$f;->bottom_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 5151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->e:Landroid/view/View;

    .line 92
    sget v2, Lfzs$f;->bottom_full_line:I

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 6151
    iput-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->f:Landroid/view/View;

    .line 94
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 99
    :goto_1
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->c:I

    if-ne v2, v6, :cond_2

    .line 100
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-static {v2, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 101
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v3, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;

    invoke-direct {v3, p0, v0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$1;-><init>(Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)V

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    :goto_2
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->i:Landroid/widget/ImageView;

    sget v3, Lfzs$e;->file_link_36:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 7151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->a:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getShareName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->e:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    .line 8151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->d:Landroid/widget/TextView;

    .line 119
    invoke-static {v2, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 120
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->b:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 10151
    :goto_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->b:Landroid/widget/TextView;

    .line 126
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->m:Landroid/content/Context;

    sget v4, Lfzs$h;->dt_cspace_file_expired_date_at:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getExpireTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Lgqh;->c(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->c:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v0}, Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;->getFileLength()J

    move-result-wide v4

    .line 12046
    invoke-static {v4, v5}, Lcms;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 127
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p1, v2, :cond_4

    .line 12151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->e:Landroid/view/View;

    .line 130
    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 13151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->f:Landroid/view/View;

    .line 131
    invoke-static {v2, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 137
    :goto_4
    iget v2, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->c:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 138
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->h:Landroid/widget/CheckBox;

    invoke-static {v2, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 139
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->h:Landroid/widget/CheckBox;

    invoke-static {}, Lgez;->c()Lgez;

    move-result-object v3

    invoke-virtual {v3, v0}, Lgez;->b(Lcom/alibaba/dingtalk/cspace/model/SpaceLinkShareModel;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_5
    move-object v2, p2

    .line 144
    goto/16 :goto_0

    .line 96
    .end local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;

    .restart local v1    # "viewHolder":Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;
    goto/16 :goto_1

    .line 110
    :cond_2
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v4, 0x4

    invoke-static {v2, v4}, Lgpk;->a(Landroid/view/View;I)V

    .line 111
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->j:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 9151
    :cond_3
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->d:Landroid/widget/TextView;

    .line 122
    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    .line 123
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->i:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter;->d:Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_3

    .line 14151
    :cond_4
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->e:Landroid/view/View;

    .line 133
    invoke-static {v2, v8}, Lgpk;->a(Landroid/view/View;I)V

    .line 15151
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->f:Landroid/view/View;

    .line 134
    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_4

    .line 141
    :cond_5
    iget-object v2, v1, Lcom/alibaba/dingtalk/cspace/functions/linkshare/SpaceLinkShareAdapter$b;->h:Landroid/widget/CheckBox;

    invoke-static {v2, v9}, Lgpk;->a(Landroid/view/View;I)V

    goto :goto_5
.end method
