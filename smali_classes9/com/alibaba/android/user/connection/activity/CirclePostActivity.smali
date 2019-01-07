.class public Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
.super Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;
.source "CirclePostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lfdr$b;


# annotations
.annotation build Lcom/alibaba/android/dingtalk/permission/annotation/RuntimePermissions;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/connection/activity/CirclePostActivity$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity",
        "<",
        "Lfck;",
        ">;",
        "Landroid/text/TextWatcher;",
        "Landroid/view/View$OnClickListener;",
        "Lfdr$b;"
    }
.end annotation


# instance fields
.field private A:Landroid/content/BroadcastReceiver;

.field private B:Ljava/lang/String;

.field private C:Landroid/view/MenuItem;

.field private D:Landroid/content/BroadcastReceiver;

.field private final E:Landroid/view/View$OnClickListener;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:Landroid/view/View;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/amap/api/services/core/PoiItem;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Lfdq;

.field private m:Landroid/view/ViewGroup;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/widget/LinearLayout$LayoutParams;

.field private q:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;",
            ">;"
        }
    .end annotation
.end field

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

.field private t:I

.field private u:I

.field private v:Landroid/view/ViewGroup;

.field private w:Landroid/widget/LinearLayout$LayoutParams;

.field private x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

.field private y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;-><init>()V

    .line 157
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->z:J

    .line 808
    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$8;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->E:Landroid/view/View$OnClickListener;

    .line 821
    return-void
.end method

.method private a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;
    .locals 1
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 868
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 869
    .local v0, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 870
    return-object v0
.end method

.method private a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;
    .locals 11
    .param p1, "size"    # I
    .param p2, "layoutParams"    # Landroid/widget/LinearLayout$LayoutParams;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v10

    invoke-static {v10}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 874
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l()Landroid/widget/LinearLayout;

    move-result-object v9

    .line 875
    .local v9, "ll":Landroid/widget/LinearLayout;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, p1, :cond_1

    .line 876
    invoke-direct {p0, p2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v1

    .line 878
    .local v1, "imageView":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    iget v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->t:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->t:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 10888
    .local v10, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    iget-object v2, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 10889
    iget-object v0, v10, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    .line 10890
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 10893
    :goto_1
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 10898
    :goto_2
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    const/16 v4, 0x1e

    const/4 v5, 0x1

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 881
    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$a;

    invoke-direct {v0, p0, v10, v6}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$a;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;B)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 882
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 875
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 10890
    goto :goto_1

    .line 10894
    :catch_0
    move-exception v2

    .line 10895
    invoke-virtual {v2}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v2, v0

    goto :goto_2

    .line 884
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v10    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    return-object v9
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Lcom/amap/api/services/core/PoiItem;)Lcom/amap/api/services/core/PoiItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
    .param p1, "x1"    # Lcom/amap/api/services/core/PoiItem;

    .prologue
    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h:Lcom/amap/api/services/core/PoiItem;

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
            "Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 531
    .local p0, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    .local v2, "result":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;>;"
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

    .line 533
    .local v1, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v1, :cond_0

    .line 536
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;-><init>()V

    .line 537
    .local v0, "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    iput-object v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mLocalPhoto:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 538
    iget-object v4, v1, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v4}, Lffh;->a(Ljava/lang/String;)Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;->mLocalSize:Lcom/alibaba/android/dingtalkbase/uidic/cells/Cell$a;

    .line 539
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 541
    .end local v0    # "object":Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoObject;
    .end local v1    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_1
    return-object v2
.end method

