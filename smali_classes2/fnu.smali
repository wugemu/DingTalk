.class public final Lfnu;
.super Lfxq;
.source "LabelSettingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfnu$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfxq",
        "<",
        "Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;",
        ">;"
    }
.end annotation


# instance fields
.field private a:J


# direct methods
.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "orgId"    # J

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lfxq;-><init>(Landroid/app/Activity;)V

    .line 54
    iput-wide p2, p0, Lfnu;->a:J

    .line 55
    return-void
.end method

.method static synthetic a(Lfnu;)J
    .locals 2
    .param p0, "x0"    # Lfnu;

    .prologue
    .line 48
    iget-wide v0, p0, Lfnu;->a:J

    return-wide v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 60
    if-nez p2, :cond_0

    .line 61
    new-instance v0, Lfnu$a;

    invoke-direct {v0, p0}, Lfnu$a;-><init>(Lfnu;)V

    .line 62
    .local v0, "holder":Lfnu$a;
    iget-object v3, p0, Lfnu;->i:Landroid/app/Activity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lezg$j;->item_label_group:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 63
    sget v3, Lezg$h;->tv_title:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lfnu$a;->a:Landroid/widget/TextView;

    .line 64
    sget v3, Lezg$h;->label_list_layout:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    iput-object v3, v0, Lfnu$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 65
    sget v3, Lezg$h;->divider_line:I

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lfnu$a;->c:Landroid/view/View;

    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 71
    :goto_0
    iget-object v3, p0, Lfnu;->h:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;

    .line 72
    .local v1, "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    if-nez v1, :cond_1

    .line 73
    const/4 p2, 0x0

    .line 99
    .end local p2    # "convertView":Landroid/view/View;
    :goto_1
    return-object p2

    .line 68
    .end local v0    # "holder":Lfnu$a;
    .end local v1    # "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfnu$a;

    .restart local v0    # "holder":Lfnu$a;
    goto :goto_0

    .line 76
    .restart local v1    # "labelGroupObject":Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;
    :cond_1
    iget-object v3, v0, Lfnu$a;->a:Landroid/widget/TextView;

    iget-object v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v3, v0, Lfnu$a;->c:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 79
    .local v2, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v3, p0, Lfnu;->h:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_4

    const/4 v3, 0x0

    :goto_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 81
    iget-object v9, v0, Lfnu$a;->b:Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;

    .line 1104
    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_5

    .line 1105
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 83
    :cond_3
    new-instance v3, Lfnu$1;

    invoke-direct {v3, p0, v1}, Lfnu$1;-><init>(Lfnu;Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;)V

    invoke-virtual {p2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 79
    :cond_4
    iget-object v3, p0, Lfnu;->i:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    goto :goto_2

    .line 1107
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->setVisibility(I)V

    .line 1109
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildCount()I

    move-result v5

    .line 1110
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 1111
    if-le v5, v6, :cond_8

    move v4, v5

    .line 1112
    :goto_3
    iget-object v3, p0, Lfnu;->i:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v3, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v10

    .line 1113
    const/4 v3, 0x0

    move v8, v3

    :goto_4
    if-ge v8, v4, :cond_3

    .line 1114
    const/4 v3, 0x0

    .line 1115
    if-ge v8, v6, :cond_b

    .line 1116
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/LabelGroupObject;->labels:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;

    move-object v7, v3

    .line 1119
    :goto_5
    const/4 v3, 0x0

    .line 1120
    if-ge v8, v5, :cond_6

    .line 1121
    invoke-virtual {v9, v8}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    .line 1124
    :cond_6
    if-nez v7, :cond_9

    if-eqz v3, :cond_9

    .line 1125
    const/16 v7, 0x8

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1113
    :cond_7
    :goto_6
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto :goto_4

    :cond_8
    move v4, v6

    .line 1111
    goto :goto_3

    .line 1126
    :cond_9
    if-eqz v7, :cond_7

    .line 1127
    if-nez v3, :cond_a

    .line 1128
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;

    iget-object v11, p0, Lfnu;->i:Landroid/app/Activity;

    invoke-direct {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;-><init>(Landroid/content/Context;)V

    .line 1129
    const/4 v11, 0x1

    const/high16 v12, 0x41400000    # 12.0f

    invoke-virtual {v3, v11, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextSize(IF)V

    .line 1130
    sget-object v11, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 1131
    const/4 v11, 0x1

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setLines(I)V

    .line 1132
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1133
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v3, v10, v11, v10, v12}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setPadding(IIII)V

    .line 1134
    const/16 v11, 0x10

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setGravity(I)V

    .line 1135
    iget-object v11, p0, Lfnu;->i:Landroid/app/Activity;

    const/high16 v12, 0x42c80000    # 100.0f

    invoke-static {v11, v12}, Lcms;->c(Landroid/content/Context;F)I

    move-result v11

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setMaxWidth(I)V

    .line 1136
    invoke-virtual {v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/LabelLayout;->addView(Landroid/view/View;)V

    .line 1138
    :cond_a
    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setVisibility(I)V

    .line 1139
    iget-object v11, v7, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->name:Ljava/lang/String;

    invoke-virtual {v3, v11}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/LabelObject;->color:I

    invoke-virtual {v3, v7}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->setTextColor(I)V

    .line 1141
    invoke-virtual {v3}, Lcom/alibaba/android/dingtalkbase/widgets/views/label/ColorLabelTextView;->requestLayout()V

    goto :goto_6

    :cond_b
    move-object v7, v3

    goto :goto_5
.end method
