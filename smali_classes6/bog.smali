.class public final Lbog;
.super Lbnv;
.source "AnnexViewHolder.java"


# static fields
.field private static final k:Ljava/text/SimpleDateFormat;


# instance fields
.field private j:Landroid/content/Context;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/ViewGroup;

.field private o:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

.field private p:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lbqj;->a()Landroid/content/Context;

    move-result-object v1

    sget v2, Lbpu$f;->dt_circle_journal_time:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lbog;->k:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lboq;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "strategy"    # Lboq;
    .param p3, "showCmtsDetailPrefix"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lbnv;-><init>(Landroid/view/View;Lboq;Z)V

    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lbog;->j:Landroid/content/Context;

    .line 50
    invoke-virtual {p0, p1}, Lbog;->a(Landroid/view/View;)V

    .line 51
    return-void
.end method

.method private static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2
    .param p0, "tv"    # Landroid/widget/TextView;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 144
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    .line 145
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    const/16 v0, 0x3f

    invoke-static {p1, v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic a(Lbog;)Z
    .locals 1
    .param p0, "x0"    # Lbog;

    .prologue
    .line 37
    .line 3211
    iget-boolean v0, p0, Lbnv;->d:Z

    .line 37
    return v0
.end method

.method static synthetic b(Lbog;)Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
    .locals 1
    .param p0, "x0"    # Lbog;

    .prologue
    .line 37
    iget-object v0, p0, Lbog;->o:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/view/View;)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 54
    invoke-super {p0, p1}, Lbnv;->a(Landroid/view/View;)V

    .line 55
    sget v1, Lbpu$d;->annex_title:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbog;->l:Landroid/widget/TextView;

    .line 56
    sget v1, Lbpu$d;->annex_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lbog;->m:Landroid/widget/TextView;

    .line 57
    sget v1, Lbpu$d;->annex_content:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lbog;->n:Landroid/view/ViewGroup;

    .line 58
    sget v1, Lbpu$d;->picture:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lbog;->p:Landroid/widget/ImageView;

    .line 59
    sget v1, Lbpu$d;->annex_check_detail:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "vCheckDetail":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lbog$1;

    invoke-direct {v1, p0}, Lbog$1;-><init>(Lbog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected final a(Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;)V
    .locals 13
    .param p1, "postObject"    # Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v4, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 90
    .line 1073
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    .line 1074
    if-nez v0, :cond_1

    .line 1075
    const-string/jumbo v0, "contentObject = null"

    .line 2076
    invoke-static {v6, v0}, Lbqh;->a(ZLjava/lang/String;)V

    move v0, v6

    .line 90
    :goto_0
    if-nez v0, :cond_3

    .line 3156
    :cond_0
    :goto_1
    return-void

    .line 1079
    :cond_1
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .line 1080
    if-nez v0, :cond_2

    .line 1081
    const-string/jumbo v0, "annexObj = null"

    .line 3076
    invoke-static {v6, v0}, Lbqh;->a(ZLjava/lang/String;)V

    move v0, v6

    .line 1082
    goto :goto_0

    :cond_2
    move v0, v5

    .line 1085
    goto :goto_0

    .line 92
    :cond_3
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNPostObject;->content:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;

    iget-object v8, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNContentObject;->attachment:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .line 93
    .local v8, "attachmentObject":Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;
    iget-object v0, v8, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->contents:Ljava/util/List;

    if-nez v0, :cond_4

    .line 95
    invoke-virtual {v8}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->unzip2LocalCache()V

    .line 98
    :cond_4
    iput-object v8, p0, Lbog;->o:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .line 3104
    iget-object v9, p0, Lbog;->o:Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;

    .line 3105
    iget-object v0, p0, Lbog;->l:Landroid/widget/TextView;

    iget-object v1, v9, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3106
    iget-object v0, p0, Lbog;->m:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 3107
    iget-object v0, p0, Lbog;->m:Landroid/widget/TextView;

    sget-object v1, Lbog;->k:Ljava/text/SimpleDateFormat;

    iget-wide v10, v9, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->createAt:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3110
    :cond_5
    iget-object v0, p0, Lbog;->n:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 3111
    iget-object v0, v9, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->contents:Ljava/util/List;

    .line 3120
    invoke-static {v0}, Lbql;->a(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3121
    const-string/jumbo v0, "doBindContents contents is empty"

    invoke-static {v0}, Lbqh;->a(Ljava/lang/String;)V

    .line 3114
    :cond_6
    iget-object v0, p0, Lbog;->p:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3155
    if-eqz v9, :cond_7

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->getFirstImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3156
    :cond_7
    iget-object v0, p0, Lbog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 3124
    :cond_8
    iget-object v1, p0, Lbog;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 3126
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v1, v6

    :cond_9
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;

    .line 3127
    if-eqz v0, :cond_9

    .line 3128
    add-int/lit8 v7, v1, 0x1

    const/4 v1, 0x2

    if-gt v7, v1, :cond_6

    .line 3133
    iget-object v1, p0, Lbog;->j:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lbpu$e;->item_circle_annex_content_layout:I

    iget-object v11, p0, Lbog;->n:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v11, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v11

    .line 3134
    sget v1, Lbpu$d;->annex_key:I

    invoke-virtual {v11, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 3135
    sget v2, Lbpu$d;->annex_value:I

    invoke-virtual {v11, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 3136
    iget-object v12, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->a:Ljava/lang/String;

    invoke-static {v1, v12}, Lbog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3137
    iget-object v0, v0, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject$a;->b:Ljava/lang/String;

    invoke-static {v2, v0}, Lbog;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 3138
    iget-object v0, p0, Lbog;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move v1, v7

    .line 3139
    goto :goto_2

    .line 3158
    :cond_a
    iget-object v0, p0, Lbog;->p:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3159
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lbog;->p:Landroid/widget/ImageView;

    invoke-virtual {v9}, Lcom/alibaba/android/dingtalk/circle/idl/objects/SNAttachmentObject;->getFirstImageUrl()Ljava/lang/String;

    move-result-object v2

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto/16 :goto_1
.end method
