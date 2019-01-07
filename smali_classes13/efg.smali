.class public final Lefg;
.super Lefc;
.source "MicroSectionItemViewHolder.java"


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/TextView;

.field private c:Lefv;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lefc;-><init>(Landroid/view/View;)V

    .line 29
    return-void
.end method

.method public static a()I
    .locals 1

    .prologue
    .line 32
    sget v0, Ledz$g;->oa_entry_section_item:I

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    sget v0, Ledz$f;->oa_entry_section_item_img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lefg;->a:Landroid/widget/ImageView;

    .line 39
    sget v0, Ledz$f;->oa_entry_section_item_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lefg;->b:Landroid/widget/TextView;

    .line 41
    :cond_0
    return-void
.end method

.method public final a(Lefv;)V
    .locals 10
    .param p1, "microGridItemObject"    # Lefv;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 45
    iput-object p1, p0, Lefg;->c:Lefv;

    .line 46
    iget-object v0, p0, Lefg;->c:Lefv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lefg;->c:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    if-nez v0, :cond_2

    .line 47
    :cond_0
    iget-object v0, p0, Lefg;->a:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lefg;->b:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 50
    :cond_2
    iget-object v0, p0, Lefg;->a:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    iget-object v0, p0, Lefg;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 52
    const/4 v9, 0x0

    .line 53
    .local v9, "url":Ljava/lang/String;
    iget-object v0, p0, Lefg;->b:Landroid/widget/TextView;

    iget-object v1, p1, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v1, v1, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    :try_start_0
    iget-object v0, p0, Lefg;->c:Lefv;

    iget-object v0, v0, Lefv;->b:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iget-object v0, v0, Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;->icon:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 59
    :goto_1
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v0

    sget v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    sget v2, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->d:I

    invoke-virtual {v0, v9, v1, v2}, Lhcj;->a(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v9

    .line 60
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lefg;->a:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 62
    iget-object v0, p0, Lefg;->a:Landroid/widget/ImageView;

    sget v1, Ledz$e;->oa_entry_icon_default:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 64
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lefg;->a:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/16 v4, 0x16

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v9

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v8

    .line 57
    .local v8, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    invoke-virtual {v8}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_1
.end method
