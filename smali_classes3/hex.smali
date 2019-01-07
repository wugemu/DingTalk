.class public final Lhex;
.super Lhes;
.source "MiniAppListItemInChatViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lhes",
        "<",
        "Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Landroid/widget/RelativeLayout;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/content/Context;

.field private k:Lheo;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lhex;-><init>(Landroid/view/View;Lheo;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lheo;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "hostHandler"    # Lheo;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lhes;-><init>(Landroid/view/View;)V

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lhex;->j:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lhex;->k:Lheo;

    .line 58
    return-void
.end method

.method static synthetic a(Lhex;)Lheo;
    .locals 1
    .param p0, "x0"    # Lhex;

    .prologue
    .line 33
    iget-object v0, p0, Lhex;->k:Lheo;

    return-object v0
.end method

.method public static b()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lhdn$i;->activity_miniapp_list_item_in_chat_layout:I

    return v0
.end method

.method static synthetic b(Lhex;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lhex;

    .prologue
    .line 33
    iget-object v0, p0, Lhex;->j:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 108
    iget-object v1, p0, Lhex;->j:Landroid/content/Context;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 109
    .local v0, "radius":I
    sget v1, Lhdn$h;->mini_app_in_chat_layout:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lhex;->e:Landroid/widget/RelativeLayout;

    .line 110
    sget v1, Lhdn$h;->mini_app_in_chat_icon:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v1, p0, Lhex;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 111
    iget-object v1, p0, Lhex;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    int-to-float v2, v0

    int-to-float v3, v0

    int-to-float v4, v0

    int-to-float v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 112
    iget-object v1, p0, Lhex;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    sget v2, Lhdn$g;->bg_e_app_item_shape:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->setBackgroundResource(I)V

    .line 113
    sget v1, Lhdn$h;->mini_app_in_chat_name:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhex;->g:Landroid/widget/TextView;

    .line 114
    sget v1, Lhdn$h;->mini_app_in_chat_desc:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhex;->h:Landroid/widget/TextView;

    .line 115
    sget v1, Lhdn$h;->mini_app_in_chat_appear_time:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lhex;->i:Landroid/widget/TextView;

    .line 116
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v8, 0x0

    .line 33
    check-cast p1, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;

    .line 1062
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1063
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getLogo()Ljava/lang/String;

    move-result-object v0

    .line 1064
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1066
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1067
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1068
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lhex;->f:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1076
    :cond_0
    :goto_0
    iget-object v0, p0, Lhex;->g:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getMiniAppName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1077
    iget-object v0, p0, Lhex;->h:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    invoke-virtual {p1}, Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;->getMiniAppItemModel()Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/model/MiniAppItemModel;->getAppearTime()Ljava/lang/Long;

    move-result-object v0

    .line 2044
    invoke-static {v0, v8, v9}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v0

    .line 1079
    cmp-long v2, v0, v8

    if-lez v2, :cond_1

    .line 1080
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "yyyy/MM/dd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1082
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1083
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1084
    iget-object v1, p0, Lhex;->i:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1091
    :cond_1
    :goto_1
    iget-object v0, p0, Lhex;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Lhex$1;

    invoke-direct {v1, p0, p1}, Lhex$1;-><init>(Lhex;Lcom/alibaba/lightapp/runtime/model/MiniAppListItemModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    :cond_2
    return-void

    .line 1071
    :catch_0
    move-exception v0

    .line 1072
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1086
    :catch_1
    move-exception v0

    .line 1087
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1
.end method
