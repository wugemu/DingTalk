.class public Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;
.super Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;
.source "NavigationItemListManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ToolbarItemListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter",
        "<",
        "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/alibaba/doraemon/image/ImageMagician;

.field private final d:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/alibaba/lightapp/runtime/adapter/ArrayListAdapter;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->d:Landroid/view/LayoutInflater;

    .line 71
    return-void
.end method

.method private static a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Lbrt;)V
    .locals 5
    .param p0, "anchorView"    # Landroid/view/View;
    .param p1, "menuItem"    # Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    .param p2, "badge"    # Lbrt;

    .prologue
    const/4 v4, 0x0

    .line 131
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    if-nez p2, :cond_1

    .line 205
    .end local p1    # "menuItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_0
    :goto_0
    return-void

    .line 136
    .restart local p1    # "menuItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_1
    instance-of v2, p1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    if-eqz v2, :cond_2

    move-object v2, p1

    check-cast v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 138
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    move-object v2, v0

    .line 4137
    const/4 v2, 0x0

    .line 138
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Lbrt;->a(I)Lbrt;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 147
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 148
    invoke-interface {p2, p0}, Lbrt;->a(Landroid/view/View;)Lbrt;

    move-object v2, p1

    .line 150
    check-cast v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v3, "1"

    move-object v2, p1

    check-cast v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 151
    const v2, 0x800055

    invoke-interface {p2, v2}, Lbrt;->c(I)Lbrt;

    :goto_2
    move-object v2, p1

    .line 156
    check-cast v2, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 158
    :try_start_1
    move-object v0, p1

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    move-object v2, v0

    .line 6173
    const/4 v2, 0x0

    .line 158
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p2, v2}, Lbrt;->b(I)Lbrt;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 166
    :goto_3
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadge()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lbrt;->a(Ljava/lang/String;)Lbrt;

    .line 178
    :goto_4
    :try_start_2
    instance-of v2, p0, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 192
    check-cast p1, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    .line 197
    .end local p1    # "menuItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    move-object v0, p0

    check-cast v0, Landroid/widget/ImageView;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 199
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/View;->setEnabled(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 139
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p1    # "menuItem":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :catch_1
    move-exception v1

    .line 140
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 143
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    const/high16 v2, -0x10000

    invoke-interface {p2, v2}, Lbrt;->a(I)Lbrt;

    goto :goto_1

    .line 153
    :cond_3
    const v2, 0x800035

    invoke-interface {p2, v2}, Lbrt;->c(I)Lbrt;

    goto :goto_2

    .line 159
    :catch_2
    move-exception v1

    .line 160
    .restart local v1    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_3

    .line 163
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    const/4 v2, -0x1

    invoke-interface {p2, v2}, Lbrt;->b(I)Lbrt;

    goto :goto_3

    .line 167
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getBadgeJustRedDot()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 168
    invoke-interface {p2, p0}, Lbrt;->a(Landroid/view/View;)Lbrt;

    .line 169
    const-string/jumbo v2, ""

    invoke-interface {p2, v2}, Lbrt;->a(Ljava/lang/String;)Lbrt;

    goto :goto_4

    .line 172
    :cond_6
    invoke-interface {p2}, Lbrt;->b()V

    .line 173
    invoke-interface {p2}, Lbrt;->a()V

    goto :goto_4
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 78
    if-nez p2, :cond_5

    .line 79
    new-instance v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;

    invoke-direct {v10, v5}, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;-><init>(B)V

    .line 80
    .local v10, "viewHolder":Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->d:Landroid/view/LayoutInflater;

    sget v1, Lbqt$e;->toolbar_item_layout:I

    invoke-virtual {v0, v1, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 81
    .local v9, "view":Landroid/view/View;
    sget v0, Lbqt$d;->avaiv_right_person_icon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 82
    sget v0, Lbqt$d;->tv_toolbar_item_text:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->b:Landroid/widget/TextView;

    .line 83
    sget v0, Lbqt$d;->iv_toolbar_item_icon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->c:Landroid/widget/ImageView;

    .line 84
    sget v0, Lbqt$d;->fl_toolbar_item_icon:I

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->e:Landroid/widget/FrameLayout;

    .line 85
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->d:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/badgeview/BadgeView;-><init>(Landroid/content/Context;)V

    iput-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->a:Lbrt;

    .line 86
    invoke-virtual {v9, v10}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 92
    :goto_0
    if-ltz p1, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 93
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;

    .line 95
    .local v8, "item":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 96
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 99
    :cond_0
    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 100
    instance-of v0, v8, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    if-eqz v0, :cond_1

    move-object v0, v8

    check-cast v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    .line 106
    :cond_1
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getUrl()Ljava/lang/String;

    move-result-object v2

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 110
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->c:Landroid/widget/ImageView;

    iget-object v1, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->a:Lbrt;

    invoke-static {v0, v8, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->a(Landroid/view/View;Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;Lbrt;)V

    .line 112
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 120
    :cond_2
    :goto_1
    instance-of v0, v8, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    if-eqz v0, :cond_3

    check-cast v8, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/NavigationExtPlugin$a;

    .line 123
    .end local v8    # "item":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_3
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 127
    :cond_4
    return-object v9

    .line 88
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "viewHolder":Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;
    :cond_5
    move-object v9, p2

    .line 89
    .restart local v9    # "view":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;

    .restart local v10    # "viewHolder":Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;
    goto :goto_0

    .line 114
    .restart local v8    # "item":Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;
    :cond_6
    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 115
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->b:Landroid/widget/TextView;

    invoke-virtual {v8}, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object v0, v10, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$a;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1
.end method
