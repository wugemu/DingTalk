.class public Lcom/alibaba/android/ding/attachment/AttachmentImageView;
.super Lcom/alibaba/android/ding/attachment/BaseAttachmentView;
.source "AttachmentImageView.java"


# instance fields
.field protected a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

.field protected b:Landroid/widget/ImageView;

.field protected c:Landroid/widget/TextView;

.field protected d:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/attachment/AttachmentImageView;Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/ding/attachment/AttachmentImageView;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    .locals 7
    .param p1, "attachment"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 216
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-object v2

    .line 219
    :cond_0
    new-instance v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;

    invoke-direct {v2}, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;-><init>()V

    .line 221
    .local v2, "photo":Lcom/alibaba/laiwang/photokit/browser/PhotoObject;
    :try_start_0
    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->url:Ljava/lang/String;

    .line 222
    const-string/jumbo v3, "DING"

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->j:Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->k:Ljava/lang/String;

    invoke-static {v4, v5}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->urlParams:Ljava/util/HashMap;

    .line 223
    const-string/jumbo v3, ""

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->name:Ljava/lang/String;

    .line 224
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->selfSend:Z

    .line 225
    const-wide/16 v4, 0x0

    iput-wide v4, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->data:J

    .line 226
    iget-wide v4, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    iput-wide v4, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picSize:J

    .line 227
    const/4 v3, 0x0

    iput v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 228
    iget-wide v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->i:J

    iput-wide v4, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->uid:J

    .line 229
    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->filename:Ljava/lang/String;

    .line 230
    iget-object v3, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 231
    iget-object v1, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->extension:Ljava/util/Map;

    .line 232
    .local v1, "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v3, "o"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "o"

    .line 233
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "1"

    const-string/jumbo v4, "o"

    .line 234
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    const/4 v3, 0x1

    iput v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->picFlag:I

    .line 238
    .end local v1    # "extension":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    if-nez v3, :cond_2

    .line 239
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    .line 241
    :cond_2
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "file_name"

    iget-object v5, p1, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    iget-object v3, v2, Lcom/alibaba/laiwang/photokit/browser/PhotoObject;->extension:Ljava/util/HashMap;

    const-string/jumbo v4, "space_transfer_src"

    const-string/jumbo v5, "ding"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    .local v0, "e":Lcom/laiwang/protocol/media/MediaIdEncodingException;
    const-string/jumbo v3, "AttachmentImageView getPhotoObject failed"

    invoke-static {v3, v0}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 89
    const-string/jumbo v1, "IMAGE"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 90
    .local v0, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v3, v2

    move-object v7, v2

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 91
    return-void
.end method

.method protected final a(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 75
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 79
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->getLayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 80
    sget v1, Laxp$f;->layout_content:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->g:Landroid/view/View;

    .line 81
    sget v1, Laxp$f;->ding_attachment_iv_image:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    .line 82
    sget v1, Laxp$f;->iv_gif_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->b:Landroid/widget/ImageView;

    .line 83
    sget v1, Laxp$f;->ding_attachment_file_name:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    .line 84
    sget v1, Laxp$f;->ding_attachment_uploading:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;)V
    .locals 9
    .param p1, "object"    # Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;
    .param p2, "borderType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;
    .param p3, "showType"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;
    .param p4, "style"    # Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowStyle;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 145
    invoke-super {p0, p1}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView;->setAttachmentObject(Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;)V

    .line 146
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    if-nez v3, :cond_1

    .line 1202
    :cond_0
    :goto_0
    return-void

    .line 149
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->type:I

    invoke-static {v3}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->fromInt(I)Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    move-result-object v0

    .line 150
    .local v0, "type":Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;
    sget-object v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->IMAGE:Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;

    invoke-virtual {v3, v0}, Lcom/alibaba/android/ding/base/objects/DingAttachmentType$AttachType;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    sget-object v3, Lcom/alibaba/android/ding/attachment/AttachmentImageView$2;->a:[I

    invoke-virtual {p3}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$ShowType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 168
    :goto_1
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v3, v3, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->mediaId:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authMediaId:Ljava/lang/String;

    invoke-static {v3, v4}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->authCode:Ljava/lang/String;

    .line 1174
    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->b:Landroid/widget/ImageView;

    invoke-static {v3}, Lbke;->b(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_2
    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1175
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1176
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    sget v2, Laxp$e;->file_pic:I

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setImageResource(I)V

    goto :goto_0

    .line 155
    :pswitch_0
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v4, v5}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v4, v4, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 159
    :pswitch_1
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Laxp$i;->ding_text_has_uploaded:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-object v5, v5, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->fileName:Ljava/lang/String;

    aput-object v5, v4, v1

    const/4 v5, 0x1

    const-string/jumbo v6, " - "

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->h:Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;

    iget-wide v6, v6, Lcom/alibaba/android/ding/base/objects/DingAttachmentObject;->size:J

    invoke-static {v6, v7}, Lbjk;->a(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :pswitch_2
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v3, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_2
    move v1, v2

    .line 1174
    goto :goto_2

    .line 1181
    :cond_3
    :try_start_0
    invoke-static {v3}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 1182
    invoke-virtual {p0}, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v5, Laxp$d;->ding_attachment_image_view_max_length:I

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

    .line 1183
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getWidth()I

    move-result v2

    .line 1184
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaId;->getHeight()I

    move-result v1

    .line 1185
    if-lez v2, :cond_6

    if-lez v1, :cond_6

    .line 1186
    if-gt v2, v5, :cond_4

    if-le v1, v5, :cond_5

    .line 1187
    :cond_4
    int-to-float v5, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1188
    int-to-float v2, v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 1189
    int-to-float v1, v1

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 1191
    :cond_5
    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1192
    iget-object v5, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v5}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1193
    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1194
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    iget-object v2, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1201
    :cond_6
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->j:Ljava/lang/String;

    invoke-static {v1}, Lbkh;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1202
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v2

    const-string/jumbo v5, "DING"

    iget-object v6, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->j:Ljava/lang/String;

    iget-object v7, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->k:Ljava/lang/String;

    .line 1203
    invoke-static {v6, v7}, Lbjl;->a(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4, v8}, Liaf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    .line 1202
    invoke-virtual {v1, v3, v2, v4, v8}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;ILjava/util/Map;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1197
    :catch_0
    move-exception v1

    .line 1198
    const-string/jumbo v2, "AttachmentImageView showImage failed"

    invoke-static {v2, v1}, Lbkr;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1205
    :cond_7
    const-string/jumbo v1, "AttachmentImageView showImage:"

    const-string/jumbo v2, "objectDing is null auth:"

    invoke-static {v1, v2, v3}, Lbjl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    iget-object v1, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-static {p2}, Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;->getValue(Lcom/alibaba/android/ding/attachment/BaseAttachmentView$BorderType;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->a(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 135
    return-void
.end method

.method protected final b(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 95
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->g:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/ding/attachment/AttachmentImageView$1;-><init>(Lcom/alibaba/android/ding/attachment/AttachmentImageView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    return-void
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 70
    sget v0, Laxp$g;->ding_layout_ding_attachment_image_view:I

    return v0
.end method

.method public setAttachBackground(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 213
    return-void
.end method

.method public setParentListView(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "lv"    # Landroid/widget/ListView;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/alibaba/android/ding/attachment/AttachmentImageView;->a:Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/ExtendedImageView;->setParentListView(Landroid/widget/ListView;)V

    .line 129
    :cond_0
    return-void
.end method
