.class final Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;
.super Landroid/widget/BaseAdapter;
.source "AvatarSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x2

    .line 159
    iget-object v1, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 162
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v0}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 6
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 168
    mul-int/lit8 v0, p1, 0x2

    .line 169
    .local v0, "p0":I
    add-int/lit8 v1, v0, 0x1

    .line 170
    .local v1, "p1":I
    if-ne v0, v3, :cond_0

    .line 171
    const/4 v0, 0x1

    .line 173
    :cond_0
    if-ne v1, v5, :cond_1

    .line 174
    const/4 v1, 0x2

    .line 176
    :cond_1
    new-array v2, v3, [Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    .line 177
    .local v2, "result":[Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 178
    const/4 v4, 0x0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    aput-object v3, v2, v4

    .line 180
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 181
    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->a(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    aput-object v3, v2, v5

    .line 183
    :cond_3
    return-object v2
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 188
    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 194
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    move-object v0, v2

    check-cast v0, [Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;

    .line 195
    .local v0, "data":[Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;
    if-nez p2, :cond_2

    .line 196
    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lctk$g;->im_avatar_setting_item:I

    invoke-static {v2, v3, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 197
    new-instance v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-direct {v1, v2, p2}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;-><init>(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;Landroid/view/View;)V

    .line 198
    .local v1, "holder":Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 203
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v2, :cond_0

    .line 204
    aget-object v2, v0, v6

    if-eqz v2, :cond_6

    .line 205
    aget-object v2, v0, v6

    iget v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    if-ne v2, v8, :cond_3

    .line 206
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Lctk$e;->avatar_setting_take_photo:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 207
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    sget v4, Lctk$i;->dt_accessibility_choose_from_album:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 228
    :goto_1
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 230
    :cond_0
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    if-eqz v2, :cond_1

    .line 231
    aget-object v2, v0, v8

    if-eqz v2, :cond_a

    .line 232
    aget-object v2, v0, v8

    iget v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->a:I

    if-ne v2, v8, :cond_7

    .line 233
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    sget v3, Lctk$e;->avatar_setting_take_photo:I

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    .line 234
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    sget v4, Lctk$i;->dt_accessibility_choose_from_album:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 235
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_2
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setTag(Ljava/lang/Object;)V

    .line 258
    :cond_1
    return-object p2

    .line 200
    .end local v1    # "holder":Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;

    .restart local v1    # "holder":Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;
    goto :goto_0

    .line 210
    :cond_3
    aget-object v2, v0, v6

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 211
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 212
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v0, v6

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    sget v4, Lctk$i;->dt_accessibility_grid_avatar_num_at:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    mul-int/lit8 v5, p1, 0x2

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 214
    aget-object v2, v0, v6

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 215
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 217
    :cond_4
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 220
    :cond_5
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 221
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 225
    :cond_6
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 226
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->b:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 237
    :cond_7
    aget-object v2, v0, v8

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 238
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 239
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    aget-object v3, v0, v8

    iget-object v3, v3, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v9, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    sget v4, Lctk$i;->dt_accessibility_grid_avatar_num_at:I

    invoke-virtual {v3, v4}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v8, [Ljava/lang/Object;

    mul-int/lit8 v5, p1, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 241
    aget-object v2, v0, v8

    iget-object v2, v2, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$2;->a:Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;

    invoke-static {v3}, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;->b(Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 242
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 244
    :cond_8
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 247
    :cond_9
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 248
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 252
    :cond_a
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 253
    iget-object v2, v1, Lcom/alibaba/android/dingtalkim/fragments/AvatarSettingFragment$b;->d:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2
.end method
