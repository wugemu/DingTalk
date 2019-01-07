.class public Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "OrgInviteQrcodeActivity.java"

# interfaces
.implements Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;
    }
.end annotation


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private b:Lcom/alibaba/android/user/model/OrgInviteObject;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 270
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)V
    .locals 9
    .param p1, "orgId"    # J

    .prologue
    .line 84
    sget v4, Lezg$h;->iv_org_qrcode_logo:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 85
    .local v3, "orgLogoIv":Landroid/widget/ImageView;
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 86
    sget v4, Lezg$g;->icon_org_invite_qrcode_logo_en:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v1, 0x0

    .line 91
    .local v1, "locale":Ljava/lang/String;
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v4

    invoke-virtual {v4}, Lccr;->b()Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;

    move-result-object v0

    .line 92
    .local v0, "currentUser":Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;
    iget-object v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/UserProfileExtensionObject;->orgEmployees:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 93
    .local v2, "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v2, :cond_1

    .line 96
    iget-wide v6, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    cmp-long v5, v6, p1

    if-nez v5, :cond_1

    .line 100
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    if-eqz v4, :cond_2

    .line 101
    iget-object v4, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgDetail:Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;

    invoke-virtual {v4}, Lcom/alibaba/android/dingtalk/userbase/model/OrgInfoObject;->getLocale()Ljava/lang/String;

    move-result-object v1

    .line 107
    .end local v2    # "orgEmployee":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    :cond_2
    invoke-static {v1}, Lcom/alibaba/android/user/contact/utils/UserUtils;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    sget v4, Lezg$g;->icon_org_invite_qrcode_logo:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 110
    :cond_3
    sget v4, Lezg$g;->icon_org_invite_qrcode_logo_en:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;J)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;
    .param p1, "x1"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a(J)V

    return-void
.end method

.method private b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 135
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-nez v3, :cond_0

    .line 152
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v3, v3, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-static {v3}, Lcpt;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v0

    .line 139
    .local v1, "orgNameLen":I
    :goto_1
    const/16 v3, 0xc

    if-lt v1, v3, :cond_3

    const/16 v2, 0xf

    .line 140
    .local v2, "orgNameSize":I
    :goto_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->b:Landroid/widget/TextView;

    const/4 v4, 0x1

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v4, v4, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget v3, v3, Lcom/alibaba/android/user/model/OrgInviteObject;->orgAuthLevel:I

    if-nez v3, :cond_1

    const/16 v0, 0x8

    .line 144
    .local v0, "authImageVisibility":I
    :cond_1
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v4, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->c:Landroid/widget/ImageView;

    invoke-static {}, Lcms;->c()Z

    move-result v3

    if-eqz v3, :cond_4

    sget v3, Lezg$g;->icon_org_invite_qrcode_auth:I

    :goto_3
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 145
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$2;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v3, v4, v6, v7}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 138
    .end local v0    # "authImageVisibility":I
    .end local v1    # "orgNameLen":I
    .end local v2    # "orgNameSize":I
    :cond_2
    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v3, v3, Lcom/alibaba/android/user/model/OrgInviteObject;->orgName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 139
    .restart local v1    # "orgNameLen":I
    :cond_3
    const/16 v2, 0x12

    goto :goto_2

    .line 144
    .restart local v0    # "authImageVisibility":I
    .restart local v2    # "orgNameSize":I
    :cond_4
    sget v3, Lezg$g;->icon_org_invite_qrcode_auth_en:I

    goto :goto_3
.end method

