.class public final Lcrr;
.super Landroid/widget/BaseAdapter;
.source "EmotionListViewAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation
.end field

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field private h:Landroid/content/Context;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "emotionClickListener"    # Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrr;->a:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcrr;->b:Ljava/util/List;

    .line 36
    if-nez p1, :cond_0

    .line 37
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "context cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    iput-object p1, p0, Lcrr;->h:Landroid/content/Context;

    .line 40
    const/4 v0, 0x1

    iput v0, p0, Lcrr;->c:I

    .line 41
    iget-object v0, p0, Lcrr;->h:Landroid/content/Context;

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcrr;->d:I

    .line 42
    iget v0, p0, Lcrr;->d:I

    iput v0, p0, Lcrr;->e:I

    .line 43
    iput-object p2, p0, Lcrr;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    .line 44
    return-void
.end method

.method private a(I)Ljava/util/List;
    .locals 4
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 87
    if-gez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-object v0

    .line 90
    :cond_1
    iget v1, p0, Lcrr;->f:I

    if-ge p1, v1, :cond_3

    .line 91
    iget v0, p0, Lcrr;->f:I

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_2

    .line 92
    iget-object v0, p0, Lcrr;->a:Ljava/util/List;

    iget v1, p0, Lcrr;->c:I

    mul-int/2addr v1, p1

    iget-object v2, p0, Lcrr;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcrr;->a:Ljava/util/List;

    iget v1, p0, Lcrr;->c:I

    mul-int/2addr v1, p1

    iget v2, p0, Lcrr;->c:I

    add-int/lit8 v3, p1, 0x1

    mul-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_3
    iget v1, p0, Lcrr;->f:I

    iget v2, p0, Lcrr;->g:I

    add-int/2addr v1, v2

    if-ge p1, v1, :cond_0

    .line 97
    iget v0, p0, Lcrr;->f:I

    iget v1, p0, Lcrr;->g:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_4

    .line 98
    iget-object v0, p0, Lcrr;->b:Ljava/util/List;

    iget v1, p0, Lcrr;->c:I

    iget v2, p0, Lcrr;->f:I

    sub-int v2, p1, v2

    mul-int/2addr v1, v2

    iget-object v2, p0, Lcrr;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_4
    iget-object v0, p0, Lcrr;->b:Ljava/util/List;

    iget v1, p0, Lcrr;->c:I

    iget v2, p0, Lcrr;->f:I

    sub-int v2, p1, v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcrr;->c:I

    iget v3, p0, Lcrr;->f:I

    sub-int v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 82
    iget v0, p0, Lcrr;->f:I

    iget v1, p0, Lcrr;->g:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcrr;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 108
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 114
    if-nez p2, :cond_2

    .line 115
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    iget-object v3, p0, Lcrr;->h:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;-><init>(Landroid/content/Context;)V

    .line 116
    .local v0, "emotionListItemView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;
    iget-object v3, p0, Lcrr;->i:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 120
    :goto_0
    if-nez p1, :cond_3

    iget v3, p0, Lcrr;->f:I

    if-lez v3, :cond_3

    const/4 v2, 0x1

    .line 121
    .local v2, "showHeader":Z
    :goto_1
    iget v3, p0, Lcrr;->f:I

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    const/4 v1, 0x1

    .line 122
    .local v1, "showFooterLine":Z
    :goto_2
    iget v5, p0, Lcrr;->c:I

    iget v4, p0, Lcrr;->d:I

    iget v7, p0, Lcrr;->e:I

    .line 1063
    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object v6, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->b:Landroid/view/View;

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1065
    if-gez v5, :cond_12

    .line 1066
    const/4 v3, 0x0

    move v6, v3

    .line 1068
    :goto_5
    if-gez v7, :cond_0

    .line 1069
    const/4 v7, 0x0

    .line 1071
    :cond_0
    if-gez v4, :cond_11

    .line 1072
    const/4 v3, 0x0

    move v5, v3

    .line 1075
    :goto_6
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v6, v3, :cond_8

    .line 1076
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v6, :cond_7

    .line 1077
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move v4, v3

    .line 1078
    :goto_7
    if-lt v4, v6, :cond_a

    .line 1079
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .line 1080
    if-eqz v3, :cond_1

    .line 1081
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 1082
    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1084
    :cond_1
    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1078
    add-int/lit8 v3, v4, -0x1

    move v4, v3

    goto :goto_7

    .end local v0    # "emotionListItemView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;
    .end local v1    # "showFooterLine":Z
    .end local v2    # "showHeader":Z
    :cond_2
    move-object v0, p2

    .line 118
    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;

    .restart local v0    # "emotionListItemView":Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;
    goto :goto_0

    .line 120
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 121
    .restart local v2    # "showHeader":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .line 1063
    .restart local v1    # "showFooterLine":Z
    :cond_5
    const/16 v3, 0x8

    goto :goto_3

    .line 1064
    :cond_6
    const/16 v3, 0x8

    goto :goto_4

    .line 1086
    :cond_7
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v6, :cond_a

    .line 1087
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 1088
    :goto_8
    if-ge v3, v6, :cond_a

    .line 1089
    new-instance v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;-><init>(Landroid/content/Context;)V

    .line 1090
    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->f:Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;

    invoke-virtual {v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->setListener(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$b;)V

    .line 1091
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v8, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1092
    iget-object v9, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v4, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    iget-object v8, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1088
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1097
    :cond_8
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .line 1098
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v6, :cond_9

    .line 1099
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 1100
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1101
    const/4 v6, 0x0

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1102
    const/4 v6, -0x2

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_9

    .line 1107
    :cond_a
    const/4 v3, 0x0

    move v6, v3

    :goto_a
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v6, v3, :cond_e

    .line 1108
    iget-object v3, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->e:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;

    .line 2055
    if-gez v5, :cond_10

    .line 2056
    const/4 v4, 0x0

    move v8, v4

    .line 2058
    :goto_b
    if-gez v7, :cond_f

    .line 2059
    const/4 v4, 0x0

    .line 2061
    :goto_c
    iget-object v9, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    .line 2062
    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v10, v8, :cond_b

    iget v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v10, v4, :cond_c

    .line 2063
    :cond_b
    iput v8, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2064
    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2065
    iget-object v4, v3, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a:Landroid/widget/ImageView;

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1110
    :cond_c
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_d

    .line 1111
    iget-object v4, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->d:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    .line 1107
    :goto_d
    add-int/lit8 v3, v6, 0x1

    move v6, v3

    goto :goto_a

    .line 1113
    :cond_d
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionView;->a(Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionGridView$a;)V

    goto :goto_d

    .line 123
    :cond_e
    invoke-direct {p0, p1}, Lcrr;->a(I)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/Emotion/EmotionListItemView;->a(Ljava/util/List;)V

    .line 125
    return-object v0

    :cond_f
    move v4, v7

    goto :goto_c

    :cond_10
    move v8, v5

    goto :goto_b

    :cond_11
    move v5, v4

    goto/16 :goto_6

    :cond_12
    move v6, v5

    goto/16 :goto_5
.end method
