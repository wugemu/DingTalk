.class public abstract Lcom/alibaba/android/dingtalkbase/BaseQrFragment;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;
.source "BaseQrFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/LinearLayout;

.field private l:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;-><init>()V

    return-void
.end method

.method private f()Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 154
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->i:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->i:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 155
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 160
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    return-object v0

    .line 158
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 159
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v2, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->i:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method


# virtual methods
.method public abstract a(Landroid/graphics/Bitmap;)V
.end method

.method public abstract a(Landroid/widget/ImageView;)V
.end method

.method public abstract a(Landroid/widget/ImageView;Landroid/view/View;)V
.end method

.method public abstract a(Landroid/widget/TextView;)V
.end method

.method public a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0
    .param p1, "tvOrgTip"    # Landroid/widget/TextView;
    .param p2, "llBottomTips"    # Landroid/widget/LinearLayout;

    .prologue
    .line 119
    return-void
.end method

.method public abstract a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V
.end method

.method public abstract b(Landroid/widget/TextView;)V
.end method

.method protected final c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->b:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Landroid/widget/TextView;)V

    .line 85
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->b(Landroid/widget/TextView;)V

    .line 86
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->d:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Landroid/widget/ImageView;)V

    .line 87
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->e:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->c(Landroid/widget/TextView;)V

    .line 88
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->g:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->h:Landroid/view/View;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Landroid/widget/ImageView;Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->k:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0, v1}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V

    .line 91
    return-void
.end method

.method public abstract c(Landroid/widget/TextView;)V
.end method

.method public abstract d()Landroid/graphics/Bitmap;
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->c()V

    .line 70
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->tv_save_phone:I

    if-ne v0, v1, :cond_2

    .line 1127
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1128
    if-eqz v0, :cond_1

    .line 1164
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    if-nez v1, :cond_0

    .line 1165
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    sget v3, Lcig$j;->saving_image:I

    invoke-virtual {p0, v3}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v4, v4}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    .line 1167
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a:Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDProgressDialog;->show()V

    .line 1132
    const-class v1, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;

    invoke-direct {v2, p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment$1;-><init>(Lcom/alibaba/android/dingtalkbase/BaseQrFragment;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 100
    :cond_1
    :goto_0
    return-void

    .line 97
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcig$f;->tv_share:I

    if-ne v0, v1, :cond_1

    .line 98
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->f()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->a(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->b:Landroid/widget/TextView;

    .line 50
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->c:Landroid/widget/TextView;

    .line 51
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_des:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->e:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->img_name_extra:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->d:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->iv_qrcode_avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->f:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 54
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->iv_qrcode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->g:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->rl_org_qrcode_shotcut:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->i:Landroid/view/View;

    .line 56
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->pb_org_qrcode:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->h:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_org_tip:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->j:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->ll_bottom_tips:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->k:Landroid/widget/LinearLayout;

    .line 59
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->rl_qrcode_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->l:Landroid/widget/RelativeLayout;

    .line 61
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_save_phone:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    sget v1, Lcig$f;->tv_share:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->I:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseFragment;->onDestroy()V

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/BaseQrFragment;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 77
    .local v0, "qrBitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    :cond_0
    return-void
.end method

.method protected final r_()I
    .locals 1

    .prologue
    .line 43
    sget v0, Lcig$h;->layout_base_qr:I

    return v0
.end method
