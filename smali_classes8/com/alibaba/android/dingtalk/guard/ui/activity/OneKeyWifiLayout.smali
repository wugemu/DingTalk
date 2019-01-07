.class public Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;
.super Landroid/widget/LinearLayout;
.source "OneKeyWifiLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$a;,
        Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;,
        Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private l:Landroid/widget/TextView;

.field private m:Ljava/lang/String;

.field private n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

.field private o:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 66
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    .line 68
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->o:Landroid/content/BroadcastReceiver;

    .line 179
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Landroid/content/Context;)V

    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 183
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    .line 68
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->o:Landroid/content/BroadcastReceiver;

    .line 184
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Landroid/content/Context;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 188
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    .line 68
    new-instance v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;

    invoke-direct {v0, p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$1;-><init>(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->o:Landroid/content/BroadcastReceiver;

    .line 189
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Landroid/content/Context;)V

    .line 190
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 193
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    .line 194
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbrx$e;->device_quick_connect_wifi:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 196
    sget v0, Lbrx$d;->tv_corp_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b:Landroid/widget/TextView;

    .line 197
    sget v0, Lbrx$d;->tv_ssid_name:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c:Landroid/widget/TextView;

    .line 198
    sget v0, Lbrx$d;->connect_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->d:Landroid/view/View;

    .line 199
    sget v0, Lbrx$d;->layout_quick_connect_wifi:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    .line 200
    sget v0, Lbrx$d;->tv_cover1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->f:Landroid/widget/TextView;

    .line 201
    sget v0, Lbrx$d;->tv_cover2:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->g:Landroid/widget/TextView;

    .line 202
    sget v0, Lbrx$d;->layout_connect_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    .line 203
    sget v0, Lbrx$d;->iv_img_connect_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    .line 204
    sget v0, Lbrx$d;->tv_connect_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    .line 205
    sget v0, Lbrx$d;->icon_connect_error_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 206
    sget v0, Lbrx$d;->tv_connect_error_status:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    .line 207
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;IZ)V
    .locals 9
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectStatus"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    .param p3, "connectErrorText"    # Ljava/lang/String;
    .param p4, "errorIconFontId"    # I
    .param p5, "isHighlight"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    const v7, 0x3f0f5c29    # 0.56f

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 248
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->m:Ljava/lang/String;

    .line 249
    iput-object p2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->n:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    .line 250
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-lez p4, :cond_0

    .line 253
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    .line 254
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, p4}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 258
    :goto_0
    if-eqz p5, :cond_1

    .line 259
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbrx$b;->device_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 260
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v8}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setAlpha(F)V

    .line 261
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbrx$b;->device_red:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 262
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setAlpha(F)V

    .line 270
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 271
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 272
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 274
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 276
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbrx$b;->ui_common_theme_text_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 278
    sget-object v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$2;->b:[I

    invoke-virtual {p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 312
    :goto_2
    return-void

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v6}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbrx$b;->device_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 265
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setAlpha(F)V

    .line 266
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lbrx$b;->device_black:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_1

    .line 280
    :pswitch_0
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 281
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 284
    :pswitch_1
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 285
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v4, Lbrx$g;->dt_alpha_wifi_scaning:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    sget v3, Lbrx$c;->device_wifi_scaning:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 287
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v3, Lbrx$a;->device_loading_rotate_anim:I

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/RotateAnimation;

    .line 288
    .local v0, "animation":Landroid/view/animation/RotateAnimation;
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 289
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 290
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    sget v3, Lbrx$c;->device_shape_circle_blue:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 293
    .end local v0    # "animation":Landroid/view/animation/RotateAnimation;
    :pswitch_2
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v4, Lbrx$g;->dt_alpha_wifi_connecting:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    sget v3, Lbrx$c;->device_wifi_connecting:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 295
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    .line 296
    .local v1, "drawable":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 297
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    sget v3, Lbrx$c;->device_shape_circle_gray2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 300
    .end local v1    # "drawable":Landroid/graphics/drawable/AnimationDrawable;
    :pswitch_3
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v4, Lbrx$g;->dt_alpha_wifi_connected:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    sget v3, Lbrx$c;->device_wifi_connected:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 302
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    sget v3, Lbrx$c;->device_shape_circle_gray2:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_2

    .line 305
    :pswitch_4
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_2

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 327
    sget-object v2, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    sget v1, Lbrx$g;->dt_alpha_unconnect_wifi_tip:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lbrx$g;->icon_C1_unlink:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;IZ)V

    .line 328
    return-void
.end method

.method a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectStatus"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 240
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;IZ)V

    .line 241
    return-void
.end method

.method a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;)V
    .locals 6
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "connectStatus"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;
    .param p3, "connectErrorText"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 244
    sget v4, Lbrx$g;->icon_warn_fill:I

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;IZ)V

    .line 245
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 331
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->UNCONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {p0, p1, v0, p2}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;Ljava/lang/String;)V

    .line 332
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 339
    sget-object v0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;->CONNECTED:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a(Ljava/lang/String;Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$WifiConnectStatus;)V

    .line 340
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 211
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 213
    :try_start_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 214
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :goto_0
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "exp":Ljava/lang/Exception;
    const-string/jumbo v2, "OneKeyWifiLayout"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "register network receiver exp = "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 223
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 225
    :try_start_0
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->o:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "exp":Ljava/lang/Exception;
    const-string/jumbo v1, "OneKeyWifiLayout"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string/jumbo v4, "unregister network receiver exp = "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/alibaba/doraemon/utils/CommonUtils;->getAppendString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lblu;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOneKeyWifiListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    return-void
.end method

.method public setStyle(Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;)V
    .locals 9
    .param p1, "style"    # Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v7, 0x41500000    # 13.0f

    const/4 v6, 0x2

    .line 343
    sget-object v4, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;->SMALL:Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout$Style;

    if-ne p1, v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->c:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 346
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->d:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 347
    .local v0, "connectLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, -0x2

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 348
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 350
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->k:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v4, v6, v7}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextSize(IF)V

    .line 351
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->l:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 353
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->e:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 354
    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 355
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 357
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->h:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 358
    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 359
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    invoke-static {v4, v8}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 361
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->f:Landroid/widget/TextView;

    const/high16 v5, 0x41880000    # 17.0f

    invoke-virtual {v4, v6, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 362
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 363
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->g:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 364
    .local v1, "cover2TvParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 366
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->j:Landroid/widget/TextView;

    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 368
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->i:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 369
    .local v3, "statusImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    const/high16 v5, 0x41f80000    # 31.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 370
    iget-object v4, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->a:Landroid/content/Context;

    const/high16 v5, 0x41c80000    # 25.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 372
    .end local v0    # "connectLayoutParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v1    # "cover2TvParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "statusImageViewParams":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/guard/ui/activity/OneKeyWifiLayout;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method
