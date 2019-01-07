.class public Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;
    }
.end annotation


# instance fields
.field private A:Landroid/view/MenuItem;

.field private final B:Landroid/view/View$OnClickListener;

.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/amap/api/services/core/PoiItem;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Z

.field private k:Lboz;

.field private l:Landroid/view/ViewGroup;

.field private m:Landroid/widget/TextView;

.field private n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private o:Landroid/widget/LinearLayout$LayoutParams;

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field private s:I

.field private t:I

.field private u:Landroid/view/ViewGroup;

.field private v:Landroid/widget/LinearLayout$LayoutParams;

.field private w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

.field private x:Landroid/support/v7/app/AlertDialog;

.field private y:J

.field private z:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 156
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    .line 907
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$9;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->B:Landroid/view/View$OnClickListener;

    .line 920
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # J

    .prologue
    .line 107
    iput-wide p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    return-wide p1
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 966
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 967
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 968
    return-object v0
.end method

.method private a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "size"    # I
    .param p2, "layoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 972
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h()Landroid/widget/LinearLayout;

    move-result-object v9

    .line 973
    .local v9, "ll":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p1, :cond_2

    .line 974
    invoke-direct {p0, p2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 976
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->s:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->s:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 7986
    .local v10, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v2, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 7987
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 7988
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7989
    :goto_1
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7991
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v2, v0

    .line 7996
    :goto_2
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    const/16 v4, 0x1e

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 979
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;

    invoke-direct {v0, p0, v10, v6}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$a;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;B)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 980
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 973
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 7988
    goto :goto_1

    .line 7992
    :catch_0
    move-exception v2

    .line 7993
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    :cond_1
    move-object v2, v0

    goto :goto_2

    .line 982
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_2
    return-object v9
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/amap/api/services/core/PoiItem;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g:Lcom/amap/api/services/core/PoiItem;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->n:Ljava/util/List;

    return-object v0
.end method

.method private static a(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 633
    .local p0, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 634
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 635
    .local v1, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_0

    .line 638
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;-><init>()V

    .line 639
    .local v0, "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    iput-object v1, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 640
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v4}, Lbqk;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;->mLocalSize:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 641
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    .end local v0    # "object":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoObject;
    .end local v1    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    return-object v2
.end method

.method private a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 212
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 220
    :cond_0
    :goto_0
    return-void

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    .line 214
    .local v1, "photoPickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 215
    .local v2, "photoUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 216
    .local v0, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 217
    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 219
    .end local v0    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_3
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->q:Ljava/util/List;

    goto :goto_0
.end method

