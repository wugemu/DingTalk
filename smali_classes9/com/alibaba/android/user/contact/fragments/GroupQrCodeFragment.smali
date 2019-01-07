.class public Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;
.super Lcom/alibaba/android/dingtalkbase/BaseQrFragment;
.source "GroupQrCodeFragment.java"


# static fields
.field private static final f:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/alibaba/wukong/im/Conversation;

.field private d:Landroid/graphics/Bitmap;

.field private e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->f:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/wukong/im/Conversation;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;
    .param p1, "x1"    # Lcom/alibaba/wukong/im/Conversation;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/ImageView;

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 10
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "qrView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 294
    const/16 v3, 0x21c

    .line 296
    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->group_qrcode_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 297
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->group_qrcode_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 294
    invoke-static {p1, v3, v4, v5}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->d:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_3

    .line 316
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->d:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 317
    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->d:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 318
    invoke-virtual {p2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    :cond_0
    return-void

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "IMAGE"

    invoke-static {v3}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/image/ImageMagician;

    .line 300
    .local v1, "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    const-wide/16 v4, 0x0

    invoke-interface {v1, v4, v5}, Lcom/alibaba/doraemon/image/ImageMagician;->clearMemoryCache(J)V

    .line 302
    const/16 v3, 0x21c

    .line 304
    :try_start_1
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lezg$e;->group_qrcode_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 305
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lezg$e;->group_qrcode_bg_color:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 302
    invoke-static {p1, v3, v4, v5}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->d:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/google/zxing/WriterException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 307
    :catch_1
    move-exception v3

    const-string/jumbo v3, "user"

    sget-object v4, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->f:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "GroupQrCodeFragment loadCard error : "

    aput-object v6, v5, v7

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 308
    :catch_2
    move-exception v2

    .line 309
    .local v2, "oom":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "user"

    sget-object v4, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->f:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "GroupQrCodeFragment retry oom : "

    aput-object v6, v5, v7

    invoke-virtual {v2}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 311
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    .end local v1    # "imageMagician":Lcom/alibaba/doraemon/image/ImageMagician;
    .end local v2    # "oom":Ljava/lang/OutOfMemoryError;
    :catch_3
    move-exception v0

    .line 312
    .local v0, "e":Lcom/google/zxing/WriterException;
    const-string/jumbo v3, "user"

    sget-object v4, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->f:Ljava/lang/String;

    new-array v5, v9, [Ljava/lang/String;

    const-string/jumbo v6, "GroupQrCodeFragment loadCard error : "

    aput-object v6, v5, v7

    invoke-virtual {v0}, Lcom/google/zxing/WriterException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v5}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    .prologue
    .line 45
    .line 1323
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 45
    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c()V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;)V
    .locals 5
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 178
    if-nez p1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v2

    const-class v3, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v2, v3}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 183
    .local v1, "shareReverseInterface":Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, " "

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p1, v3, v4}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I

    move-result v0

    .line 184
    .local v0, "share":I
    if-nez v0, :cond_2

    .line 185
    sget v2, Lezg$l;->share_no_apps:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0

    .line 186
    :cond_2
    const/4 v2, -0x2

    if-ne v0, v2, :cond_0

    .line 187
    sget v2, Lezg$l;->share_not_support:I

    invoke-static {v2}, Lcms;->a(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ImageView;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Lcom/alibaba/wukong/im/Conversation;)I

    move-result v0

    .line 111
    .local v0, "resId":I
    if-eqz v0, :cond_2

    .line 112
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 113
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 115
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 3
    .param p1, "imageView"    # Landroid/widget/ImageView;
    .param p2, "progressView"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    .line 139
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1236
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 143
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->e:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->b:Ljava/lang/String;

    .line 1233
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1234
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    sget v0, Lezg$l;->group_qrcode_generate_failed:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 1240
    :cond_3
    const-class v0, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v0}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$2;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-interface {v0, v2, v1}, Lcom/alibaba/wukong/im/ConversationService;->getCode(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 72
    if-nez p1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 77
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 5
    .param p1, "tvOrgTip"    # Landroid/widget/TextView;
    .param p2, "llBottomTips"    # Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 152
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->d(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lfxh;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "orgTip":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 162
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method protected final a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
    .locals 3
    .param p1, "avatarImageView"    # Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 91
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/wukong/im/Conversation;)Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "icon":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 97
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_2
    sget v1, Lezg$g;->avatar_nobody:I

    invoke-virtual {p1, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method protected final b(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v0}, Lcom/alibaba/wukong/im/Conversation;->title()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected final c(Landroid/widget/TextView;)V
    .locals 5
    .param p1, "textView"    # Landroid/widget/TextView;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x0

    .line 121
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-static {v1}, Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;->castToDisplay(Lcom/alibaba/wukong/im/Conversation;)Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;

    move-result-object v0

    .line 127
    .local v0, "dingtalkConversation":Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a(Lcom/alibaba/android/dingtalkim/base/model/DingtalkConversation;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    .line 128
    invoke-static {v1}, Lfxh;->b(Lcom/alibaba/wukong/im/Conversation;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 132
    :cond_3
    sget v1, Lezg$l;->group_qrcode_member_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->c:Lcom/alibaba/wukong/im/Conversation;

    invoke-interface {v3}, Lcom/alibaba/wukong/im/Conversation;->totalMembers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public final d()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->d:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "conversation_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "conversationId":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->H:Landroid/os/Bundle;

    const-string/jumbo v2, "intent_key_preset_link"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->e:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;->b:Ljava/lang/String;

    .line 1192
    const-class v1, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v1}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/wukong/im/ConversationService;

    new-instance v2, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment$1;-><init>(Lcom/alibaba/android/user/contact/fragments/GroupQrCodeFragment;)V

    invoke-interface {v1, v2, v0}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    .line 68
    return-void
.end method
