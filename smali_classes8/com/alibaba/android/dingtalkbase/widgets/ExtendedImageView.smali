.class public Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;
.super Landroid/widget/ImageView;
.source "ExtendedImageView.java"


# static fields
.field private static b:Landroid/graphics/drawable/Drawable;

.field private static c:Landroid/graphics/drawable/Drawable;


# instance fields
.field protected a:Lcom/alibaba/doraemon/image/ImageMagician;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 38
    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->c:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 36
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    .line 45
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    .line 50
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 39
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    .line 41
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    .line 55
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 68
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->b:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$e;->ding_image_mask_normal:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->b:Landroid/graphics/drawable/Drawable;

    .line 71
    :cond_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->c:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcig$e;->ding_image_mask_normal_unconfirmed:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->c:Landroid/graphics/drawable/Drawable;

    .line 74
    :cond_1
    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 0
    .param p1, "resId"    # I
    .param p2, "borderType"    # I

    .prologue
    .line 102
    invoke-virtual {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    .line 103
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setCurrentDrawable(I)V

    .line 104
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 1
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "borderType"    # I

    .prologue
    const/4 v0, 0x0

    .line 91
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "borderType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 95
    .local p3, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "headParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    sget v0, Lcig$e;->ding_attachment_image_defalt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    .line 97
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    const/4 v5, 0x0

    .line 1130
    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setCurrentDrawable(I)V

    .line 100
    :cond_1
    return-void

    .line 1134
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdUri(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1135
    invoke-static {p1}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1137
    invoke-static {}, Lhcj;->a()Lhcj;

    move-result-object v2

    .line 1138
    const/16 v3, 0x1c2

    const/16 v4, 0x2710

    const/4 v6, 0x1

    invoke-virtual {v2, v1, v3, v4, v6}, Lhcj;->a(Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v2

    .line 1139
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    move-object v1, p0

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1144
    :catch_0
    move-exception v0

    .line 1145
    invoke-virtual {v0}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    goto :goto_0

    .line 1142
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_1
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 120
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 121
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 123
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 125
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 127
    :cond_0
    return-void
.end method

.method public setCurrentDrawable(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 77
    packed-switch p1, :pswitch_data_0

    .line 88
    :goto_0
    return-void

    .line 79
    :pswitch_0
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->b:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 82
    :pswitch_1
    sget-object v0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->c:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 85
    :pswitch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->d:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .locals 8
    .param p1, "path"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 110
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    sget v0, Lcig$e;->ding_attachment_image_defalt:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 114
    :cond_0
    return-void
.end method

.method public setParentListView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "v"    # Landroid/widget/ListView;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->e:Landroid/widget/ListView;

    .line 107
    return-void
.end method
