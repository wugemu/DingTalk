.class public final Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;
.super Lcqr;
.source "AdsListDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcqr",
        "<",
        "Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;


# direct methods
.method public constructor <init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;Landroid/app/Activity;)V
    .locals 0
    .param p2, "context"    # Landroid/app/Activity;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    .line 54
    invoke-direct {p0, p2}, Lcqr;-><init>(Landroid/app/Activity;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v7, 0x0

    const/16 v11, 0x8

    const/4 v6, 0x0

    .line 61
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;

    .line 74
    .local v8, "holder":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;

    .line 75
    .local v9, "item":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;
    if-nez v9, :cond_1

    .line 101
    :goto_1
    return-object p2

    .line 64
    .end local v8    # "holder":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;
    .end local v9    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;
    :cond_0
    new-instance v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;

    invoke-direct {v8, p0, v6}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;B)V

    .line 65
    .restart local v8    # "holder":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;->b:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcig$h;->item_ads_list_guide:I

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 66
    sget v0, Lcig$f;->iv_avatar:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->a:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcig$f;->tv_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->b:Landroid/widget/TextView;

    .line 68
    sget v0, Lcig$f;->tv_content:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->c:Landroid/widget/TextView;

    .line 69
    sget v0, Lcig$f;->iv_right_arrow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->d:Landroid/view/View;

    .line 70
    sget v0, Lcig$f;->divider_line:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->e:Landroid/view/View;

    .line 71
    invoke-virtual {p2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 80
    .restart local v9    # "item":Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;
    :cond_1
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getIconMediaId()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "ret":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getIconMediaId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 86
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 94
    :goto_3
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->b:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 97
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->c:Landroid/widget/TextView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$Item;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 99
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->e:Landroid/view/View;

    if-nez p1, :cond_2

    move v6, v11

    :cond_2
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 83
    :catch_0
    move-exception v10

    .line 84
    .local v10, "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v10}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_2

    .line 89
    .end local v10    # "mee":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_3
    iget-object v0, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a;->d:Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog;->c:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, v8, Lcom/alibaba/android/dingtalkbase/widgets/views/ads/AdsListDialog$a$a;->a:Landroid/widget/ImageView;

    move-object v3, p3

    check-cast v3, Landroid/widget/AbsListView;

    const/16 v4, 0x9

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_3
.end method
