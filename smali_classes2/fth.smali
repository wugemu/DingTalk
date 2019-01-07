.class public final Lfth;
.super Landroid/widget/BaseAdapter;
.source "CardStyleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfth$a;
    }
.end annotation


# instance fields
.field a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Lcom/alibaba/doraemon/image/ImageMagician;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p2, "orgThemeId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "mapList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lfth;->a:I

    .line 32
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lfth;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 35
    iput-object p1, p0, Lfth;->b:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lfth;->c:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public final a(I)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 55
    iget-object v0, p0, Lfth;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lfth;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    .line 58
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lfth;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lfth;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lfth;->a(I)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 69
    if-nez p2, :cond_2

    .line 71
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lezg$j;->item_name_card_style:I

    .line 72
    invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 73
    new-instance v1, Lfth$a;

    invoke-direct {v1, p0}, Lfth$a;-><init>(Lfth;)V

    .line 74
    .local v1, "holder":Lfth$a;
    sget v4, Lezg$h;->img_name_card_style:I

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lfth$a;->a:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lfth;->a(I)Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v2

    .line 82
    .local v2, "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    if-eqz v2, :cond_0

    .line 85
    :try_start_0
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->iconMediaId:Ljava/lang/String;

    invoke-static {v4}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    .local v3, "url":Ljava/lang/String;
    iget-object v4, p0, Lfth;->d:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v5, v1, Lfth$a;->a:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-interface {v4, v5, v3, v6}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .end local v3    # "url":Ljava/lang/String;
    :goto_1
    iget v4, p0, Lfth;->a:I

    if-ne v4, v7, :cond_0

    .line 94
    iget-object v4, p0, Lfth;->c:Ljava/lang/String;

    iget-object v5, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 95
    iget-object v4, v1, Lfth$a;->a:Landroid/widget/ImageView;

    sget v5, Lezg$g;->bg_corner_style_select:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 103
    :cond_0
    :goto_2
    iget v4, p0, Lfth;->a:I

    if-eq v4, v7, :cond_1

    .line 104
    iget v4, p0, Lfth;->a:I

    if-ne v4, p1, :cond_4

    .line 105
    iget-object v4, v1, Lfth$a;->a:Landroid/widget/ImageView;

    sget v5, Lezg$g;->bg_corner_style_select:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    :cond_1
    :goto_3
    return-object p2

    .line 77
    .end local v1    # "holder":Lfth$a;
    .end local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfth$a;

    .restart local v1    # "holder":Lfth$a;
    goto :goto_0

    .line 87
    .restart local v2    # "object":Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 90
    const-string/jumbo v4, "CardStyleAdapter convertToUrl error"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/alibaba/android/user/contact/utils/UserUtils;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 97
    .end local v0    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v4, v1, Lfth$a;->a:Landroid/widget/ImageView;

    sget v5, Lezg$g;->bg_corner_style_unselect:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 107
    :cond_4
    iget-object v4, v1, Lfth$a;->a:Landroid/widget/ImageView;

    sget v5, Lezg$g;->bg_corner_style_unselect:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3
.end method