.method private a(ILjava/lang/String;I)V
    .locals 2
    .param p1, "textColor"    # I
    .param p2, "tips"    # Ljava/lang/String;
    .param p3, "backgroundResId"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 428
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 429
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 431
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->i:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 432
    return-void
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V
    .locals 2
    .param p1, "imgLayout"    # Landroid/view/ViewGroup;
    .param p2, "lastImgLayout"    # Landroid/view/ViewGroup;
    .param p3, "len"    # I
    .param p4, "leftOver"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 787
    if-nez p1, :cond_1

    .line 806
    :cond_0
    :goto_0
    return-void

    .line 790
    :cond_1
    if-nez p2, :cond_2

    .line 791
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 792
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 795
    :cond_2
    const/16 v1, 0x9

    if-ge p3, v1, :cond_0

    .line 796
    if-nez p4, :cond_3

    .line 797
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l()Landroid/widget/LinearLayout;

    move-result-object p2

    .line 798
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 801
    :cond_3
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->w:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Landroid/widget/LinearLayout$LayoutParams;)Landroid/widget/ImageView;

    move-result-object v0

    .line 802
    .local v0, "addBtn":Landroid/widget/ImageView;
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->E:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 803
    sget v1, Lezg$g;->circle_post_add_img:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 804
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Landroid/content/Intent;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 106
    .line 11774
    const-string/jumbo v0, "poi_info_key"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/PoiItem;

    .line 11775
    if-eqz v0, :cond_0

    .line 11779
    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h:Lcom/amap/api/services/core/PoiItem;

    .line 11781
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v3, v2, v3}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11783
    sget v1, Lezg$e;->circle_poi_select_text_color:I

    invoke-virtual {v0}, Lcom/amap/api/services/core/PoiItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    sget v2, Lezg$g;->connection_poi_selector:I

    invoke-direct {p0, v1, v0, v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(ILjava/lang/String;I)V

    .line 106
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Ljava/util/List;)V
    .locals 12
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    const/4 v7, 0x3

    const/4 v8, 0x0

    .line 106
    .line 11980
    invoke-static {p1}, Lffi;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 11984
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 11985
    invoke-static {v0}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 11986
    invoke-static {v0}, Lffi;->a(I)Ljava/util/ArrayList;

    move-result-object v10

    .line 11988
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

    .line 11989
    if-eqz v0, :cond_0

    .line 11993
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11995
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    const-wide/16 v4, 0x0

    iget-object v6, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    invoke-direct/range {v1 .. v6}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>(JJLjava/lang/String;)V

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11998
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m:Landroid/view/ViewGroup;

    if-nez v0, :cond_3

    .line 11999
    sget v0, Lezg$h;->reminder_headers:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 12000
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    .line 12001
    sget v0, Lezg$h;->mentioned_users_header:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m:Landroid/view/ViewGroup;

    .line 12002
    sget v0, Lezg$h;->mentioned_users_size:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->n:Landroid/widget/TextView;

    .line 12004
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {p0, v0}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 12006
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->p:Landroid/widget/LinearLayout$LayoutParams;

    .line 12007
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->p:Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 12012
    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v0

    .line 12013
    if-nez v0, :cond_4

    .line 12014
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->o:Ljava/util/List;

    .line 12015
    :cond_2
    return-void

    .line 12009
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    goto :goto_1

    .line 12018
    :cond_4
    iput-object v9, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->o:Ljava/util/List;

    .line 12021
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->n:Landroid/widget/TextView;

    sget v2, Lezg$l;->dt_circle_person:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12023
    if-le v0, v7, :cond_5

    move v1, v7

    :goto_2
    move v2, v8

    .line 12025
    :goto_3
    if-ge v2, v1, :cond_2

    .line 12026
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 12027
    new-instance v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;-><init>(Landroid/content/Context;)V

    .line 12028
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->mediaId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12029
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->p:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 12030
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 12025
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_5
    move v1, v0

    .line 12023
    goto :goto_2
.end method

.method static synthetic a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/connection/activity/CirclePostActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    return-object v0
.end method

.method private f()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 231
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 235
    .local v1, "photoPickResults":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
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

    .line 237
    .local v0, "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    if-eqz v0, :cond_2

    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 240
    iget-object v4, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 242
    .end local v0    # "photo":Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;
    :cond_3
    iput-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->r:Ljava/util/List;

    goto :goto_0
.end method