.method private a(ILjava/lang/String;I)V
    .locals 2
    .param p1, "textColor"    # I
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "backgroundResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 501
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 502
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 503
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 504
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V
    .locals 2
    .param p1, "imgLayout"    # Landroid/view/ViewGroup;
    .param p2, "lastImgLayout"    # Landroid/view/ViewGroup;
    .param p3, "len"    # I
    .param p4, "leftOver"    # I

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 888
    if-nez p1, :cond_1

    .line 905
    :cond_0
    :goto_0
    return-void

    .line 889
    :cond_1
    if-nez p2, :cond_2

    .line 890
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 891
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 894
    :cond_2
    const/16 v1, 0x9

    if-ge p3, v1, :cond_0

    .line 895
    if-nez p4, :cond_3

    .line 896
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 897
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 900
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->v:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 901
    .local v0, "addBtn":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->B:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 902
    sget v1, Lbpu$c;->circle_post_add_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 903
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 107
    .line 9875
    const-string/jumbo v0, "poi_info_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 9876
    if-eqz v0, :cond_0

    .line 9880
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g:Lcom/amap/api/services/core/PoiItem;

    .line 9882
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 9884
    sget v1, Lbpu$a;->circle_poi_select_text_color:I

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget v2, Lbpu$c;->circle_poi_selector:I

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(ILjava/lang/String;I)V

    .line 107
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->j:Z

    return p1
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 300
    const-string/jumbo v4, "circle_key_who_can_see_org_id"

    const-wide/16 v6, -0x1

    invoke-static {v4, v6, v7}, Lcpk;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 301
    .local v2, "orgId":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c()Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "orgInfoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 303
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 304
    .local v0, "infoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v0, :cond_0

    .line 305
    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    cmp-long v5, v6, v2

    if-nez v5, :cond_0

    .line 306
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    .line 319
    .end local v0    # "infoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_1
    :goto_0
    return-void

    .line 312
    :cond_2
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 313
    .restart local v0    # "infoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v0, :cond_1

    .line 314
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->b:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    iput-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    .line 316
    const-string/jumbo v4, "circle_key_who_can_see_org_id"

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    invoke-static {v4, v6, v7}, Lcpk;->b(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Ljava/util/List;)V
    .locals 13
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 107
    .line 8446
    invoke-static {p1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8450
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 8451
    invoke-static {v0}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 8452
    invoke-static {v0}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 8454
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 8455
    if-eqz v0, :cond_0

    .line 8459
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8461
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>(JJLjava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8464
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->l:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 8465
    sget v0, Lbpu$d;->reminder_headers:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 8466
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 8467
    sget v0, Lbpu$d;->mentioned_users_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->l:Landroid/view/ViewGroup;

    .line 8468
    sget v0, Lbpu$d;->mentioned_users_size:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->m:Landroid/widget/TextView;

    .line 8470
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 8472
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->o:Landroid/widget/LinearLayout$LayoutParams;

    .line 8473
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->o:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 8478
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 8479
    if-nez v0, :cond_4

    .line 8480
    iput-object v12, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->n:Ljava/util/List;

    .line 8481
    :cond_2
    return-void

    .line 8475
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    .line 8484
    :cond_4
    iput-object v9, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->n:Ljava/util/List;

    .line 8487
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->m:Landroid/widget/TextView;

    sget v2, Lbpu$f;->dt_circle_person:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8489
    if-le v0, v7, :cond_5

    move v1, v7

    :goto_2
    move v2, v8

    .line 8491
    :goto_3
    if-ge v2, v1, :cond_2

    .line 8492
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 8493
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 8494
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    .line 9167
    invoke-virtual {v3, v4, v0, v12}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 8495
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->o:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8496
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->l:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 8491
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move v1, v0

    .line 8489
    goto :goto_2
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->j:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method private static c()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 322
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v6

    invoke-virtual {v6}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v2

    .line 323
    .local v2, "extensionObject":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    if-nez v2, :cond_1

    .line 343
    :cond_0
    return-object v5

    .line 326
    :cond_1
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    .line 327
    .local v1, "employeeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;>;"
    invoke-static {v1}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 329
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-static {v6}, Lbql;->a(I)Ljava/util/ArrayList;

    move-result-object v5

    .line 331
    .local v5, "orgs":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 332
    .local v0, "employeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    .line 333
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 334
    .local v4, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v4, :cond_2

    .line 336
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v7

    const-string/jumbo v8, "circle_post_enabled"

    iget-wide v10, v4, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgId:J

    invoke-virtual {v7, v8, v10, v11}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Ljava/lang/String;J)Z

    move-result v3

    .line 338
    .local v3, "isPostEnable":Z
    if-eqz v3, :cond_2

    .line 339
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    return-wide v0
.end method

.method private d()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x1

    .line 521
    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    move-object v1, v3

    .line 566
    :goto_0
    return-object v1

    .line 525
    :cond_0
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 526
    .local v2, "text":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    invoke-direct {v1}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;-><init>()V

    .line 527
    .local v1, "result":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;
    new-instance v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;-><init>()V

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 529
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g:Lcom/amap/api/services/core/PoiItem;

    if-eqz v4, :cond_1

    .line 530
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g:Lcom/amap/api/services/core/PoiItem;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;->inflateFrom(Lcom/amap/api/services/core/PoiItem;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    move-result-object v4

    iput-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->geoInfo:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNGeoContentObject;

    .line 533
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    if-nez v4, :cond_4

    .line 534
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 535
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    const/4 v5, 0x2

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 554
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x7d0

    if-le v4, v5, :cond_5

    .line 555
    sget v4, Lbpu$f;->dt_circle_post_too_much_string:I

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string/jumbo v7, "2000"

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    move-object v1, v3

    .line 556
    goto :goto_0

    .line 536
    :cond_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v4, v4, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v4, :cond_3

    .line 537
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 538
    .local v0, "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    const/4 v5, 0x3

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 539
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    new-instance v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    .line 540
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->duration:J

    .line 541
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileSize:J

    .line 542
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->height:I

    .line 543
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->width:I

    .line 544
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v5, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 545
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    goto :goto_1

    .line 547
    .end local v0    # "circleVideoExtension":Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    :cond_3
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput v8, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    goto :goto_1

    .line 550
    :cond_4
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    const/4 v5, 0x4

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 551
    iget-object v4, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->linkContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    goto/16 :goto_1

    .line 559
    :cond_5
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iput-object v2, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    .line 560
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->uuid:Ljava/lang/String;

    .line 561
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 562
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->n:Ljava/util/List;

    iput-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->mentionedUsers:Ljava/util/List;

    .line 563
    iget-object v3, v1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    iget-wide v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;->orgRanges:Ljava/util/List;

    goto/16 :goto_0
.end method

.method static synthetic e(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->l:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private e()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 666
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lbpu$f;->dt_circle_action_leave_alert_message:I

    .line 667
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_cancel:I

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$6;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$6;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    .line 668
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lbpu$f;->dt_circle_action_leave:I

    new-instance v2, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$5;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    .line 674
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 679
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 680
    return-void
.end method

.method static synthetic f(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method private f()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 759
    .line 7736
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 7737
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7739
    :cond_0
    iput v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->s:I

    .line 7740
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a()V

    .line 761
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i()V

    .line 763
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    .line 764
    .local v3, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 765
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v5, :cond_2

    .line 766
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v0, v4, v4}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V

    .line 778
    :cond_2
    :goto_0
    return-void

    .line 771
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 772
    .local v2, "len":I
    and-int/lit8 v1, v2, 0x3

    .line 7781
    .local v1, "leftOver":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    .line 7782
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 775
    .local v0, "lastImgRow":Landroid/view/ViewGroup;
    :cond_4
    :goto_1
    if-eqz v0, :cond_2

    .line 776
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v0, v2, v1}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 7784
    .end local v0    # "lastImgRow":Landroid/view/ViewGroup;
    :cond_5
    div-int/lit8 v6, v2, 0x4

    move v5, v4

    move-object v4, v0

    .line 7787
    :goto_2
    if-ge v5, v6, :cond_6

    .line 7788
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->v:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7, v8}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 7787
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v0

    goto :goto_2

    .line 7791
    :cond_6
    if-eqz v1, :cond_7

    .line 7792
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->v:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    move-object v0, v4

    .line 7795
    goto :goto_1
.end method

.method private g()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 946
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 947
    .local v2, "screenWidth":I
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 948
    .local v1, "margin":I
    iput v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->t:I

    .line 950
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    mul-int/lit8 v4, v1, 0x3

    sub-int v0, v3, v4

    .line 951
    .local v0, "area":I
    div-int/lit8 v3, v0, 0x4

    return v3
.end method

.method static synthetic g(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    return-object v0
.end method

.method private h()Landroid/widget/LinearLayout;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 955
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 956
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 957
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 958
    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->t:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 959
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 960
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 962
    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->q:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    return-object v0
.end method

.method private i()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    .line 1019
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    if-nez v0, :cond_3

    .line 1021
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d:Z

    .line 1025
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->A:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 1026
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->A:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1028
    :cond_2
    return-void

    .line 1023
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d:Z

    goto :goto_0
.end method


# virtual methods
.method final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
    .param p2, "scope"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 744
    if-nez p1, :cond_0

    .line 756
    :goto_0
    return-void

    .line 745
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 747
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 748
    .local v1, "scopeObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;
    if-nez v1, :cond_1

    .line 749
    iput-object p2, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    .line 752
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "circle_on_create_post"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 753
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "circle_on_create_post"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 754
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldq;->a(Landroid/content/Intent;)Z

    .line 755
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->finish()V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 1008
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i()V

    .line 1009
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 1004
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 689
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 690
    const/16 v0, 0x123

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 6721
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 6722
    if-eqz v0, :cond_0

    .line 6723
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 6724
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 6726
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 6727
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 6732
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f()V

    goto :goto_0

    .line 6729
    :cond_2
    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    goto :goto_1

    .line 692
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 7698
    const-string/jumbo v0, "album_preview_items"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 7699
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 7700
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7701
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;

    .line 7702
    if-eqz v0, :cond_4

    .line 7703
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 7705
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 7706
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 7707
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 7708
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 7709
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 7713
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 7716
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 684
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e()V

    .line 685
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 379
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 380
    .local v1, "id":I
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v1, v5, :cond_4

    .line 381
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->x:Landroid/support/v7/app/AlertDialog;

    if-nez v5, :cond_3

    .line 382
    invoke-static {}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c()Ljava/util/List;

    move-result-object v4

    .line 383
    .local v4, "orgInfoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 384
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 385
    .local v2, "items":[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_1

    .line 386
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    .line 387
    .local v3, "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    if-eqz v3, :cond_0

    .line 388
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->orgName:Ljava/lang/String;

    aput-object v5, v2, v0

    .line 385
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_0
    const-string/jumbo v5, ""

    aput-object v5, v2, v0

    goto :goto_1

    .line 393
    .end local v3    # "orgInfoObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;
    :cond_1
    new-instance v5, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v5, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v6, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;

    invoke-direct {v6, p0, v4}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$2;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Ljava/util/List;)V

    invoke-virtual {v5, v2, v6}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 415
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->x:Landroid/support/v7/app/AlertDialog;

    .line 428
    .end local v0    # "i":I
    .end local v2    # "items":[Ljava/lang/CharSequence;
    .end local v4    # "orgInfoObjects":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;>;"
    :cond_2
    :goto_2
    return-void

    .line 418
    :cond_3
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->x:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog;->show()V

    goto :goto_2

    .line 420
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-ne v1, v5, :cond_6

    .line 421
    iget-boolean v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->j:Z

    if-nez v5, :cond_5

    .line 422
    invoke-static {p0}, Lbnk;->a(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    .line 424
    :cond_5
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->j:Z

    goto :goto_2

    .line 425
    :cond_6
    sget v5, Lbpu$d;->rl_reminder:I

    if-ne v1, v5, :cond_2

    .line 4432
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    if-nez v5, :cond_7

    .line 4433
    new-instance v5, Lboz;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    const-string/jumbo v8, "Circle_Post_Activity_Reminder_Identity_flag"

    invoke-direct {v5, p0, v6, v7, v8}, Lboz;-><init>(Landroid/app/Activity;JLjava/lang/String;)V

    iput-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    .line 4434
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    .line 5065
    const/16 v6, 0xb

    iput v6, v5, Lboz;->d:I

    .line 4436
    :cond_7
    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    iget-wide v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    .line 6057
    iput-wide v6, v5, Lboz;->b:J

    .line 4437
    iget-object v6, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v5

    new-instance v7, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$3;

    invoke-direct {v7, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$3;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    const-class v8, Lcov;

    invoke-interface {v5, v7, v8, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcov;

    invoke-virtual {v6, v5}, Lboz;->a(Lcov;)V

    goto :goto_2
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v12, -0x1

    const/4 v6, 0x0

    .line 163
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 164
    sget v0, Lbpu$e;->activity_circle_post_text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->setContentView(I)V

    .line 165
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1197
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1198
    if-eqz v1, :cond_1

    .line 1199
    const-string/jumbo v0, "circle_pick_photo_result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    .line 1201
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    if-ne v0, v5, :cond_0

    .line 1202
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1203
    iput-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    .line 1205
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a()V

    .line 1206
    const-string/jumbo v0, "circle_extra_link"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    if-eqz v0, :cond_1

    .line 1207
    const-string/jumbo v0, "circle_extra_link"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .line 1224
    :cond_1
    sget v0, Lbpu$d;->share_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lbpu$f;->dt_circle_action_share_to:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    sget v0, Lbpu$d;->cpt_tv_who_can_see_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c:Landroid/view/View;

    .line 1228
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->c:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1229
    sget v0, Lbpu$d;->cpt_tv_who_can_see:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->b:Landroid/widget/TextView;

    .line 1230
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->b()V

    .line 1232
    sget v0, Lbpu$d;->cpt_et_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    .line 1233
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "circle_extra_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1234
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1238
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1240
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1242
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    if-eqz v0, :cond_3

    .line 1243
    sget v0, Lbpu$d;->circle_post_link_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1244
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1347
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->w:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;

    .line 1348
    new-instance v2, Lbnz;

    invoke-direct {v2, v0, v3}, Lbnz;-><init>(Landroid/view/View;Lboq;)V

    invoke-virtual {v2, v1}, Lbnz;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNLinkContentObject;)V

    .line 1247
    :cond_3
    sget v0, Lbpu$d;->add_map:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e:Landroid/view/View;

    .line 1248
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1250
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$1;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1270
    sget v0, Lbpu$d;->add_map_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h:Landroid/widget/TextView;

    .line 1272
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lbpu$c;->chat_float_dialog_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i:Landroid/graphics/drawable/Drawable;

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1275
    sget v0, Lbpu$d;->location_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f:Landroid/widget/TextView;

    .line 1277
    sget v0, Lbpu$d;->rl_reminder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1279
    iget-wide v8, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->y:J

    const-wide/16 v10, 0x0

    cmp-long v1, v8, v10

    if-gtz v1, :cond_7

    .line 1281
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1286
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    .line 1287
    sget v0, Lbpu$d;->circle_post_text_img_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    .line 1289
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g()I

    move-result v0

    .line 1291
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1292
    iget v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->t:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1293
    iput-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->v:Landroid/widget/LinearLayout$LayoutParams;

    .line 1295
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f()V

    .line 168
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->f()V

    .line 1800
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v0, :cond_5

    .line 1801
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->h()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1802
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->u:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1804
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1805
    iget v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->t:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1806
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1807
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1808
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1809
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$7;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1835
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1836
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1837
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1838
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1840
    new-instance v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    .line 1841
    sget v4, Lbpu$f;->icon_play:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1842
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 1843
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lbpu$a;->pure_white:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1844
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->g()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1845
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v12, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1846
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1847
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1849
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    move-object v2, v0

    check-cast v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 1850
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    const/16 v4, 0x1e

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 170
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->i()V

    .line 1855
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_6

    .line 1856
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$8;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    .line 1870
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.action.poi_info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 173
    :cond_6
    return-void

    .line 1283
    :cond_7
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 355
    const/4 v0, 0x0

    sget v1, Lbpu$f;->dt_circle_send:I

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->A:Landroid/view/MenuItem;

    .line 356
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->A:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 357
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->A:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 358
    return v2
.end method

.method protected onDestroy()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 183
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 185
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 186
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->z:Landroid/content/BroadcastReceiver;

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    invoke-virtual {v0}, Lboz;->a()V

    .line 191
    iput-object v2, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->k:Lboz;

    .line 193
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 363
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 364
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->e()V

    move v0, v1

    .line 374
    :goto_0
    return v0

    .line 366
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 367
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v0, :cond_2

    .line 2571
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-result-object v2

    .line 2573
    if-eqz v2, :cond_1

    .line 2577
    invoke-static {}, Lbqn;->a()Ljava/util/Map;

    move-result-object v0

    .line 2578
    const-string/jumbo v3, "contentType"

    iget-object v4, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2579
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v3

    const-string/jumbo v4, "create_posts"

    invoke-interface {v3, v4, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;Ljava/util/Map;)V

    .line 2580
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2582
    invoke-static {}, Lbov;->a()Lbov;

    move-result-object v3

    .line 2583
    invoke-static {}, Lcmx;->a()Lcom/alibaba/doraemon/eventbus/EventButler;

    move-result-object v0

    new-instance v4, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;

    invoke-direct {v4, p0, v2}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity$4;-><init>(Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;)V

    const-class v5, Lcma;

    invoke-interface {v0, v4, v5, p0}, Lcom/alibaba/doraemon/eventbus/EventButler;->newCallback(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    invoke-interface {v3, v2, v0}, Lbou;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;Lcma;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 372
    goto :goto_0

    .line 2647
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/upload/CircleUploadService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2648
    invoke-direct {p0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->d()Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;

    move-result-object v2

    .line 2649
    if-eqz v2, :cond_1

    .line 2652
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 2654
    invoke-static {}, Lbpg;->e()Lbpg;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbpg;->a(Ljava/util/Collection;)V

    .line 2655
    invoke-static {}, Lbpi;->e()Lbpi;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lbpi;->a(Ljava/util/Collection;)V

    .line 2656
    const-string/jumbo v3, "circle_local_pick_files"

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2660
    :cond_3
    :goto_2
    const-string/jumbo v3, "circle_task_param"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2661
    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3602
    new-instance v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;-><init>()V

    .line 3627
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;-><init>()V

    .line 3628
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;->uid:J

    .line 3603
    iput-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->author:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNUserObject;

    .line 3604
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->postId:J

    .line 3605
    new-instance v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;-><init>()V

    iput-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 3606
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->text:Ljava/lang/String;

    .line 3607
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 3608
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    new-instance v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;-><init>()V

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    .line 3609
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->photoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;

    iget-object v4, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->p:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPhotoContentObject;->photos:Ljava/util/List;

    .line 3610
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    const/4 v4, 0x2

    iput v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    .line 3622
    :cond_4
    :goto_3
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->createAt:J

    .line 2662
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostCreateObject;->scope:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;Lcom/alibaba/android/dingtalk/circle/idl/objects/SNScopeObject;)V

    goto/16 :goto_1

    .line 2657
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v3, :cond_3

    .line 2658
    invoke-static {}, Lbpg;->e()Lbpg;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbpg;->a(Ljava/util/Collection;)V

    goto :goto_2

    .line 3611
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v0, :cond_4

    .line 3612
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 3613
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    new-instance v5, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    invoke-direct {v5}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    .line 3614
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->duration:J

    .line 3615
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    iput-wide v6, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->fileSize:J

    .line 3616
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->height:I

    .line 3617
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    iput v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->width:I

    .line 3618
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v5, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->r:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 3619
    iget-object v4, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v4, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->videoContent:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 3620
    iget-object v0, v3, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->contentType:I

    goto :goto_3

    .line 374
    :cond_7
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 177
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onPause()V

    .line 178
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/dingtalk/circle/activity/CirclePostActivity;->a:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 179
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 1014
    return-void
.end method
