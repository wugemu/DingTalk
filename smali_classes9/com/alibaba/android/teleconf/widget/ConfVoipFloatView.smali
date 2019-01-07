.class public Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;
.super Lcom/alibaba/android/teleconf/widget/BaseFloatView;
.source "ConfVoipFloatView.java"


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:Landroid/os/Bundle;

.field public b:Landroid/view/View$OnClickListener;

.field public c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

.field public d:Landroid/view/View;

.field private f:Landroid/content/Context;

.field private g:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, -0x2

    .line 60
    invoke-direct {p0, p1}, Lcom/alibaba/android/teleconf/widget/BaseFloatView;-><init>(Landroid/content/Context;)V

    .line 57
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->m:Z

    .line 61
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    .line 62
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->getWindowManagerParam()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 63
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 64
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 65
    invoke-static {p1}, Lcms;->a(Landroid/content/Context;)I

    move-result v1

    const/high16 v2, 0x42980000    # 76.0f

    invoke-static {p1, v2}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 66
    const/high16 v1, 0x42700000    # 60.0f

    invoke-static {p1, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 68
    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->setWindowManagerParam(Landroid/view/WindowManager$LayoutParams;)V

    .line 1074
    sget v1, Leuj$i;->floating_parent_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->g:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    .line 1076
    sget v1, Leuj$i;->floating_user_avatar:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1077
    sget v1, Leuj$i;->floating_conf_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->h:Landroid/view/View;

    .line 1078
    sget v1, Leuj$i;->floating_user_recover:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->i:Landroid/view/View;

    .line 1079
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->i:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$1;-><init>(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1094
    sget v1, Leuj$i;->floating_user_state_time:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->j:Landroid/widget/TextView;

    .line 1095
    sget v1, Leuj$i;->floating_user_hangup:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    .line 1096
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    new-instance v2, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView$2;-><init>(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1105
    sget v1, Leuj$i;->floating_user_hangup_txt:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    .line 1106
    sget v1, Leuj$i;->floating_user_hangup_icon:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    .line 71
    return-void
.end method

.method private a(I)I
    .locals 3
    .param p1, "colorType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 283
    packed-switch p1, :pswitch_data_0

    .line 294
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 298
    .local v0, "color":I
    :goto_0
    return v0

    .line 285
    .end local v0    # "color":I
    :pswitch_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_content_fg_color_alpha_40:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 286
    .restart local v0    # "color":I
    goto :goto_0

    .line 288
    .end local v0    # "color":I
    :pswitch_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_alert_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 289
    .restart local v0    # "color":I
    goto :goto_0

    .line 291
    .end local v0    # "color":I
    :pswitch_2
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Leuj$f;->ui_common_safe_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 292
    .restart local v0    # "color":I
    goto :goto_0

    .line 283
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->m:Z

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    const/4 v3, 0x1

    .line 34
    .line 2217
    invoke-static {}, Lewr;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2218
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    const-string/jumbo v2, "Goto voip page"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2219
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_conf_floating_enter_opt_enable"

    .line 3083
    invoke-virtual {v0, v1, v3}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 2219
    if-eqz v0, :cond_2

    .line 2221
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Levu;->a(Z)Landroid/app/PendingIntent;

    move-result-object v0

    .line 2222
    if-eqz v0, :cond_1

    .line 2224
    invoke-static {}, Leve;->a()Leve;

    move-result-object v1

    const/4 v2, 0x1

    .line 3136
    iput-boolean v2, v1, Leve;->g:Z

    .line 2225
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b()V

    .line 34
    return-void

    .line 2227
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lewb;->a(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2230
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    const-string/jumbo v2, "PendingIntent send exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2234
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a:Landroid/os/Bundle;

    invoke-static {v0, v1}, Lewb;->a(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 34
    .line 3241
    invoke-static {}, Levn;->p()Levn;

    move-result-object v0

    invoke-virtual {v0}, Levn;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3243
    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    const-string/jumbo v2, "onClick, go back voip-conf"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3244
    invoke-static {}, Lchx;->a()Lchx;

    move-result-object v0

    const-string/jumbo v1, "f_conf_floating_enter_opt_enable"

    .line 4083
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lchx;->a(Ljava/lang/String;Z)Z

    move-result v0

    .line 3245
    if-eqz v0, :cond_2

    .line 3247
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-static {v0}, Levu;->a(Landroid/content/Context;)Levu;

    move-result-object v0

    invoke-virtual {v0}, Levu;->h()Landroid/app/PendingIntent;

    move-result-object v0

    .line 3248
    if-eqz v0, :cond_1

    .line 3249
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V

    .line 3256
    :cond_0
    :goto_0
    return-void

    .line 3251
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3254
    :catch_0
    move-exception v0

    const-string/jumbo v0, "tele_conf"

    sget-object v1, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    const-string/jumbo v2, "PendingIntent send exp"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3258
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e()V

    goto :goto_0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->e:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 264
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    if-nez v4, :cond_0

    .line 279
    :goto_0
    return-void

    .line 267
    :cond_0
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    invoke-virtual {v4}, Levn;->l()Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, "cid":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    invoke-direct {v3}, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;-><init>()V

    .line 270
    .local v3, "mainUser":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2065
    iget-wide v4, v4, Levn;->r:J

    .line 270
    iput-wide v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    .line 271
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2073
    iget-object v4, v4, Levn;->s:Ljava/lang/String;

    .line 271
    iput-object v4, v3, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->nick:Ljava/lang/String;

    .line 273
    invoke-static {}, Levn;->p()Levn;

    move-result-object v4

    .line 2081
    iget-boolean v2, v4, Levn;->t:Z

    .line 274
    .local v2, "isCaller":Z
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 275
    .local v0, "bundle":Landroid/os/Bundle;
    const-string/jumbo v4, "conversation_id"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v4, "user"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 277
    const-string/jumbo v4, "from"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 278
    iget-object v4, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->f:Landroid/content/Context;

    invoke-static {v4, v0}, Lewb;->b(Landroid/content/Context;Landroid/os/Bundle;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V
    .locals 2
    .param p1, "listener"    # Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->g:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->g:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    invoke-virtual {v0, p1}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->setAnimationListener(Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout$a;)V

    .line 202
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->g:Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/teleconf/widget/TeleVideoAnimationFrameLayout;->a(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "colorType"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-direct {p0, p2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(I)I

    move-result v0

    .line 154
    .local v0, "txtColor":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->j:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;IZ)V
    .locals 3
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "colorType"    # I
    .param p3, "isIncoming"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 167
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 173
    :cond_2
    invoke-direct {p0, p2}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(I)I

    move-result v1

    .line 174
    .local v1, "txtColor":I
    if-eqz p3, :cond_4

    sget v0, Leuj$l;->icon_phone_fill:I

    .line 175
    .local v0, "iconRes":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v2, :cond_3

    .line 176
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setText(I)V

    .line 177
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 179
    :cond_3
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v2, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 174
    .end local v0    # "iconRes":I
    :cond_4
    sget v0, Leuj$l;->icon_reject_fill:I

    goto :goto_1
.end method

.method public final c()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->b:Landroid/view/View$OnClickListener;

    .line 187
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->a(I)I

    move-result v0

    .line 188
    .local v0, "txtColor":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    if-eqz v1, :cond_0

    .line 189
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->l:Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/iconfont/IconFontTextView;->setTextColor(I)V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->k:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 194
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 197
    :cond_2
    return-void
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 208
    sget v0, Leuj$j;->layout_conf_voip_floating_view:I

    return v0
.end method

.method public setCallOrConf(Z)V
    .locals 3
    .param p1, "callOrConf"    # Z

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 126
    iput-boolean p1, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->m:Z

    .line 127
    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 135
    :goto_0
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->c:Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->setVisibility(I)V

    .line 133
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/ConfVoipFloatView;->h:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
