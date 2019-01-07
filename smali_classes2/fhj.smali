.class public Lfhj;
.super Lfgx;
.source "NoneOrgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfgx",
        "<",
        "Lcom/alibaba/android/user/contact/homepage/ContactHomePageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lfgx;-><init>(Landroid/view/View;)V

    .line 55
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 58
    sget v0, Lezg$j;->fragment_contact_home_none_org_layout:I

    return v0
.end method

.method static synthetic a(Lfhj;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lfhj;

    .prologue
    .line 48
    iget-object v0, p0, Lfhj;->b:Landroid/content/Context;

    return-object v0
.end method

.method private a(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)Z
    .locals 10
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "iconHint"    # Landroid/widget/ImageView;
    .param p3, "mediaId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 116
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    .line 147
    :goto_0
    return v5

    .line 121
    :cond_0
    :try_start_0
    invoke-static {p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "url":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 124
    invoke-static {p3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v3

    .line 125
    .local v3, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v3, :cond_1

    .line 126
    invoke-virtual {v3}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v2

    .line 127
    .local v2, "height":I
    if-lez v2, :cond_1

    .line 128
    invoke-virtual {p2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    .local v0, "btnParams":Landroid/widget/RelativeLayout$LayoutParams;
    if-eqz v0, :cond_1

    .line 131
    iget-object v5, p0, Lfhj;->b:Landroid/content/Context;

    div-int/lit8 v8, v2, 0x2

    int-to-float v8, v8

    invoke-static {v5, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v5

    iput v5, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 132
    const/4 v5, 0x3

    sget v8, Lezg$h;->tv_create:I

    invoke-virtual {v0, v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 133
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 140
    .end local v0    # "btnParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "height":I
    :cond_1
    const-string/jumbo v5, "IMAGE"

    invoke-static {v5}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v8, 0x0

    invoke-interface {v5, p2, v4, v8}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v7

    .line 141
    goto :goto_0

    .line 143
    .end local v3    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v4    # "url":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v5, "NoneOrgViewHolder"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const-string/jumbo v9, "setEmptyIcon and MediaIdEncodingException: "

    aput-object v9, v8, v6

    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    invoke-static {v8}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {v5, v7, v8}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .end local v1    # "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    :cond_2
    move v5, v6

    .line 147
    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v5, 0x5

    const/4 v7, -0x1

    const/4 v2, 0x0

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lfhj;->b:Landroid/content/Context;

    .line 64
    sget v0, Lezg$h;->tv_create:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lfhj;->a:Landroid/widget/TextView;

    .line 1069
    sget v0, Lezg$h;->iv_icon_hint:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1072
    iget-object v1, p0, Lfhj;->b:Landroid/content/Context;

    const-string/jumbo v3, "pref_key_create_team_empty_icon"

    invoke-static {v1, v3}, Lcpk;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1074
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1076
    invoke-static {}, Lcms;->n()Ljava/lang/String;

    move-result-object v1

    .line 1077
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_0

    .line 1078
    invoke-virtual {v1, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1081
    :cond_0
    const-string/jumbo v3, "mediaId"

    .line 1082
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1083
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const-string/jumbo v5, "mediaId"

    aput-object v5, v3, v2

    const/4 v5, 0x1

    const-string/jumbo v6, "_"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    aput-object v1, v3, v5

    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1087
    :goto_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    invoke-direct {p0, p1, v0, v1}, Lfhj;->a(Landroid/view/View;Landroid/widget/ImageView;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1097
    :goto_1
    if-nez v1, :cond_1

    .line 1101
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    sget v0, Lezg$h;->ll_create_org:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1103
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v2, p0, Lfhj;->b:Landroid/content/Context;

    .line 1104
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$f;->create_team_layout_default:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-direct {v1, v7, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1105
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1107
    sget v0, Lezg$h;->tv_create:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1108
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lfhj;->b:Landroid/content/Context;

    .line 1109
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$f;->create_team_btn_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    iget-object v3, p0, Lfhj;->b:Landroid/content/Context;

    .line 1110
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lezg$f;->create_team_btn_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1111
    const/16 v2, 0xd

    invoke-virtual {v1, v2, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1112
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    :cond_1
    return-void

    .line 1092
    :catch_0
    move-exception v1

    const-class v1, Lfhj;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "Exception parse create org icon"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lfxo;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1093
    goto :goto_1

    :cond_2
    move-object v1, v3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 48
    .line 1152
    iget-object v0, p0, Lfhj;->a:Landroid/widget/TextView;

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Lezg$l;->dt_contact_no_team_create_tip:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    iget-object v0, p0, Lfhj;->a:Landroid/widget/TextView;

    new-instance v1, Lfhj$1;

    invoke-direct {v1, p0}, Lfhj$1;-><init>(Lfhj;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
