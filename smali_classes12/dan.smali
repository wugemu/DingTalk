.class public final Ldan;
.super Ldal;
.source "ChannelAppViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ldal",
        "<",
        "Lddl;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Lddl;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Ldal;-><init>(Landroid/view/View;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    sget v0, Lctk$f;->oa_entry_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldan;->a:Landroid/widget/ImageView;

    .line 45
    sget v0, Lctk$f;->oa_entry_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldan;->b:Landroid/widget/TextView;

    .line 46
    sget v0, Lctk$f;->oa_entry_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldan;->c:Landroid/widget/TextView;

    .line 47
    sget v0, Lctk$f;->oa_entry_inner_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldan;->d:Landroid/view/View;

    .line 48
    sget v0, Lctk$f;->oa_entry_security_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldan;->e:Landroid/view/View;

    .line 50
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    check-cast p1, Lddl;

    .line 1064
    iput-object p1, p0, Ldan;->f:Lddl;

    .line 1065
    iget-object v0, p0, Ldan;->f:Lddl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldan;->f:Lddl;

    iget-object v0, v0, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    if-nez v0, :cond_2

    .line 1066
    :cond_0
    iget-object v0, p0, Ldan;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Ldan;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1106
    :cond_1
    :goto_0
    return-void

    .line 1069
    :cond_2
    iget-object v0, p0, Ldan;->d:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Ldan;->b:Landroid/widget/TextView;

    iget-object v1, p0, Ldan;->f:Lddl;

    iget-object v1, v1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    const/4 v0, 0x0

    .line 1073
    :try_start_0
    iget-object v1, p0, Ldan;->f:Lddl;

    iget-object v1, v1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->icon:Ljava/lang/String;

    invoke-static {v1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1077
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v1

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v3, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v1, v0, v2, v3}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v8

    .line 1079
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Ldan;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1080
    iget-object v0, p0, Ldan;->a:Landroid/widget/ImageView;

    sget v1, Lctk$e;->oa_entry_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1081
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1082
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Ldan;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v4, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 1102
    :cond_3
    iget-object v0, p0, Ldan;->f:Lddl;

    iget-object v0, v0, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    if-eqz v0, :cond_1

    .line 1103
    iget-object v0, p0, Ldan;->f:Lddl;

    iget-object v0, v0, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1104
    iget-object v0, p0, Ldan;->c:Landroid/widget/TextView;

    const-string/jumbo v1, "NEW"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1074
    :catch_0
    move-exception v1

    .line 1075
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1

    .line 1105
    :cond_4
    iget-object v0, p0, Ldan;->f:Lddl;

    iget-object v0, v0, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v0, v0, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_5

    .line 1106
    iget-object v0, p0, Ldan;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ldan;->f:Lddl;

    iget-object v1, v1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1108
    :cond_5
    iget-object v0, p0, Ldan;->c:Landroid/widget/TextView;

    iget-object v1, p0, Ldan;->f:Lddl;

    iget-object v1, v1, Lddl;->b:Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;

    iget-object v1, v1, Lcom/alibaba/android/dingtalkim/channelsource/model/ChannelAppModel;->hintText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
