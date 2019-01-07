.class public Lcom/alibaba/android/user/settings/activity/FontSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "FontSettingActivity.java"


# static fields
.field private static final a:[F

.field private static final b:I


# instance fields
.field private c:F

.field private d:[Landroid/widget/TextView;

.field private e:[F

.field private f:Landroid/widget/SeekBar;

.field private g:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a:[F

    .line 32
    sget v0, Lezg$l;->font_setting_user_xiaomi:I

    sput v0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b:I

    return-void

    .line 29
    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x3fcccccd    # 1.6f
        0x3fe66666    # 1.8f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;
    .param p1, "x1"    # F

    .prologue
    .line 27
    iput p1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    return p1
.end method

.method private static a(F[F)I
    .locals 4
    .param p0, "t"    # F
    .param p1, "values"    # [F

    .prologue
    .line 92
    if-eqz p1, :cond_2

    .line 93
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 94
    add-int/lit8 v1, v0, -0x1

    aget v1, p1, v1

    aget v2, p1, v0

    add-int/lit8 v3, v0, -0x1

    aget v3, p1, v3

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v1, p0, v1

    if-gez v1, :cond_0

    .line 95
    add-int/lit8 v1, v0, -0x1

    .line 100
    .end local v0    # "i":I
    :goto_1
    return v1

    .line 93
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 100
    .end local v0    # "i":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F[F)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;
    .param p1, "x1"    # F
    .param p2, "x2"    # [F

    .prologue
    .line 27
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(F[F)I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)Landroid/widget/SeekBar;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    return-object v0
.end method

.method private a(F)V
    .locals 4
    .param p1, "scale"    # F

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 105
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->e:[F

    if-eqz v1, :cond_0

    .line 106
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->e:[F

    aget v3, v3, v0

    mul-float/2addr v3, p1

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;F)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/FontSettingActivity;
    .param p1, "x1"    # F

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(F)V

    return-void
.end method

.method static synthetic b()[F
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a:[F

    return-object v0
.end method

.method private c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 113
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    new-instance v1, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 133
    return-void
.end method

.method private d()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 161
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/ding/home.html"

    new-instance v2, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$3;

    invoke-direct {v2, p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$3;-><init>(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    .line 171
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 137
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->g:F

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 138
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    .line 143
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d()V

    .line 141
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 44
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget v0, Lezg$j;->activity_font_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->setContentView(I)V

    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->font_setting:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 1053
    const-string/jumbo v0, "pref_font_scale"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Lcpk;->b(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    .line 1054
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    iput v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->g:F

    .line 1058
    new-array v1, v5, [Landroid/widget/TextView;

    sget v0, Lezg$h;->scaled_main_text_0:I

    .line 1059
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v2

    sget v0, Lezg$h;->chatting_content_tv_1:I

    .line 1060
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v3

    sget v0, Lezg$h;->chatting_content_tv_2:I

    .line 1061
    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    aput-object v0, v1, v4

    iput-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    .line 1064
    new-array v0, v5, [F

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    aget-object v1, v1, v2

    .line 1065
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    aput v1, v0, v2

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    aget-object v1, v1, v3

    .line 1066
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d:[Landroid/widget/TextView;

    aget-object v1, v1, v4

    .line 1067
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    aput v1, v0, v4

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->e:[F

    .line 1069
    sget v0, Lezg$h;->font_setting_scale_tick:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    .line 1070
    sget v0, Lezg$h;->chattting_avatar_1:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1071
    sget v1, Lezg$h;->chattting_avatar_2:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;

    .line 1072
    sget v2, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b:I

    invoke-virtual {p0, v2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "@lALPBbCc1Q2CgZl4eA"

    invoke-virtual {v0, v2, v3}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1073
    sget v0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->b:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "@lALPBbCc1Q2CgZl4eA"

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/AvatarImageView;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    sget-object v2, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a:[F

    invoke-static {v1, v2}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(F[F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 1075
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->a(F)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/FontSettingActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1088
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c()V

    .line 49
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c()V

    .line 50
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 175
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 176
    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->g:F

    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 177
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->f:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string/jumbo v1, "STATISTICS"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/statistics/Statistics;

    const-string/jumbo v2, "setting_front_size_click"

    invoke-interface {v1, v2, v0}, Lcom/alibaba/doraemon/statistics/Statistics;->customEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 181
    .end local v0    # "extraMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 147
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 157
    :goto_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_1
    return v0

    .line 149
    :pswitch_0
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->g:F

    iget v1, p0, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 150
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_1

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->d()V

    .line 153
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/FontSettingActivity;->finish()V

    goto :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