.method static synthetic b(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .prologue
    .line 37
    .line 1156
    const-string/jumbo v0, "https://www.dingtalk.com/"

    .line 1157
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v1, :cond_0

    .line 1158
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-object v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->url:Ljava/lang/String;

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$e;->pure_white:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1162
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1163
    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v2, v3, v1}, Lixg;->a(Ljava/lang/String;ILjava/lang/Integer;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v1, v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->a:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1165
    sget v0, Lezg$h;->pb_org_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Lcom/google/zxing/WriterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 1172
    :goto_0
    return-void

    .line 1167
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_0

    .line 1169
    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_0

    .line 1171
    :catch_2
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    goto :goto_0
.end method

.method private c()Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 223
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v3, v3, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->f:Landroid/view/View;

    .line 224
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 223
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x0

    .line 230
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 228
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 229
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    iget-object v2, v2, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;->f:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .prologue
    const/4 v3, 0x1

    .line 37
    .line 1177
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1178
    if-eqz v0, :cond_1

    .line 1234
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v1, :cond_0

    .line 1235
    const/4 v1, 0x0

    sget v2, Lezg$l;->saving_image:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2, v3, v3}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1237
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1182
    const-class v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$3;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 37
    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v1, 0x8

    .line 265
    sget v0, Lezg$h;->rl_org_qrcode_shotcut:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 266
    sget v0, Lezg$h;->ll_action_btn:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 267
    sget v0, Lezg$h;->ll_empty_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 268
    return-void
.end method

.method static synthetic d(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;

    .prologue
    .line 37
    .line 2206
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2207
    if-eqz v1, :cond_0

    .line 2212
    invoke-static {}, Lcke;->a()Lcke;

    move-result-object v0

    const-class v2, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    invoke-virtual {v0, v2}, Lcke;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;

    .line 2213
    const-string/jumbo v2, " "

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/alibaba/dingtalk/sharebase/ShareReverseInterface;->shareNativeImageWithSave(Landroid/app/Activity;Landroid/graphics/Bitmap;Ljava/lang/String;Z)I

    move-result v0

    .line 2214
    if-nez v0, :cond_1

    .line 2215
    sget v0, Lezg$l;->share_no_apps:I

    invoke-static {v0}, Lcms;->a(I)V

    :cond_0
    :goto_0
    return-void

    .line 2216
    :cond_1
    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 2217
    sget v0, Lezg$l;->share_not_support:I

    invoke-static {v0}, Lcms;->a(I)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/user/model/OrgInviteObject;Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;)V
    .locals 0
    .param p1, "info"    # Lcom/alibaba/android/user/model/OrgInviteObject;
    .param p2, "from"    # Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$LoadFrom;

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->dismissLoadingDialog()V

    .line 249
    if-eqz p1, :cond_0

    .line 250
    iput-object p1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 251
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b()V

    .line 255
    :goto_0
    return-void

    .line 253
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->dismissLoadingDialog()V

    .line 260
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d()V

    .line 262
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x1

    .line 47
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget v0, Lezg$j;->activity_org_qrcode:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->setContentView(I)V

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->org_invite_qrcode:I

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget v4, Lezg$l;->app_name:I

    invoke-virtual {p0, v4}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 50
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->e:Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$a;

    .line 1122
    if-nez p1, :cond_0

    .line 1123
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 1125
    .end local p1    # "savedInstanceState":Landroid/os/Bundle;
    :cond_0
    if-eqz p1, :cond_1

    .line 1128
    const-string/jumbo v0, "org_invite_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/user/model/OrgInviteObject;

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    .line 1129
    const-string/jumbo v0, "corp_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c:Ljava/lang/String;

    .line 1130
    const-string/jumbo v0, "org_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d:J

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    if-eqz v0, :cond_2

    .line 54
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b()V

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    iget-wide v0, v0, Lcom/alibaba/android/user/model/OrgInviteObject;->orgId:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a(J)V

    .line 79
    :goto_0
    const v0, 0x3f4ccccd    # 0.8f

    invoke-static {p0, v5, v0}, Lcms;->a(Landroid/app/Activity;ZF)V

    .line 80
    return-void

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 57
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->showLoadingDialog()V

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity$1;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->showLoadingDialog()V

    .line 73
    new-instance v0, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;-><init>(Lcom/alibaba/android/user/contact/activities/OrgInviteFuc$a;)V

    iget-wide v2, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d:J

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/user/contact/activities/OrgInviteFuc;->a(J)V

    .line 74
    iget-wide v0, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d:J

    invoke-direct {p0, v0, v1}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->a(J)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-direct {p0}, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->d()V

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 116
    const-string/jumbo v0, "org_id"

    iget-object v1, p0, Lcom/alibaba/android/user/contact/activities/OrgInviteQrcodeActivity;->b:Lcom/alibaba/android/user/model/OrgInviteObject;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 117
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method
