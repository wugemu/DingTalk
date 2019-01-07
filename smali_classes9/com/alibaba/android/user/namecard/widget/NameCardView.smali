.class public Lcom/alibaba/android/user/namecard/widget/NameCardView;
.super Landroid/widget/RelativeLayout;
.source "NameCardView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/namecard/widget/NameCardView$a;,
        Lcom/alibaba/android/user/namecard/widget/NameCardView$TYPE;
    }
.end annotation


# instance fields
.field private A:Lcom/alibaba/doraemon/image/ImageMagician;

.field public a:Landroid/widget/TextView;

.field public b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

.field private h:Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/FrameLayout;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private s:I

.field private t:Landroid/view/View;

.field private u:Landroid/widget/ImageView;

.field private v:Z

.field private w:Z

.field private x:Landroid/content/Context;

.field private y:Landroid/view/View;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 112
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 116
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 117
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->A:Lcom/alibaba/doraemon/image/ImageMagician;

    if-nez v0, :cond_0

    .line 118
    const-string/jumbo v0, "IMAGE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/image/ImageMagician;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->A:Lcom/alibaba/doraemon/image/ImageMagician;

    .line 121
    :cond_0
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    .line 122
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->view_name_card_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 1127
    sget v0, Lezg$h;->img_background:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->u:Landroid/widget/ImageView;

    .line 1128
    sget v0, Lezg$h;->round_frame_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->c:Lcom/alibaba/android/user/namecard/widget/RoundedFrameLayout;

    .line 1129
    sget v0, Lezg$h;->name_card_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a:Landroid/widget/TextView;

    .line 1130
    sget v0, Lezg$h;->card_authed_badge:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->y:Landroid/view/View;

    .line 1131
    sget v0, Lezg$h;->name_card_company:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    .line 1132
    sget v0, Lezg$h;->name_card_certificate:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    .line 1133
    sget v0, Lezg$h;->name_card_position:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    .line 1134
    sget v0, Lezg$h;->name_card_phone:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    .line 1135
    sget v0, Lezg$h;->name_card_email:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    .line 1136
    sget v0, Lezg$h;->name_card_address:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    .line 1137
    sget v0, Lezg$h;->name_card_iv_avatar:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1138
    sget v0, Lezg$h;->name_card_iv_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    .line 1139
    sget v0, Lezg$h;->name_card_edit:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->p:Landroid/view/View;

    .line 1140
    sget v0, Lezg$h;->iftv_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1141
    sget v0, Lezg$h;->iftv_certification:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 1153
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    new-instance v1, Lcom/alibaba/android/user/namecard/widget/NameCardView$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/namecard/widget/NameCardView$1;-><init>(Lcom/alibaba/android/user/namecard/widget/NameCardView;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1162
    new-instance v0, Lcom/alibaba/android/user/namecard/widget/NameCardView$2;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/namecard/widget/NameCardView$2;-><init>(Lcom/alibaba/android/user/namecard/widget/NameCardView;)V

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1170
    sget v0, Lezg$h;->name_card_shadow:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->t:Landroid/view/View;

    .line 124
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/namecard/widget/NameCardView;)Lcom/alibaba/android/user/namecard/widget/NameCardView$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/namecard/widget/NameCardView;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->h:Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    return-object v0
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 536
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    if-eqz v1, :cond_4

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 537
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    move v1, v3

    :goto_1
    invoke-static {v4, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 538
    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_1
    move v1, v3

    :goto_2
    invoke-static {v4, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 539
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    iget-boolean v4, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    move v2, v3

    :cond_3
    invoke-static {v1, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 541
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->e:Z

    if-eqz v1, :cond_7

    .line 543
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->btnBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 547
    :goto_3
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    new-instance v2, Lcom/alibaba/android/user/namecard/widget/NameCardView$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/namecard/widget/NameCardView$3;-><init>(Lcom/alibaba/android/user/namecard/widget/NameCardView;)V

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 570
    :goto_4
    return-void

    :cond_4
    move v1, v3

    .line 536
    goto :goto_0

    :cond_5
    move v1, v2

    .line 537
    goto :goto_1

    :cond_6
    move v1, v2

    .line 538
    goto :goto_2

    .line 562
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 563
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 564
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->telBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 568
    :goto_5
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->q:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 565
    :catch_0
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "user"

    const-string/jumbo v2, "namecardview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Color.parseColor is error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_3
.end method

.method private a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;)V
    .locals 3
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 261
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->z:Z

    if-nez v0, :cond_1

    .line 263
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthed:Z

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 265
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v2, Lezg$e;->security_bg_orange:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 276
    :goto_0
    return-void

    .line 268
    :cond_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->orgAuthLevel:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 270
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->r:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v2, Lezg$e;->bg_blue:I

    invoke-static {v1, v2}, Ldp;->c(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setCardBackground(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)V
    .locals 10
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v3, 0x0

    const/16 v9, 0x8

    const/4 v5, 0x0

    .line 459
    if-nez p1, :cond_0

    .line 497
    :goto_0
    return-void

    .line 463
    :cond_0
    const-string/jumbo v2, ""

    .line 464
    .local v2, "url":Ljava/lang/String;
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgMediaId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 466
    :try_start_0
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgMediaId:Ljava/lang/String;

    invoke-static {v0}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 471
    :cond_1
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 472
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->A:Lcom/alibaba/doraemon/image/ImageMagician;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->u:Landroid/widget/ImageView;

    const/4 v4, 0x6

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/alibaba/doraemon/image/ImageMagician;->setImageDrawable(Landroid/widget/ImageView;Ljava/lang/String;Landroid/widget/AbsListView;IZZLjava/util/Map;)V

    .line 475
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgMaskColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 477
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->t:Landroid/view/View;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgMaskColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->t:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 467
    :catch_0
    move-exception v8

    .line 468
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 478
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 479
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 483
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->t:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 487
    :cond_3
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->s:I

    .line 489
    :try_start_2
    iget-object v0, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->bgColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->s:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 493
    :goto_3
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->t:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->u:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->s:I

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 490
    :catch_2
    move-exception v8

    .line 491
    .restart local v8    # "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method


# virtual methods
.method public final a()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    .line 516
    invoke-static {}, Lfuv;->a()Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;

    move-result-object v1

    .line 517
    .local v1, "personStatusObject":Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;
    if-eqz v1, :cond_1

    .line 518
    iget-object v0, v1, Lcom/alibaba/android/dingtalk/userbase/model/PersonStatusObject;->icon:Ljava/lang/String;

    .line 519
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Lcsy;->a(Ljava/lang/String;)I

    move-result v2

    .line 520
    .local v2, "resId":I
    if-lez v2, :cond_0

    .line 521
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 522
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 529
    .end local v0    # "icon":Ljava/lang/String;
    .end local v2    # "resId":I
    :goto_0
    return-void

    .line 524
    .restart local v0    # "icon":Ljava/lang/String;
    .restart local v2    # "resId":I
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 527
    .end local v0    # "icon":Ljava/lang/String;
    .end local v2    # "resId":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    invoke-static {v3, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V
    .locals 5
    .param p1, "profileObject"    # Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;
    .param p2, "isHide"    # Z
    .param p3, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 279
    if-nez p1, :cond_1

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 283
    :cond_1
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 286
    :pswitch_0
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 287
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 290
    :cond_2
    if-eqz p2, :cond_5

    .line 292
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 293
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_org_info_is_empty:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 296
    :cond_3
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    if-nez v1, :cond_4

    .line 298
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_org_invisible_to_external:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 301
    :cond_4
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 303
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;)V

    goto :goto_0

    .line 306
    :cond_5
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->w:Z

    if-eqz v1, :cond_7

    .line 307
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, ""

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 309
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;)V

    goto/16 :goto_0

    .line 307
    :cond_6
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    goto :goto_1

    .line 312
    :cond_7
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_8

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->orgVisiableForStranger:Z

    if-eqz v1, :cond_8

    .line 315
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->orgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 316
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 317
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;)V

    goto/16 :goto_0

    .line 319
    :cond_8
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    .line 320
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 326
    :pswitch_1
    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->h()Z

    move-result v1

    if-nez v1, :cond_9

    .line 327
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {}, Lcom/alibaba/android/user/contact/utils/UserUtils;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    :cond_9
    if-eqz p2, :cond_c

    .line 332
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 333
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 334
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_position_info_is_empty:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 336
    :cond_a
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_b

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    if-nez v1, :cond_b

    .line 338
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_position_invisible_to_external:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 340
    :cond_b
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 345
    :cond_c
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->w:Z

    if-eqz v1, :cond_e

    .line 346
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 347
    .local v0, "isEmpty":Z
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_d

    const-string/jumbo v1, ""

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 347
    :cond_d
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    goto :goto_2

    .line 352
    .end local v0    # "isEmpty":Z
    :cond_e
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_f

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->titleVisiableForStranger:Z

    if-eqz v1, :cond_f

    .line 355
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 356
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 359
    :cond_f
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 365
    :pswitch_2
    if-eqz p2, :cond_12

    .line 367
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 368
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 369
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_tel_info_is_empty:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 371
    :cond_10
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_11

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    if-nez v1, :cond_11

    .line 373
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_tel_invisible_to_external:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 375
    :cond_11
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 378
    :cond_12
    iget-boolean v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->w:Z

    if-eqz v1, :cond_14

    .line 379
    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string/jumbo v1, ""

    :goto_3
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 379
    :cond_13
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    goto :goto_3

    .line 383
    :cond_14
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_15

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->mobileVisiableForStranger:Z

    if-eqz v1, :cond_15

    .line 386
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->tel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 389
    :cond_15
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->l:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 394
    :pswitch_3
    if-eqz p2, :cond_17

    .line 396
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 397
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 398
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_16

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    if-nez v1, :cond_16

    .line 400
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_email_invisible_to_external:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 402
    :cond_16
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 407
    :cond_17
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_18

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->emailVisiableForStranger:Z

    if-eqz v1, :cond_18

    .line 410
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->email:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 413
    :cond_18
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->m:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 418
    :pswitch_4
    if-eqz p2, :cond_1a

    .line 420
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    .line 421
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 422
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_19

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    if-nez v1, :cond_19

    .line 424
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->x:Landroid/content/Context;

    sget v3, Lezg$l;->dt_office_address_invisible_to_external:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 426
    :cond_19
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 431
    :cond_1a
    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1b

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    if-eqz v1, :cond_1b

    iget-object v1, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardSettingObject:Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;

    iget-boolean v1, v1, Lcom/alibaba/android/dingtalk/userbase/model/CardSettingObject;->addressVisiableForStranger:Z

    if-eqz v1, :cond_1b

    .line 434
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->address:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    invoke-static {v1, v3}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 437
    :cond_1b
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->n:Landroid/widget/TextView;

    invoke-static {v1, v4}, Lfxp;->a(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 283
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public final a(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;Z)V
    .locals 0
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;
    .param p2, "isHide"    # Z

    .prologue
    .line 175
    iput-boolean p2, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V

    .line 177
    return-void
.end method

.method public setDataToView(Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;)V
    .locals 5
    .param p1, "object"    # Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 195
    if-nez p1, :cond_1

    .line 196
    const-string/jumbo v0, "NameCardView"

    const-string/jumbo v2, "object null"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lfxo;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3227
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    invoke-static {v0, v3}, Lful;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->b:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iget-object v3, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->avatarMediaId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1573
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    if-eqz v0, :cond_4

    .line 1576
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    if-eqz v0, :cond_2

    .line 1577
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardExtensionObject:Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;

    iget-boolean v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardExtensionObject;->cardAuthed:Z

    iput-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->z:Z

    .line 1579
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->y:Landroid/view/View;

    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->z:Z

    if-eqz v0, :cond_5

    move v0, v1

    :goto_1
    invoke-static {v3, v0}, Lfxp;->a(Landroid/view/View;I)V

    .line 1580
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->z:Z

    if-eqz v0, :cond_3

    .line 1581
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->j:Landroid/widget/FrameLayout;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    .line 1583
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    invoke-virtual {p0, v0, v3, v1}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    .line 1584
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    const/4 v4, 0x1

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    .line 1585
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    const/4 v4, 0x2

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    .line 1586
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    const/4 v4, 0x3

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    .line 1587
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->g:Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->v:Z

    const/4 v4, 0x4

    invoke-virtual {p0, v0, v3, v4}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;ZI)V

    .line 1591
    :cond_4
    iget-boolean v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->f:Z

    if-eqz v0, :cond_6

    .line 1592
    invoke-virtual {p0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a()V

    .line 2532
    :goto_2
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->p:Landroid/view/View;

    iget-boolean v3, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->d:Z

    if-eqz v3, :cond_7

    :goto_3
    invoke-static {v0, v1}, Lfxp;->a(Landroid/view/View;I)V

    .line 208
    iget-object v2, p1, Lcom/alibaba/android/dingtalk/userbase/model/CardUserObject;->cardProfileObject:Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;

    .line 3212
    if-eqz v2, :cond_0

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->themeConfig:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 3233
    if-nez v2, :cond_8

    .line 3234
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->getDefaultObject()Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    move-result-object v0

    .line 3218
    :goto_4
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->setCardBackground(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)V

    .line 3219
    invoke-direct {p0, v0}, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a(Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;)V

    .line 3222
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->a:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->nameBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3223
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->i:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->titleBlockColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3224
    iget-object v1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->k:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->titleBlockColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 3225
    :catch_0
    move-exception v0

    .line 3226
    const-string/jumbo v1, "user"

    const-string/jumbo v2, "namecardview"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "Color.parseColor is error"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move v0, v2

    .line 1579
    goto/16 :goto_1

    .line 1594
    :cond_6
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->o:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lfxp;->a(Landroid/view/View;I)V

    goto :goto_2

    :cond_7
    move v1, v2

    .line 2532
    goto :goto_3

    .line 3236
    :cond_8
    const-string/jumbo v0, "white"

    .line 3237
    iget-object v1, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    if-eqz v1, :cond_b

    .line 3238
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardStyleObject:Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardStyleObject;->orgThemeId:Ljava/lang/String;

    move-object v1, v0

    .line 3240
    :goto_5
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    if-eqz v0, :cond_a

    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgThemes:Ljava/util/List;

    invoke-static {v0}, Lcpd;->a(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 3241
    iget-object v0, v2, Lcom/alibaba/android/dingtalk/userbase/model/CardProfileObject;->cardDynamicObject:Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;

    iget-object v0, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardDynamicObject;->orgThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    .line 3242
    if-eqz v0, :cond_9

    iget-object v3, v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;->orgThemeId:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_4

    .line 3248
    :cond_a
    new-instance v0, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/userbase/model/CardNewStyleObject;-><init>()V

    goto/16 :goto_4

    :cond_b
    move-object v1, v0

    goto :goto_5
.end method

.method public setMine(Z)V
    .locals 0
    .param p1, "mine"    # Z

    .prologue
    .line 621
    iput-boolean p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->w:Z

    .line 622
    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Landroid/widget/ImageView$ScaleType;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 501
    return-void
.end method

.method public setSubViewClickListener(Lcom/alibaba/android/user/namecard/widget/NameCardView$a;)V
    .locals 0
    .param p1, "subViewClickListener"    # Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/alibaba/android/user/namecard/widget/NameCardView;->h:Lcom/alibaba/android/user/namecard/widget/NameCardView$a;

    .line 109
    return-void
.end method
