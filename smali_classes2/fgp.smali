.class public final Lfgp;
.super Landroid/widget/BaseAdapter;
.source "OrgApplyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfgp$a;
    }
.end annotation


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:I

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "mData":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;>;"
    const/16 v3, 0x40

    const/16 v2, 0x20

    .line 81
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 71
    iput v3, p0, Lfgp;->g:I

    .line 72
    iput v2, p0, Lfgp;->h:I

    .line 82
    iput-object p1, p0, Lfgp;->a:Landroid/app/Activity;

    .line 83
    iput-object p2, p0, Lfgp;->c:Ljava/util/ArrayList;

    .line 85
    const-string/jumbo v0, "org_apply_first_in"

    iput-object v0, p0, Lfgp;->d:Ljava/lang/String;

    .line 86
    iget-object v0, p0, Lfgp;->d:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lfgp;->e:Z

    .line 89
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfgp;->i:Ljava/util/ArrayList;

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lfgp;->j:Ljava/util/ArrayList;

    .line 91
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lfgp;->k:Landroid/view/LayoutInflater;

    .line 92
    return-void
.end method

.method static synthetic a(Lfgp;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lfgp;

    .prologue
    .line 60
    iget-object v0, p0, Lfgp;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic a(Lfgp;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .param p0, "x0"    # Lfgp;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 60
    iput-object p1, p0, Lfgp;->b:Ljava/util/ArrayList;

    return-object p1
.end method

.method private a(IILandroid/widget/LinearLayout;)V
    .locals 7
    .param p1, "needViewCount"    # I
    .param p2, "existViewCount"    # I
    .param p3, "itemContainerLayout"    # Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 665
    if-nez p3, :cond_1

    .line 666
    const-string/jumbo v3, "OrgApplyAdapter"

    const-string/jumbo v4, "returnRearViews : unknown error : itemContainerLayout is null"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 695
    :cond_0
    :goto_0
    return-void

    .line 669
    :cond_1
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-gt p2, v3, :cond_2

    if-le p1, p2, :cond_3

    .line 670
    :cond_2
    const-string/jumbo v3, "OrgApplyAdapter"

    const-string/jumbo v4, "returnRearViews : unknown error : itemView counts don\'t match."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 674
    :cond_3
    add-int/lit8 v0, p2, -0x1

    .local v0, "position":I
    :goto_1
    if-lt v0, p1, :cond_0

    .line 675
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 676
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 678
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 679
    .local v1, "tagObj":Ljava/lang/Object;
    if-eqz v1, :cond_4

    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_4

    .line 680
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 690
    const-string/jumbo v3, "OrgApplyAdapter"

    const-string/jumbo v4, "returnRearViews : coding wrong! set wrong type tag!"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 674
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 682
    .restart local v2    # "view":Landroid/view/View;
    :pswitch_0
    iget-object v3, p0, Lfgp;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 686
    :pswitch_1
    iget-object v3, p0, Lfgp;->j:Ljava/util/ArrayList;

    check-cast v2, Landroid/widget/LinearLayout;

    .end local v2    # "view":Landroid/view/View;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 680
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
    .locals 3
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 532
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 533
    :cond_0
    const/4 v1, 0x0

    .line 551
    :cond_1
    :goto_0
    return v1

    .line 535
    :cond_2
    const/4 v1, 0x0

    .line 537
    .local v1, "loadDataSuccess":Z
    iget v2, p2, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 539
    :pswitch_0
    invoke-static {p1, p2}, Lfgp;->b(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v1

    .line 540
    goto :goto_0

    .line 542
    :pswitch_1
    instance-of v2, p1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 543
    check-cast v0, Landroid/widget/LinearLayout;

    .line 544
    .local v0, "imageGroup":Landroid/widget/LinearLayout;
    invoke-static {v0, p2}, Lfgp;->a(Landroid/widget/LinearLayout;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v1

    goto :goto_0

    .line 537
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/widget/LinearLayout;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
    .locals 13
    .param p0, "imageGroup"    # Landroid/widget/LinearLayout;
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .prologue
    .line 596
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    .line 597
    :cond_0
    const/4 v3, 0x0

    .line 651
    :goto_0
    return v3

    .line 601
    :cond_1
    :try_start_0
    new-instance v12, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    invoke-direct {v12, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 605
    .local v12, "obj":Lorg/json/JSONObject;
    const-string/jumbo v3, "values"

    invoke-virtual {v12, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 606
    .local v11, "mediaIdArray":Lorg/json/JSONArray;
    if-nez v11, :cond_2

    .line 607
    new-instance v3, Lorg/json/JSONException;

    const-string/jumbo v4, "Media array is null."

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 637
    .end local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v12    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 638
    .local v8, "e":Lorg/json/JSONException;
    const-string/jumbo v3, "OrgApplyAdapter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "loadImageGroup: json parse failure!"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 639
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 640
    const/4 v3, 0x0

    goto :goto_0

    .line 612
    .end local v8    # "e":Lorg/json/JSONException;
    .restart local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v12    # "obj":Lorg/json/JSONObject;
    :cond_2
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v9, v3, :cond_4

    .line 613
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 614
    .local v1, "imageView":Landroid/widget/ImageView;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_3

    .line 615
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 612
    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 617
    :cond_3
    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_2

    .line 641
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v9    # "index":I
    .end local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v12    # "obj":Lorg/json/JSONObject;
    :catch_1
    move-exception v8

    .line 642
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v3, "OrgApplyAdapter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "loadImageGroup: mediaId parse url failure!"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    .line 644
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 621
    .end local v8    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    .restart local v9    # "index":I
    .restart local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v12    # "obj":Lorg/json/JSONObject;
    :cond_4
    const/4 v9, 0x0

    :goto_3
    :try_start_2
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v9, v3, :cond_5

    .line 622
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 623
    .local v10, "mediaId":Ljava/lang/String;
    invoke-static {v10}, Lcom/laiwang/protocol/media/MediaIdManager;->convertToUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 625
    .local v2, "url":Ljava/lang/String;
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 626
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 627
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 621
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 645
    .end local v0    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "url":Ljava/lang/String;
    .end local v9    # "index":I
    .end local v10    # "mediaId":Ljava/lang/String;
    .end local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .end local v12    # "obj":Lorg/json/JSONObject;
    :catch_2
    move-exception v8

    .line 646
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OrgApplyAdapter"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "loadImageGroup: fatal error!"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 647
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 648
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 651
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "index":I
    .restart local v11    # "mediaIdArray":Lorg/json/JSONArray;
    .restart local v12    # "obj":Lorg/json/JSONObject;
    :cond_5
    const/4 v3, 0x1

    goto/16 :goto_0
.end method

.method static synthetic a(Lfgp;Z)Z
    .locals 1
    .param p0, "x0"    # Lfgp;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lfgp;->e:Z

    return v0
.end method

.method static synthetic b(Lfgp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfgp;

    .prologue
    .line 60
    iget-object v0, p0, Lfgp;->f:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z
    .locals 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "itemObject"    # Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .prologue
    const/4 v12, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 555
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    iget v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    if-eqz v10, :cond_1

    :cond_0
    move v8, v9

    .line 592
    :goto_0
    return v8

    .line 560
    :cond_1
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    iget-object v10, p1, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->bodyJson:Ljava/lang/String;

    invoke-direct {v6, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 561
    .local v6, "textJson":Lorg/json/JSONObject;
    const-string/jumbo v10, "key"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 562
    .local v5, "labelObj":Ljava/lang/Object;
    if-nez v5, :cond_2

    .line 563
    new-instance v10, Lorg/json/JSONException;

    const-string/jumbo v11, "label is null."

    invoke-direct {v10, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 582
    .end local v5    # "labelObj":Ljava/lang/Object;
    .end local v6    # "textJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 583
    .local v2, "e":Lorg/json/JSONException;
    const-string/jumbo v10, "OrgApplyAdapter"

    new-array v11, v12, [Ljava/lang/String;

    const-string/jumbo v12, "loadText: json parse failure!"

    aput-object v12, v11, v9

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 584
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    move v8, v9

    .line 585
    goto :goto_0

    .line 565
    .end local v2    # "e":Lorg/json/JSONException;
    .restart local v5    # "labelObj":Ljava/lang/Object;
    .restart local v6    # "textJson":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 567
    .local v4, "label":Ljava/lang/String;
    const-string/jumbo v10, "value"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 568
    .local v1, "contentObj":Ljava/lang/Object;
    if-nez v1, :cond_3

    .line 569
    new-instance v10, Lorg/json/JSONException;

    const-string/jumbo v11, "content is null."

    invoke-direct {v10, v11}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 586
    .end local v1    # "contentObj":Ljava/lang/Object;
    .end local v4    # "label":Ljava/lang/String;
    .end local v5    # "labelObj":Ljava/lang/Object;
    .end local v6    # "textJson":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    .line 587
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "OrgApplyAdapter"

    new-array v11, v12, [Ljava/lang/String;

    const-string/jumbo v12, "loadText: fatal error!"

    aput-object v12, v11, v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v8

    invoke-static {v11}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-array v11, v9, [Ljava/lang/Object;

    invoke-static {v10, v8, v11}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 588
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move v8, v9

    .line 589
    goto :goto_0

    .line 571
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v1    # "contentObj":Ljava/lang/Object;
    .restart local v4    # "label":Ljava/lang/String;
    .restart local v5    # "labelObj":Ljava/lang/Object;
    .restart local v6    # "textJson":Lorg/json/JSONObject;
    :cond_3
    :try_start_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, "content":Ljava/lang/String;
    sget v10, Lezg$h;->tv_key:I

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 575
    .local v3, "keyView":Landroid/view/View;
    sget v10, Lezg$h;->tv_value:I

    invoke-virtual {p0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 576
    .local v7, "valueView":Landroid/view/View;
    instance-of v10, v3, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    instance-of v10, v7, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    .line 577
    check-cast v3, Landroid/widget/TextView;

    .end local v3    # "keyView":Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 578
    check-cast v7, Landroid/widget/TextView;

    .end local v7    # "valueView":Landroid/view/View;
    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 580
    .restart local v3    # "keyView":Landroid/view/View;
    .restart local v7    # "valueView":Landroid/view/View;
    :cond_4
    new-instance v10, Ljava/lang/Exception;

    const-string/jumbo v11, "inner view is not a TextView."

    invoke-direct {v10, v11}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
.end method

.method static synthetic c(Lfgp;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lfgp;

    .prologue
    .line 60
    iget-object v0, p0, Lfgp;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lfgp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lfgp;

    .prologue
    .line 60
    iget-object v0, p0, Lfgp;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic e(Lfgp;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lfgp;

    .prologue
    .line 60
    iget-object v0, p0, Lfgp;->b:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lfgp;->c:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfgp;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 101
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 106
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 134
    if-nez p2, :cond_7

    .line 135
    new-instance v2, Lfgp$a;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v5}, Lfgp$a;-><init>(Lfgp;B)V

    .line 136
    .local v2, "holder":Lfgp$a;
    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->k:Landroid/view/LayoutInflater;

    sget v6, Lezg$j;->item_org_apply:I

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 137
    sget v5, Lezg$h;->tv_avatar:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v5, v2, Lfgp$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 138
    sget v5, Lezg$h;->tv_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->b:Landroid/widget/TextView;

    .line 139
    sget v5, Lezg$h;->tv_apply_org_name:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->c:Landroid/widget/TextView;

    .line 140
    sget v5, Lezg$h;->tv_apply_dept_key:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->d:Landroid/widget/TextView;

    .line 141
    sget v5, Lezg$h;->tv_apply_dept:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->e:Landroid/widget/TextView;

    .line 142
    sget v5, Lezg$h;->tv_apply_remark_key:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->f:Landroid/widget/TextView;

    .line 143
    sget v5, Lezg$h;->tv_apply_remark:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->g:Landroid/widget/TextView;

    .line 144
    sget v5, Lezg$h;->ll_container_items:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, v2, Lfgp$a;->h:Landroid/widget/LinearLayout;

    .line 145
    sget v5, Lezg$h;->btn_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    .line 146
    sget v5, Lezg$h;->tv_action:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    .line 147
    sget v5, Lezg$h;->divider_line:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lfgp$a;->k:Landroid/view/View;

    .line 148
    sget v5, Lezg$h;->layout_item_org_apply_tip:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lfgp$a;->l:Landroid/view/View;

    .line 149
    sget v5, Lezg$h;->view_divider:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v2, Lfgp$a;->m:Landroid/view/View;

    .line 150
    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 155
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->c:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->c:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move/from16 v0, p1

    if-ne v0, v5, :cond_8

    .line 156
    iget-object v5, v2, Lfgp$a;->m:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lfxp;->a(Landroid/view/View;I)V

    .line 157
    iget-object v5, v2, Lfgp$a;->k:Landroid/view/View;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lfxp;->a(Landroid/view/View;I)V

    .line 162
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->c:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;

    .line 163
    .local v3, "model":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->APPLIED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_0

    .line 164
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 165
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    sget v6, Lezg$l;->action_agree:I

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 168
    :cond_0
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->PASSED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_1

    .line 169
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 171
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    sget v6, Lezg$l;->dt_user_org_apply_agreed:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 173
    :cond_1
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->REJECTED:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_2

    .line 174
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 176
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    sget v6, Lezg$l;->hint_reject:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 178
    :cond_2
    iget v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->status:I

    sget-object v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->SHIELD:Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;

    iget v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject$ApplyStatus;->status:I

    if-ne v5, v6, :cond_3

    .line 179
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 181
    iget-object v5, v2, Lfgp$a;->j:Landroid/widget/TextView;

    sget v6, Lezg$l;->dt_group_apply_hint_blocked:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(I)V

    .line 183
    :cond_3
    iget-object v5, v2, Lfgp$a;->i:Landroid/widget/Button;

    new-instance v6, Lfgp$1;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v6, v0, v3, v1}, Lfgp$1;-><init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    iget-object v5, v2, Lfgp$a;->b:Landroid/widget/TextView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->content:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v5, v2, Lfgp$a;->c:Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->orgName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 228
    :cond_4
    iget-object v5, v2, Lfgp$a;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object v5, v2, Lfgp$a;->e:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    :goto_2
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 236
    iget-object v5, v2, Lfgp$a;->f:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 237
    iget-object v5, v2, Lfgp$a;->g:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 244
    :goto_3
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v5

    const-string/jumbo v6, "f_user_org_apply_items_new"

    .line 1083
    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v5

    .line 244
    if-eqz v5, :cond_5

    .line 245
    iget-object v5, v2, Lfgp$a;->f:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 246
    iget-object v5, v2, Lfgp$a;->g:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object v13, v2, Lfgp$a;->h:Landroid/widget/LinearLayout;

    iget-object v14, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->items:Ljava/util/List;

    .line 1385
    if-eqz v13, :cond_5

    .line 1388
    if-nez v14, :cond_b

    .line 1389
    const/4 v5, 0x0

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13}, Lfgp;->a(IILandroid/widget/LinearLayout;)V

    .line 1390
    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 250
    :cond_5
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->a:Landroid/app/Activity;

    sget v7, Lezg$l;->my_local_contact:I

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lfgp;->f:Ljava/lang/String;

    .line 251
    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    if-eqz v5, :cond_19

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->f:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 252
    iget-object v6, v2, Lfgp$a;->b:Landroid/widget/TextView;

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    :goto_5
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v5, v2, Lfgp$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lfgp;->f:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    .line 258
    :goto_6
    new-instance v5, Lfgp$2;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v3, v1}, Lfgp$2;-><init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    new-instance v5, Lfgp$3;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v5, v0, v3, v1}, Lfgp$3;-><init>(Lfgp;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;I)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 358
    iget-boolean v5, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->isRead:Z

    if-nez v5, :cond_1a

    .line 359
    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->a:Landroid/app/Activity;

    if-eqz v5, :cond_6

    .line 360
    move-object/from16 v0, p0

    iget-object v5, v0, Lfgp;->a:Landroid/app/Activity;

    sget v6, Lezg$e;->friend_request_unread_item_bg:I

    invoke-static {v5, v6}, Ldp;->c(Landroid/content/Context;I)I

    move-result v5

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 367
    :cond_6
    :goto_7
    if-nez p1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lfgp;->e:Z

    if-eqz v5, :cond_1b

    .line 368
    iget-object v5, v2, Lfgp$a;->l:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 369
    iget-object v5, v2, Lfgp$a;->l:Landroid/view/View;

    sget v6, Lezg$h;->small_text_tip_textview:I

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 370
    .local v4, "textView":Landroid/widget/TextView;
    sget v5, Lezg$l;->org_apply_first_in_hint:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 375
    .end local v4    # "textView":Landroid/widget/TextView;
    :goto_8
    return-object p2

    .line 152
    .end local v2    # "holder":Lfgp$a;
    .end local v3    # "model":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfgp$a;

    .restart local v2    # "holder":Lfgp$a;
    goto/16 :goto_0

    .line 159
    :cond_8
    iget-object v5, v2, Lfgp$a;->m:Landroid/view/View;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lfxp;->a(Landroid/view/View;I)V

    .line 160
    iget-object v5, v2, Lfgp$a;->k:Landroid/view/View;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_1

    .line 231
    .restart local v3    # "model":Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;
    :cond_9
    iget-object v5, v2, Lfgp$a;->d:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 232
    iget-object v5, v2, Lfgp$a;->e:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 233
    iget-object v5, v2, Lfgp$a;->e:Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->dept:Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;

    iget-object v8, v8, Lcom/alibaba/android/dingtalk/userbase/model/OrgDeptObject;->deptName:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 239
    :cond_a
    iget-object v5, v2, Lfgp$a;->f:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v5, v2, Lfgp$a;->g:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v5, v2, Lfgp$a;->g:Landroid/widget/TextView;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->remark:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 1394
    :cond_b
    const/16 v5, 0x8

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1396
    move-object/from16 v0, p0

    iget-object v15, v0, Lfgp;->i:Ljava/util/ArrayList;

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lfgp;->j:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 1399
    const/4 v6, 0x0

    .line 1401
    const/4 v5, 0x0

    move v8, v5

    move v9, v6

    :goto_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v5

    if-ge v8, v5, :cond_17

    .line 1402
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;

    .line 1403
    if-eqz v5, :cond_1c

    .line 1408
    iget v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 1519
    packed-switch v6, :pswitch_data_0

    .line 1524
    const/4 v6, 0x0

    .line 1409
    :goto_a
    if-eqz v6, :cond_1c

    .line 1413
    new-instance v17, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1416
    iget v6, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    packed-switch v6, :pswitch_data_1

    .line 1437
    if-nez v8, :cond_e

    .line 1438
    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1442
    :goto_b
    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1448
    :goto_c
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1450
    if-eqz v7, :cond_f

    iget v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v10, v6, :cond_f

    .line 1451
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v5}, Lfgp;->a(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v5

    .line 1505
    :goto_d
    if-eqz v5, :cond_1c

    .line 1506
    add-int/lit8 v9, v9, 0x1

    move v6, v9

    .line 1401
    :goto_e
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    move v9, v6

    goto :goto_9

    .line 1522
    :pswitch_0
    const/4 v6, 0x1

    goto :goto_a

    .line 1418
    :pswitch_1
    if-nez v8, :cond_c

    .line 1419
    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1423
    :goto_f
    const/4 v6, 0x0

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_c

    .line 1421
    :cond_c
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_f

    .line 1427
    :pswitch_2
    if-nez v8, :cond_d

    .line 1428
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1429
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_c

    .line 1431
    :cond_d
    sget v6, Lezg$f;->dp8:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1432
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_c

    .line 1440
    :cond_e
    sget v6, Lezg$f;->dp4:I

    invoke-static {v6}, Leda;->d(I)I

    move-result v6

    move-object/from16 v0, v17

    iput v6, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto/16 :goto_b

    .line 1453
    :cond_f
    iget v10, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    .line 1701
    const/4 v6, 0x0

    .line 1702
    packed-switch v10, :pswitch_data_2

    move-object v12, v6

    .line 1454
    :goto_10
    if-nez v12, :cond_12

    .line 1457
    const-string/jumbo v5, "OrgApplyAdapter"

    const-string/jumbo v6, "handleItemGroup : unknown error"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v9

    .line 1458
    goto :goto_e

    .line 1719
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->i:Ljava/util/ArrayList;

    .line 1720
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_10

    .line 1721
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1722
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    :goto_11
    move-object v12, v6

    .line 1705
    goto :goto_10

    .line 1724
    :cond_10
    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->k:Landroid/view/LayoutInflater;

    sget v10, Lezg$j;->item_org_apply_inner_text:I

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v13, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    goto :goto_11

    .line 1732
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->j:Ljava/util/ArrayList;

    .line 1733
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_11

    .line 1734
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    .line 1735
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    :goto_12
    move-object v12, v6

    .line 1707
    goto :goto_10

    .line 1737
    :cond_11
    move-object/from16 v0, p0

    iget-object v6, v0, Lfgp;->k:Landroid/view/LayoutInflater;

    sget v10, Lezg$j;->item_org_apply_inner_list_image:I

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v13, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    goto :goto_12

    .line 1462
    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v5}, Lfgp;->a(Landroid/view/View;Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;)Z

    move-result v10

    .line 1463
    if-nez v10, :cond_13

    .line 1464
    const-string/jumbo v5, "OrgApplyAdapter"

    const-string/jumbo v6, "handleItemGroup : loadItemData fail"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v6, v9

    .line 1465
    goto/16 :goto_e

    .line 1469
    :cond_13
    if-eqz v7, :cond_16

    .line 1471
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1472
    invoke-virtual {v13, v9}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 1474
    const/4 v11, 0x0

    .line 1475
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1476
    if-eqz v6, :cond_14

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_14

    .line 1477
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    packed-switch v6, :pswitch_data_3

    :cond_14
    move v6, v11

    .line 1491
    :goto_13
    if-nez v6, :cond_15

    .line 1492
    const-string/jumbo v6, "OrgApplyAdapter"

    const-string/jumbo v7, "returnRearViews : coding wrong! set wrong type tag!"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v6, v7, v11}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1495
    :cond_15
    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1496
    move-object/from16 v0, v17

    invoke-virtual {v13, v12, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    move v5, v10

    .line 1497
    goto/16 :goto_d

    .line 1479
    :pswitch_5
    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1480
    const/4 v6, 0x1

    .line 1481
    goto :goto_13

    :pswitch_6
    move-object v6, v7

    .line 1483
    check-cast v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1484
    const/4 v6, 0x1

    goto :goto_13

    .line 1500
    :cond_16
    iget v5, v5, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyItemObject;->type:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v12, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1501
    move-object/from16 v0, v17

    invoke-virtual {v13, v12, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move v5, v10

    goto/16 :goto_d

    .line 1511
    :cond_17
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v5, v13}, Lfgp;->a(IILandroid/widget/LinearLayout;)V

    .line 1512
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_4

    .line 252
    :cond_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->alias:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lfgp;->f:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    .line 256
    :cond_19
    iget-object v5, v2, Lfgp$a;->a:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v6, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v6, v6, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->nick:Ljava/lang/String;

    iget-object v7, v3, Lcom/alibaba/android/dingtalk/userbase/model/OrgApplyObject;->userProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;

    iget-object v7, v7, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileObject;->avatarMediaId:Ljava/lang/String;

    check-cast p3, Landroid/widget/AbsListView;

    .end local p3    # "parent":Landroid/view/ViewGroup;
    move-object/from16 v0, p3

    invoke-virtual {v5, v6, v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto/16 :goto_6

    .line 363
    :cond_1a
    sget v5, Lezg$g;->list_item_common_white_selector:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .line 372
    :cond_1b
    iget-object v5, v2, Lfgp$a;->l:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_8

    .restart local p3    # "parent":Landroid/view/ViewGroup;
    :cond_1c
    move v6, v9

    goto/16 :goto_e

    .line 1519
    .line 1416
    .line 1702
    .line 1477
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
