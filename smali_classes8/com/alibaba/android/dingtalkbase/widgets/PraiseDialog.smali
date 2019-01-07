.class public Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "PraiseDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;,
        Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;,
        Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$ButtonType;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

.field private c:I
    .annotation build Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$ButtonType;
    .end annotation
.end field

.field private d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Ljava/lang/String;

.field private i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

.field private j:Z

.field private k:I


# direct methods
.method private constructor <init>(Landroid/content/Context;ILcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "params"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .prologue
    .line 109
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 1060
    iget-object v0, p3, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->d:Ljava/lang/String;

    .line 110
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->h:Ljava/lang/String;

    .line 111
    iput-object p3, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .prologue
    .line 105
    sget v0, Lcig$k;->CustomDialog:I

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;-><init>(Landroid/content/Context;ILcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;)V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->k:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    return-object v0
.end method

.method private a()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 226
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .line 8060
    iget-object v0, v3, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->c:Ljava/lang/String;

    .line 227
    .local v0, "mediaId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 228
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->isMediaIdString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 230
    :try_start_0
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    .local v2, "url":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 232
    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToMediaIdObj(Ljava/lang/String;)Lcom/laiwang/protocol/media/MediaId;

    move-result-object v1

    .line 233
    .local v1, "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    if-eqz v1, :cond_0

    .line 234
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    const/4 v5, 0x0

    invoke-interface {v3, v4, v2, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    .end local v1    # "mediaIdObj":Lcom/laiwang/protocol/media/MediaId;
    .end local v2    # "url":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 239
    :catch_0
    move-exception v3

    const-string/jumbo v3, "PraiseDialog"

    const-string/jumbo v4, "JSAPI"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "is Not a MediaString = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 242
    :cond_1
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    invoke-interface {v3, v4, v0, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->j:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->c:I

    return p1
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->j:Z

    return v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 251
    .local v0, "id":I
    sget v1, Lcig$f;->praise_close:I

    if-ne v0, v1, :cond_2

    .line 252
    invoke-static {}, Lcmx;->b()Lcom/alibaba/doraemon/statistics/Statistics;

    move-result-object v1

    const-string/jumbo v2, "starwindow-close-click"

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/statistics/Statistics;->ctrlClicked(Ljava/lang/String;)V

    .line 266
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->dismiss()V

    .line 268
    :cond_1
    return-void

    .line 254
    :cond_2
    sget v1, Lcig$f;->praise_btn:I

    if-ne v0, v1, :cond_1

    .line 256
    iget v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->c:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 9277
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

    if-eqz v1, :cond_0

    .line 9278
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .line 10060
    iget-object v2, v2, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->e:Ljava/lang/String;

    .line 9278
    iget v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->k:I

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;->onPraise(Ljava/lang/String;I)V

    goto :goto_0

    .line 8271
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

    if-eqz v1, :cond_0

    .line 8272
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->b:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;

    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .line 9060
    iget-object v3, v3, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->e:Ljava/lang/String;

    .line 8272
    iget v4, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->k:I

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$a;->onFeedback(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v5, 0x0

    .line 116
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 117
    sget v0, Lcig$h;->praise_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->setContentView(I)V

    .line 1133
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1134
    if-eqz v0, :cond_0

    .line 1135
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 1137
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1139
    invoke-static {v2}, Lcms;->a(Landroid/content/Context;)I

    move-result v3

    .line 1140
    const v4, 0x44214000    # 645.0f

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    .line 1141
    if-le v3, v4, :cond_8

    .line 1142
    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int v2, v3, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1147
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1148
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 1154
    :cond_0
    sget v0, Lcig$f;->praise_icon:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    .line 1155
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {v0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v0

    .line 1156
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    int-to-float v2, v0

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0, v5, v5}, Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;->a(FFFF)V

    .line 1158
    sget v0, Lcig$f;->praise_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->e:Landroid/widget/TextView;

    .line 1159
    sget v0, Lcig$f;->praise_sub_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->f:Landroid/widget/TextView;

    .line 1160
    sget v0, Lcig$f;->praise_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1161
    if-eqz v0, :cond_1

    .line 1162
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1165
    :cond_1
    sget v0, Lcig$f;->praise_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->g:Landroid/widget/TextView;

    .line 1166
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1167
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1168
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->g:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1172
    :cond_2
    sget v0, Lcig$f;->rating_bar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    .line 1173
    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a:Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;

    .line 1174
    if-eqz v0, :cond_3

    .line 1175
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar;->setOnRatingChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/SpaceRatingBar$a;)V

    .line 1199
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a()V

    .line 1203
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->i:Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;

    .line 1204
    if-eqz v0, :cond_7

    .line 1207
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 2060
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->a:Ljava/lang/String;

    .line 1207
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1208
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->e:Landroid/widget/TextView;

    .line 3060
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->a:Ljava/lang/String;

    .line 1208
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1211
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->f:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 4060
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->b:Ljava/lang/String;

    .line 1211
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 1212
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->f:Landroid/widget/TextView;

    .line 5060
    iget-object v2, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->b:Ljava/lang/String;

    .line 1212
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1215
    :cond_5
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->d:Lcom/alibaba/android/dingtalkbase/widgets/RoundedImageView;

    if-eqz v1, :cond_6

    .line 1216
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->a()V

    .line 6060
    :cond_6
    iget-object v1, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->f:Ljava/lang/String;

    .line 1219
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1220
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog;->g:Landroid/widget/TextView;

    .line 7060
    iget-object v0, v0, Lcom/alibaba/android/dingtalkbase/widgets/PraiseDialog$b;->f:Ljava/lang/String;

    .line 1220
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    :cond_7
    return-void

    .line 1144
    :cond_8
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto/16 :goto_0
.end method
