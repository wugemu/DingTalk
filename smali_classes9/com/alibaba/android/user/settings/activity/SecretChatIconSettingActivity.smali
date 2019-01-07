.class public Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "SecretChatIconSettingActivity.java"


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/widget/ListView;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:I

.field private h:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-class v0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->h:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->h:I

    return p1
.end method

.method private a(I)V
    .locals 3
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 144
    const/4 v1, 0x2

    if-le p1, v1, :cond_0

    .line 152
    :goto_0
    return-void

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 146
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->d:Landroid/widget/ImageView;

    const-string/jumbo v1, "header_anim"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 151
    :cond_1
    iget-object v2, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->e:Landroid/widget/TextView;

    const-string/jumbo v1, "header_desc"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    .prologue
    .line 35
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    return v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    return p1
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;
    .param p1, "x1"    # I

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 58
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    sget v0, Lezg$j;->activity_secret_chat_icon_setting:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->setContentView(I)V

    .line 1120
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "dt_secret_chat"

    const-string/jumbo v2, "secret_chat_icon"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1122
    iput v8, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    .line 1127
    :goto_0
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    if-gtz v0, :cond_1

    .line 1128
    :cond_0
    iput v8, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    .line 1130
    :cond_1
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    iput v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->h:I

    .line 2088
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2089
    invoke-static {}, Lcms;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2090
    const-string/jumbo v1, "icon"

    sget v2, Lezg$g;->icon_sc:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    const-string/jumbo v1, "header_anim"

    sget v2, Lezg$g;->secret_chat_low_anim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    :goto_1
    const-string/jumbo v1, "icon_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_secret_icon_level_primary:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    const-string/jumbo v1, "header_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_secret_chat_desc_low:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2101
    const-string/jumbo v1, "icon"

    sget v2, Lezg$g;->icon_glass:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    const-string/jumbo v1, "icon_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_secret_icon_level_middle:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    const-string/jumbo v1, "header_anim"

    sget v2, Lezg$g;->secret_chat_mid_anim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    const-string/jumbo v1, "header_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_secret_chat_desc_mid:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2108
    const-string/jumbo v1, "icon"

    sget v2, Lezg$g;->secret_chat_high:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    const-string/jumbo v1, "icon_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_user_secret_icon_level_high:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    const-string/jumbo v1, "header_anim"

    sget v2, Lezg$g;->secret_chat_high_anim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    const-string/jumbo v1, "header_desc"

    invoke-virtual {p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lezg$l;->dt_secret_chat_desc_high:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2138
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lezg$j;->secret_chat_icon_setting_header:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c:Landroid/view/View;

    .line 2139
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->header_desc:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->e:Landroid/widget/TextView;

    .line 2140
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c:Landroid/view/View;

    sget v1, Lezg$h;->header_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->d:Landroid/widget/ImageView;

    .line 64
    iget v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->a(I)V

    .line 65
    sget v0, Lezg$h;->list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 67
    iget-object v7, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b:Landroid/widget/ListView;

    .line 2155
    new-instance v0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$1;

    iget-object v3, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->f:Ljava/util/List;

    sget v4, Lezg$j;->activity_secret_chat_icon_setting_item:I

    new-array v5, v6, [Ljava/lang/String;

    const-string/jumbo v1, "icon"

    aput-object v1, v5, v9

    const-string/jumbo v1, "icon_desc"

    aput-object v1, v5, v8

    new-array v6, v6, [I

    sget v1, Lezg$h;->sc_icon:I

    aput v1, v6, v9

    sget v1, Lezg$h;->icon_desc:I

    aput v1, v6, v8

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$1;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 67
    invoke-virtual {v7, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->b:Landroid/widget/ListView;

    .line 2175
    new-instance v1, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity$2;-><init>(Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;)V

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 69
    return-void

    .line 1125
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->g:I

    goto/16 :goto_0

    .line 2093
    :cond_3
    const-string/jumbo v1, "icon"

    sget v2, Lezg$g;->icon_sc_en:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    const-string/jumbo v1, "header_anim"

    sget v2, Lezg$g;->secret_chat_low_en_anim:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->d:Landroid/widget/ImageView;

    .line 75
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alibaba/android/user/settings/activity/SecretChatIconSettingActivity;->d:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 78
    :cond_0
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onWindowFocusChanged(Z)V

    .line 79
    return-void
.end method