.method private g()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 319
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    if-nez v0, :cond_0

    .line 320
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 321
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    const/4 v1, 0x1

    iput v1, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iget v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    packed-switch v0, :pswitch_data_0

    .line 340
    :goto_0
    return-void

    .line 325
    :pswitch_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_connection_scope_public:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_connection_scope_private:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_connection_scope_section_visible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 334
    :pswitch_3
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c:Landroid/widget/TextView;

    sget v1, Lezg$l;->dt_connection_scope_section_invisible:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private h()Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x1

    .line 449
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "text":Ljava/lang/String;
    new-instance v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    invoke-direct {v1}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;-><init>()V

    .line 451
    .local v1, "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 453
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h:Lcom/amap/api/services/core/PoiItem;

    if-eqz v3, :cond_0

    .line 454
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h:Lcom/amap/api/services/core/PoiItem;

    invoke-static {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;->inflateFrom(Lcom/amap/api/services/core/PoiItem;)Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->geoInfo:Lcom/alibaba/android/user/connection/idl/objects/CircleGeoContentObject;

    .line 457
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    if-nez v3, :cond_3

    .line 458
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    .line 459
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    const/4 v4, 0x2

    iput v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 478
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x7d0

    if-le v3, v4, :cond_4

    .line 479
    sget v3, Lezg$l;->dt_circle_post_too_much_string:I

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "2000"

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcms;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 480
    const/4 v1, 0x0

    .line 495
    .end local v1    # "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    :goto_1
    return-object v1

    .line 460
    .restart local v1    # "result":Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v3, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v3, v3, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v3, :cond_2

    .line 461
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v3, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 462
    .local v0, "circleVideoExtension":Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    const/4 v4, 0x3

    iput v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 463
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;-><init>()V

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 464
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->duration:J

    .line 465
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-wide v4, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileSize:J

    .line 466
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget v4, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    iput v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->height:I

    .line 467
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget v4, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    iput v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->width:I

    .line 468
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v4, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 469
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v3, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v4, v4, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    goto :goto_0

    .line 471
    .end local v0    # "circleVideoExtension":Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;
    :cond_2
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput v6, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    goto :goto_0

    .line 474
    :cond_3
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    const/4 v4, 0x4

    iput v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 475
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    iput-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->linkContent:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    goto/16 :goto_0

    .line 483
    :cond_4
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iput-object v2, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    .line 484
    invoke-static {}, Liaf;->a()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->uuid:Ljava/lang/String;

    .line 485
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 488
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    if-nez v3, :cond_5

    .line 489
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;-><init>()V

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 490
    iget-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iput v6, v3, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    .line 492
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->o:Ljava/util/List;

    iput-object v3, v1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->mentionedUsers:Ljava/util/List;

    goto/16 :goto_1
.end method

.method private i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 564
    new-instance v0, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lezg$l;->dt_circle_action_leave_alert_message:I

    .line 565
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setMessage(I)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_circle_cancel:I

    new-instance v2, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$5;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$5;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    .line 566
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lezg$l;->dt_circle_action_leave:I

    new-instance v2, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$4;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$4;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    .line 572
    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 577
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 578
    return-void
.end method

.method private j()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 655
    .line 10647
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    .line 10648
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10650
    :cond_0
    iput v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->t:I

    .line 10651
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f()V

    .line 657
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m()V

    .line 659
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 660
    .local v3, "photoPickResults":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;>;"
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 661
    :cond_1
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v5, :cond_2

    .line 662
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    invoke-direct {p0, v5, v0, v4, v4}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V

    .line 674
    :cond_2
    :goto_0
    return-void

    .line 667
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 668
    .local v2, "len":I
    and-int/lit8 v1, v2, 0x3

    .line 10677
    .local v1, "leftOver":I
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 10678
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 671
    .local v0, "lastImgRow":Landroid/view/ViewGroup;
    :cond_4
    :goto_1
    if-eqz v0, :cond_2

    .line 672
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    invoke-direct {p0, v4, v0, v2, v1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;II)V

    goto :goto_0

    .line 10682
    .end local v0    # "lastImgRow":Landroid/view/ViewGroup;
    :cond_5
    div-int/lit8 v6, v2, 0x4

    move v5, v4

    move-object v4, v0

    .line 10685
    :goto_2
    if-ge v5, v6, :cond_6

    .line 10686
    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->w:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v7, v8}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 10685
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move-object v4, v0

    goto :goto_2

    .line 10689
    :cond_6
    if-eqz v1, :cond_7

    .line 10690
    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->w:Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v1, v4}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(ILandroid/widget/LinearLayout$LayoutParams;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_7
    move-object v0, v4

    .line 10693
    goto :goto_1
.end method

.method private k()I
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 848
    invoke-static {p0}, Lcms;->a(Landroid/content/Context;)I

    move-result v2

    .line 849
    .local v2, "screenWidth":I
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    .line 850
    .local v1, "margin":I
    iput v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->u:I

    .line 852
    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {p0, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, v2, v3

    mul-int/lit8 v4, v1, 0x3

    sub-int v0, v3, v4

    .line 853
    .local v0, "area":I
    div-int/lit8 v3, v0, 0x4

    return v3
.end method

.method private l()Landroid/widget/LinearLayout;
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 857
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 858
    .local v0, "ll":Landroid/widget/LinearLayout;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 859
    .local v1, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {p0, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 860
    iget v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->u:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 861
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 862
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 864
    return-object v0
.end method

.method private m()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 919
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    .line 921
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    if-nez v0, :cond_3

    .line 923
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->e:Z

    .line 927
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->C:Landroid/view/MenuItem;

    if-eqz v0, :cond_2

    .line 928
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->C:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->e:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 930
    :cond_2
    return-void

    .line 925
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->e:Z

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)V
    .locals 4
    .param p1, "postObject"    # Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;
    .param p2, "scope"    # Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 344
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-static {v1, v2}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 349
    iget-object v0, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 350
    .local v0, "scopeObject":Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;
    if-nez v0, :cond_2

    .line 351
    iput-object p2, p1, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 354
    :cond_2
    invoke-static {p0}, Lcmx;->a(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v1

    const-string/jumbo v2, "https://qr.dingtalk.com/page/connection.html"

    new-instance v3, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$2;

    invoke-direct {v3, p0, p1}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$2;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;)V

    invoke-interface {v1, v2, v3}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 361
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->finish()V

    goto :goto_0
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 910
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m()V

    .line 911
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 906
    return-void
.end method

.method protected final c()I
    .locals 1

    .prologue
    .line 166
    sget v0, Lezg$j;->activity_connection_post_text:I

    return v0
.end method

.method protected final d()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v8, -0x1

    const/4 v6, 0x0

    .line 171
    const-string/jumbo v0, ""

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 1206
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1207
    if-eqz v1, :cond_2

    .line 1211
    :try_start_0
    const-string/jumbo v0, "circle_pick_photo_result"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :goto_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 1217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v5, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 1218
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 1219
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->type:I

    if-ne v0, v5, :cond_0

    .line 1220
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 1221
    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    .line 1223
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f()V

    .line 1224
    const-string/jumbo v0, "circle_extra_link"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    if-eqz v0, :cond_1

    .line 1225
    const-string/jumbo v0, "circle_extra_link"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 1227
    :cond_1
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->j()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->z:J

    .line 1247
    :cond_2
    sget v0, Lezg$h;->share_tv:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lezg$l;->dt_circle_action_share_to:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1250
    sget v0, Lezg$h;->cpt_tv_who_can_see_container:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->d:Landroid/view/View;

    .line 1251
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->d:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1252
    sget v0, Lezg$h;->cpt_tv_who_can_see:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->c:Landroid/widget/TextView;

    .line 1253
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g()V

    .line 1255
    sget v0, Lezg$h;->cpt_et_input:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    .line 1256
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "circle_extra_text"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1257
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1258
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1259
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 1261
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1263
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1265
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    if-eqz v0, :cond_4

    .line 1266
    sget v0, Lezg$h;->circle_post_link_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1267
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 1365
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->x:Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;

    .line 1366
    new-instance v2, Lfcq;

    invoke-direct {v2, v0, v3}, Lfcq;-><init>(Landroid/view/View;Lfdf;)V

    invoke-virtual {v2, v1}, Lfcq;->a(Lcom/alibaba/android/user/connection/idl/objects/CircleLinkContentObject;)V

    .line 1270
    :cond_4
    sget v0, Lezg$h;->add_map:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f:Landroid/view/View;

    .line 1271
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1273
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$1;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1293
    sget v0, Lezg$h;->add_map_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->i:Landroid/widget/TextView;

    .line 1295
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lezg$g;->chat_float_dialog_close:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j:Landroid/graphics/drawable/Drawable;

    .line 1296
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v6, v6, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1298
    sget v0, Lezg$h;->location_tips:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g:Landroid/widget/TextView;

    .line 1300
    sget v0, Lezg$h;->rl_reminder:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1301
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    if-nez v0, :cond_5

    .line 1303
    sget v0, Lezg$h;->circle_post_text_img_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    .line 1305
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k()I

    move-result v0

    .line 1307
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1308
    iget v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->u:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1309
    iput-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->w:Landroid/widget/LinearLayout$LayoutParams;

    .line 1311
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j()V

    .line 174
    :cond_5
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j()V

    .line 1698
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v0, :cond_6

    .line 1699
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l()Landroid/widget/LinearLayout;

    move-result-object v0

    .line 1700
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->v:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1702
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k()I

    move-result v2

    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k()I

    move-result v4

    invoke-direct {v1, v2, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1703
    iget v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->u:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1704
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1705
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1706
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1707
    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$6;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1734
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1735
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1736
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1737
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1739
    new-instance v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;-><init>(Landroid/content/Context;)V

    .line 1740
    sget v4, Lezg$l;->icon_play:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1741
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setGravity(I)V

    .line 1742
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v7, Lezg$e;->pure_white:I

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 1743
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v0, v6, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 1744
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1745
    invoke-virtual {v0, v4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1746
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 1748
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    move-object v2, v0

    check-cast v2, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 1749
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v2, v2, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    const/16 v4, 0x1e

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageBackground(Landroid/view/View;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 176
    :cond_6
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->m()V

    .line 1754
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_7

    .line 1755
    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$7;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$7;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    .line 1769
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.workapp.action.poi_info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 179
    :cond_7
    return-void

    .line 1212
    :catch_0
    move-exception v0

    .line 1213
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, -0x1

    .line 587
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 588
    const/16 v0, 0x123

    if-ne p1, v0, :cond_3

    if-ne p2, v1, :cond_3

    .line 9624
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 9625
    if-eqz v0, :cond_0

    .line 9629
    :try_start_0
    const-string/jumbo v1, "com.workapp.choose.pictire.from.album.results"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 9630
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 9634
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 9635
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 9640
    :goto_1
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9641
    :catch_0
    move-exception v0

    .line 9642
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->o(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 9637
    :cond_2
    :try_start_1
    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 590
    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 10599
    const-string/jumbo v0, "album_preview_items"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 10600
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 10601
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10602
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

    .line 10603
    if-eqz v0, :cond_4

    .line 10606
    invoke-virtual {v0}, Lcom/alibaba/laiwang/photokit/picker/media/ImageItem;->getContentPath()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 10608
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 10609
    :cond_6
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10610
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    .line 10611
    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->originUrl:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 10612
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 10616
    :cond_8
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 10619
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->j()V

    goto/16 :goto_0
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->i()V

    .line 583
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v8, 0x0

    .line 398
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    .line 399
    .local v6, "id":I
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->d:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v6, v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->D:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 401
    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$3;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->D:Landroid/content/BroadcastReceiver;

    .line 412
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "SET_FRIEND_CIRCLE_POST_SCOPE"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 413
    .local v7, "intentFilter":Landroid/content/IntentFilter;
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v7}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 415
    .end local v7    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->B:Ljava/lang/String;

    .line 416
    .local v3, "query":Ljava/lang/String;
    invoke-static {}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->getInterfaceImpl()Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;

    move-result-object v0

    const-string/jumbo v2, "2018111662233068"

    const-string/jumbo v4, "pages/rangemanage/rangemanage"

    const-string/jumbo v5, "push"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/dingtalk/runtimebase/LightAppRuntimeReverseInterface;->openMiniApp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    .end local v3    # "query":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v6, v0, :cond_4

    .line 418
    iget-boolean v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k:Z

    if-nez v0, :cond_3

    .line 419
    invoke-static {p0}, Lfca;->a(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    .line 421
    :cond_3
    iput-boolean v8, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->k:Z

    goto :goto_0

    .line 422
    :cond_4
    sget v0, Lezg$h;->rl_reminder:I

    if-ne v6, v0, :cond_1

    .line 5966
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    if-nez v0, :cond_5

    .line 5967
    new-instance v0, Lfdq;

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->z:J

    const-string/jumbo v1, "identify_flag_connection"

    invoke-direct {v0, p0, v4, v5, v1}, Lfdq;-><init>(Landroid/app/Activity;JLjava/lang/String;)V

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    .line 5968
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    .line 6066
    const/16 v1, 0xb

    iput v1, v0, Lfdq;->g:I

    .line 5970
    :cond_5
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    iget-wide v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->z:J

    .line 7058
    iput-wide v4, v0, Lfdq;->c:J

    .line 5971
    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    new-instance v0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$9;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity$9;-><init>(Lcom/alibaba/android/user/connection/activity/CirclePostActivity;)V

    const-class v2, Lcov;

    invoke-static {v0, v2, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcov;

    .line 7100
    if-eqz v0, :cond_1

    .line 7104
    iput-object v0, v1, Lfdq;->e:Lcov;

    .line 7106
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;-><init>()V

    .line 7108
    invoke-virtual {v0, v8}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-object v4, v1, Lfdq;->b:Ljava/lang/String;

    .line 7109
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->c(Ljava/lang/String;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    move-result-object v2

    iget-object v4, v1, Lfdq;->f:Ljava/util/ArrayList;

    .line 7110
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a(Ljava/util/ArrayList;)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 7112
    iget v2, v1, Lfdq;->g:I

    if-lez v2, :cond_6

    .line 7113
    iget v2, v1, Lfdq;->g:I

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->b(I)Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;

    .line 7116
    :cond_6
    new-instance v2, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;

    invoke-direct {v2}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;-><init>()V

    .line 8053
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 7117
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/userbase/SelectedContactsRequest;->setContactChooseRequest(Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    .line 7118
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    iget-object v1, v1, Lfdq;->a:Landroid/app/Activity;

    .line 9053
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$a;->a:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;

    .line 7118
    invoke-virtual {v2, v1, v0}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 373
    const/4 v0, 0x0

    sget v1, Lezg$l;->dt_circle_send:I

    invoke-interface {p1, v0, v2, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->C:Landroid/view/MenuItem;

    .line 374
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->C:Landroid/view/MenuItem;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 375
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->C:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->e:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 376
    return v2
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onDestroy()V

    .line 190
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 191
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 192
    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->A:Landroid/content/BroadcastReceiver;

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    .line 2070
    iget-object v1, v0, Lfdq;->d:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_1

    .line 2071
    iget-object v1, v0, Lfdq;->a:Landroid/app/Activity;

    invoke-static {v1}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v1

    iget-object v2, v0, Lfdq;->d:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 2072
    iput-object v3, v0, Lfdq;->d:Landroid/content/BroadcastReceiver;

    .line 197
    :cond_1
    iput-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->l:Lfdq;

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->D:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 200
    invoke-static {p0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->D:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 202
    :cond_3
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 934
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 935
    if-nez p1, :cond_1

    .line 962
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    const-string/jumbo v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    .local v0, "data":Ljava/lang/String;
    iput-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->B:Ljava/lang/String;

    .line 940
    const-string/jumbo v2, "TESTDY"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "data:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 942
    const-class v2, Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;

    invoke-static {v0, v2}, Lcoo;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;

    .line 943
    .local v1, "selectScopeObject":Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    if-nez v2, :cond_4

    .line 944
    new-instance v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-direct {v2}, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;-><init>()V

    iput-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    .line 945
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iput v5, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    .line 950
    :goto_1
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iget v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iget v2, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 952
    :cond_2
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;->getTagList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->tagList:Ljava/util/List;

    .line 953
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;->getUidList()Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->uidList:Ljava/util/List;

    .line 955
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 957
    :catch_0
    move-exception v2

    const-string/jumbo v2, "CirclePostActivity"

    const-string/jumbo v3, "mini app return error type."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 958
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iput v5, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    goto :goto_0

    .line 947
    :cond_4
    iget-object v2, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->y:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    iget v3, v1, Lcom/alibaba/android/dingtalk/userbase/model/CircleSelectScopeObject;->type:I

    iput v3, v2, Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;->type:I

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 381
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->i()V

    move v0, v1

    .line 393
    :goto_0
    return v0

    .line 384
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 385
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-nez v0, :cond_2

    .line 386
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a:Lclj;

    check-cast v0, Lfck;

    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h()Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    move-result-object v2

    .line 3024
    if-eqz v2, :cond_1

    .line 4036
    sget-object v3, Lfdm$a;->a:Lfdk;

    .line 3029
    new-instance v4, Lfck$1;

    invoke-direct {v4, v0, v2}, Lfck$1;-><init>(Lfck;Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;)V

    invoke-interface {v3, v2, v4}, Lfdk;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;Lcma;)V

    :cond_1
    :goto_1
    move v0, v1

    .line 391
    goto :goto_0

    .line 4545
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/connection/upload/CircleUploadService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 4546
    invoke-direct {p0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->h()Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;

    move-result-object v2

    .line 4547
    if-eqz v2, :cond_1

    .line 4550
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v3, :cond_5

    .line 4552
    invoke-static {}, Lfdy;->a()Lfdy;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfdy;->a(Ljava/util/Collection;)V

    .line 4553
    invoke-static {}, Lfea;->a()Lfea;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lfea;->a(Ljava/util/Collection;)V

    .line 4554
    const-string/jumbo v3, "circle_local_pick_files"

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 4558
    :cond_3
    :goto_2
    const-string/jumbo v3, "circle_task_param"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 4559
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 5499
    new-instance v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;

    invoke-direct {v3}, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;-><init>()V

    .line 5524
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;-><init>()V

    .line 5525
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->c()J

    move-result-wide v4

    iput-wide v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;->uid:J

    .line 5500
    iput-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->author:Lcom/alibaba/android/user/connection/idl/objects/CircleUserObject;

    .line 5501
    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->postId:J

    .line 5502
    new-instance v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    invoke-direct {v0}, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;-><init>()V

    iput-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    .line 5503
    iget-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->text:Ljava/lang/String;

    .line 5504
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 5505
    iget-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    new-instance v4, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    invoke-direct {v4}, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;-><init>()V

    iput-object v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    .line 5506
    iget-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->photoContent:Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;

    iget-object v4, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->q:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CirclePhotoContentObject;->photos:Ljava/util/List;

    .line 5507
    iget-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    const/4 v4, 0x2

    iput v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    .line 5519
    :cond_4
    :goto_3
    invoke-static {}, Lcms;->u()J

    move-result-wide v4

    iput-wide v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->createAt:J

    .line 4560
    iget-object v0, v2, Lcom/alibaba/android/user/connection/idl/objects/CirclePostCreateObject;->scope:Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;

    invoke-virtual {p0, v3, v0}, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->a(Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;Lcom/alibaba/android/user/connection/idl/objects/CircleScopeObject;)V

    goto/16 :goto_1

    .line 4555
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v3, :cond_3

    .line 4556
    invoke-static {}, Lfdy;->a()Lfdy;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Lfdy;->a(Ljava/util/Collection;)V

    goto :goto_2

    .line 5508
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    instance-of v0, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    if-eqz v0, :cond_4

    .line 5509
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v0, v0, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->extension:Ljava/io/Serializable;

    check-cast v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;

    .line 5510
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    new-instance v5, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    invoke-direct {v5}, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;-><init>()V

    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    .line 5511
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->duration:J

    iput-wide v6, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->duration:J

    .line 5512
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-wide v6, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->size:J

    iput-wide v6, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->fileSize:J

    .line 5513
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->height:I

    iput v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->height:I

    .line 5514
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget v5, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->width:I

    iput v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->width:I

    .line 5515
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v5, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->s:Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;

    iget-object v5, v5, Lcom/alibaba/laiwang/photokit/picker/PhotoPickResult;->url:Ljava/lang/String;

    iput-object v5, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->videoMediaId:Ljava/lang/String;

    .line 5516
    iget-object v4, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    iget-object v4, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->videoContent:Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;

    iget-object v0, v0, Lcom/alibaba/android/user/connection/activity/upload/CircleVideoCompressWorker$CircleVideoExtension;->picUrl:Ljava/lang/String;

    iput-object v0, v4, Lcom/alibaba/android/user/connection/idl/objects/CircleVideoContentObject;->picMediaId:Ljava/lang/String;

    .line 5517
    iget-object v0, v3, Lcom/alibaba/android/user/connection/idl/objects/CirclePostObject;->content:Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;

    const/4 v4, 0x3

    iput v4, v0, Lcom/alibaba/android/user/connection/idl/objects/CircleContentObject;->contentType:I

    goto :goto_3

    .line 393
    :cond_7
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 183
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/mvp/core/BaseMvpActivity;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/connection/activity/CirclePostActivity;->b:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 185
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 916
    return-void
.end method
