.class public final Lhrw$a;
.super Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;
.source "PopupDropListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhrw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter",
        "<",
        "Lhrv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic c:Lhrw;

.field private final d:Landroid/view/LayoutInflater;

.field private e:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Lhrw;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    iput-object p1, p0, Lhrw$a;->c:Lhrw;

    .line 141
    invoke-direct {p0, p2}, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lhrw$a;->d:Landroid/view/LayoutInflater;

    .line 144
    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "parent"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 152
    if-nez p2, :cond_3

    .line 153
    new-instance v10, Lhrw$c;

    invoke-direct {v10, v5}, Lhrw$c;-><init>(B)V

    .line 154
    .local v10, "viewHolder":Lhrw$c;
    iget-object v0, p0, Lhrw$a;->d:Landroid/view/LayoutInflater;

    sget v1, Lhdn$i;->drop_list_cell_layout:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 155
    .local v9, "view":Landroid/view/View;
    sget v0, Lhdn$h;->drop_item_icon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, v10, Lhrw$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 156
    sget v0, Lhdn$h;->drop_item_title:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lhrw$c;->b:Landroid/widget/TextView;

    .line 157
    sget v0, Lhdn$h;->drop_badge_tv:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lhrw$c;->c:Landroid/widget/TextView;

    .line 158
    sget v0, Lhdn$h;->drop_item_checked:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v10, Lhrw$c;->d:Landroid/view/View;

    .line 159
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    :goto_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lhrw$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 166
    iget-object v0, p0, Lhrw$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lhrv;

    .line 168
    .local v8, "item":Lhrv;
    iget-object v0, p0, Lhrw$a;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 169
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lhrw$a;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 172
    :cond_0
    iget-object v0, v8, Lhrv;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    iget-object v0, p0, Lhrw$a;->e:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v10, Lhrw$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v2, v8, Lhrv;->b:Ljava/lang/String;

    move-object v3, p3

    check-cast v3, Landroid/widget/AbsListView;

    const/4 v7, 0x0

    move v6, v5

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 178
    .end local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    iget-object v0, v10, Lhrw$c;->b:Landroid/widget/TextView;

    iget-object v1, v8, Lhrv;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, v8, Lhrv;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 180
    iget-object v0, v10, Lhrw$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v0, v10, Lhrw$c;->c:Landroid/widget/TextView;

    iget-object v1, v8, Lhrv;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    :goto_2
    iget-object v1, v10, Lhrw$c;->d:Landroid/view/View;

    iget-boolean v0, v8, Lhrv;->i:Z

    if-eqz v0, :cond_7

    move v0, v5

    :goto_3
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 190
    iget-boolean v0, v8, Lhrv;->i:Z

    if-eqz v0, :cond_8

    .line 191
    iget-object v0, v10, Lhrw$c;->d:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 192
    iget-object v0, v10, Lhrw$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lhrw$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_theme_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 199
    .end local v8    # "item":Lhrv;
    :cond_2
    :goto_4
    return-object v9

    .line 161
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewHolder":Lhrw$c;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_3
    move-object v9, p2

    .line 162
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lhrw$c;

    .restart local v10    # "viewHolder":Lhrw$c;
    goto :goto_0

    .line 174
    .restart local v8    # "item":Lhrv;
    :cond_4
    iget-object v0, v8, Lhrv;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v8, Lhrv;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    :cond_5
    iget-object v0, v10, Lhrw$c;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v1, v8, Lhrv;->e:Ljava/lang/String;

    iget-object v2, v8, Lhrv;->d:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, v1, v2, p3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_1

    .line 183
    :cond_6
    iget-object v0, v10, Lhrw$c;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_7
    move v0, v4

    .line 189
    goto :goto_3

    .line 194
    :cond_8
    iget-object v0, v10, Lhrw$c;->d:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v0, v10, Lhrw$c;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lhrw$a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lhdn$e;->ui_common_level1_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4
.end method
