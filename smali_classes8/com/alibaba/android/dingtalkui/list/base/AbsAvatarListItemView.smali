.class public abstract Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;
.super Lcom/alibaba/android/dingtalkui/list/base/ListItemView;
.source "AbsAvatarListItemView.java"


# instance fields
.field protected a:I

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/view/View;

.field protected d:Landroid/widget/ImageView;

.field protected e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/ListItemView;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->f:Z

    .line 40
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v1, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/ListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    iput v5, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    .line 35
    iput-boolean v6, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->f:Z

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a()V

    .line 1074
    if-eqz p2, :cond_2

    .line 1078
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lecj$i;->ListItemView:[I

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1079
    if-eqz v0, :cond_0

    .line 1080
    sget v2, Lecj$i;->ListItemView_list_title:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1081
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setTitle(Ljava/lang/String;)V

    .line 1084
    sget v2, Lecj$i;->ListItemView_list_title_right_drawable:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1085
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setTitleRightDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1088
    sget v2, Lecj$i;->ListItemView_list_bottom_divider_visible:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 1089
    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setBottomDividerVisible(Z)V

    .line 1092
    sget v2, Lecj$i;->ListItemView_android_enabled:I

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->f:Z

    .line 1094
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1098
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lecj$i;->AbsAvatarListItemView:[I

    invoke-virtual {v0, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 1099
    if-eqz v2, :cond_2

    .line 1101
    sget v0, Lecj$i;->AbsAvatarListItemView_list_avatar_type:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1102
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setAvatarType(I)V

    .line 1104
    sget v0, Lecj$i;->AbsAvatarListItemView_list_avatar_size:I

    invoke-virtual {v2, v0, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 1233
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1104
    :goto_0
    float-to-int v0, v0

    .line 1107
    iget v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1108
    sget v1, Lecj$i;->AbsAvatarListItemView_list_avatar_image:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1109
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setImageAvatarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1111
    sget v1, Lecj$i;->AbsAvatarListItemView_list_avatar_background:I

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1112
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1113
    if-lez v0, :cond_1

    .line 1114
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1115
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1116
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1139
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_2
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/util/AttributeSet;I)V

    .line 56
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->f:Z

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setEnabled(Z)V

    .line 57
    return-void

    .line 1235
    :pswitch_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lecj$c;->ui_common_list_avatar_size_small:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 1238
    :pswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lecj$c;->ui_common_list_avatar_size_normal:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 1241
    :pswitch_2
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lecj$c;->ui_common_list_avatar_size_large:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 1119
    :cond_3
    iget v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    if-ne v3, v6, :cond_1

    .line 1120
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    sget v4, Lecj$i;->AbsAvatarListItemView_list_avatar_background:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1121
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    sget v4, Lecj$i;->AbsAvatarListItemView_list_avatar_iconfont_text:I

    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1122
    sget v3, Lecj$i;->AbsAvatarListItemView_list_avatar_iconfont_size:I

    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 1123
    cmpl-float v1, v3, v1

    if-lez v1, :cond_4

    .line 1124
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v1, v5, v3}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextSize(IF)V

    .line 1127
    :cond_4
    sget v1, Lecj$i;->AbsAvatarListItemView_list_avatar_iconfont_color:I

    invoke-virtual {v2, v1, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 1128
    if-eq v1, v7, :cond_5

    .line 1129
    iget-object v3, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v3, v1}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextColor(I)V

    .line 1132
    :cond_5
    if-lez v0, :cond_1

    .line 1133
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1134
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1135
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 1233
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public abstract a()V
.end method

.method public abstract a(Landroid/util/AttributeSet;I)V
.end method

.method public abstract b()V
.end method

.method public setAvatarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 217
    iget v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setAvatarType(I)V
    .locals 3
    .param p1, "avatarType"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 185
    iget v2, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    if-ne v2, p1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 188
    :cond_0
    iput p1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    .line 189
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 190
    .local v0, "showAvatar":Z
    :goto_1
    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {p0, v1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->setAvatarVisibility(I)V

    .line 192
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b()V

    goto :goto_0

    .end local v0    # "showAvatar":Z
    :cond_1
    move v0, v1

    .line 189
    goto :goto_1

    .line 190
    .restart local v0    # "showAvatar":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_2
.end method

.method public setAvatarVisibility(I)V
    .locals 3
    .param p1, "visibility"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 175
    iget v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 176
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;I)V

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    iget v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-static {v0, v2}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;I)V

    .line 180
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public setBottomDividerVisible(Z)V
    .locals 2
    .param p1, "show"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 155
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->c:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 158
    :cond_0
    return-void

    .line 156
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 226
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkui/list/base/ListItemView;->setEnabled(Z)V

    .line 227
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;Z)V

    .line 228
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;Z)V

    .line 229
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-static {v0, p1}, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->a(Landroid/view/View;Z)V

    .line 230
    return-void
.end method

.method public setIconfontAvatar(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setText(I)V

    .line 208
    :cond_0
    return-void
.end method

.method public setIconfontAvatarColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->e:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextColor(I)V

    .line 214
    :cond_0
    return-void
.end method

.method public setImageAvatarDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 202
    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    return-void
.end method

.method public setTitleRightDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 145
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p1, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkui/list/base/AbsAvatarListItemView;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_1
    return-void
.end method
