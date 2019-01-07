.class public Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "FirstCreateTeamTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field public d:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>;"
    const/4 v1, 0x0

    .line 66
    const v0, 0x1030010

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput v1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->a:I

    .line 52
    iput v1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->b:I

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c:Ljava/util/List;

    .line 67
    iput-object p1, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    .line 68
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/widget/AdapterView$OnItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->d:Landroid/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->c:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 43
    iget v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->a:I

    return v0
.end method

.method static synthetic d(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 298
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 299
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v0

    const-string/jumbo v1, "com.alibaba.android.oa.view.FirstCreateTeamTipDialog.isShowing"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcnh;->a(Ljava/lang/String;Z)V

    .line 300
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v11

    invoke-static {v11}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 90
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>;"
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->requestWindowFeature(I)Z

    .line 91
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 93
    iget-object v3, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    sget v4, Ledz$g;->first_create_team_tips_layout:I

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1140
    .local v0, "rootView":Landroid/view/View;
    sget v3, Ledz$f;->header_layout:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 1278
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 1280
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x10102eb

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1282
    iget v4, v4, Landroid/util/TypedValue;->data:I

    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v4

    move v5, v4

    .line 1142
    :goto_0
    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1143
    iget-object v6, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    const/high16 v7, 0x432f0000    # 175.0f

    invoke-static {v6, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1144
    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2152
    sget v3, Ledz$f;->gridview:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/GridView;

    .line 2153
    new-instance v4, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$a;-><init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2154
    new-instance v4, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$3;-><init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 2162
    new-instance v4, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;

    invoke-direct {v4, p0, v3, v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$4;-><init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;Landroid/widget/GridView;Landroid/view/View;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->post(Ljava/lang/Runnable;)Z

    .line 2219
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->o()Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;

    move-result-object v4

    .line 2220
    const/4 v3, 0x0

    .line 2221
    if-eqz v4, :cond_5

    .line 2222
    iget v3, v4, Lcom/alibaba/android/dingtalk/userbase/model/IndustryObject;->code:I

    move v5, v3

    .line 2225
    :goto_1
    sget v3, Ledz$f;->welcome_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 2226
    sget v4, Ledz$f;->app_info:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2227
    iget-object v6, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 2231
    const/4 v6, 0x4

    .line 2232
    const/16 v7, 0x64

    if-le v5, v7, :cond_2

    const/16 v7, 0xc8

    if-ge v5, v7, :cond_2

    .line 2233
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    sget v7, Ledz$h;->industry:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2234
    const-string/jumbo v7, "90%"

    .line 2235
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Ledz$h;->journal_name:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2236
    iget-object v9, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Ledz$h;->journal_app_info:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v6

    move-object v6, v7

    move-object v7, v8

    .line 2255
    :goto_2
    iget-object v8, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Ledz$h;->first_create_team_tip_welcome_text:I

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v7, v10, v11

    const/4 v7, 0x1

    aput-object v6, v10, v7

    const/4 v6, 0x2

    aput-object v5, v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2257
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2258
    new-instance v7, Landroid/text/style/AbsoluteSizeSpan;

    iget-object v8, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v8, v9}, Lcms;->c(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/AbsoluteSizeSpan;-><init>(I)V

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    sub-int v4, v8, v4

    .line 2259
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v8, 0x12

    .line 2258
    invoke-virtual {v6, v7, v4, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 2260
    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1117
    sget v3, Ledz$f;->know_text_in_header:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$1;-><init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1124
    sget v3, Ledz$f;->know_text:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$2;

    invoke-direct {v4, p0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog$2;-><init>(Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->setContentView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 100
    .local v2, "wlp":Landroid/view/WindowManager$LayoutParams;
    const/16 v3, 0x11

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 101
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v3, v3, -0x5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 102
    invoke-virtual {v1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 103
    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 105
    .end local v2    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void

    .line 1284
    .end local v1    # "window":Landroid/view/Window;
    :cond_1
    iget-object v4, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    const/high16 v5, 0x42400000    # 48.0f

    invoke-static {v4, v5}, Lcms;->c(Landroid/content/Context;F)I

    move-result v4

    move v5, v4

    goto/16 :goto_0

    .line 2237
    :cond_2
    const/16 v7, 0xc9

    if-ne v5, v7, :cond_3

    .line 2238
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    sget v7, Ledz$h;->industry_internet:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2239
    const-string/jumbo v7, "90%"

    .line 2240
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Ledz$h;->approal_name:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2241
    iget-object v9, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Ledz$h;->approal_app_info:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    .line 2242
    :cond_3
    const/16 v7, 0xcc

    if-ne v5, v7, :cond_4

    .line 2243
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    sget v7, Ledz$h;->industry_computer:I

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2244
    const-string/jumbo v7, "90%"

    .line 2245
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v9, Ledz$h;->approal_name:I

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2246
    iget-object v9, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Ledz$h;->approal_app_info:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v4, v6

    move-object v6, v7

    move-object v7, v8

    goto/16 :goto_2

    .line 2248
    :cond_4
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    sget v6, Ledz$h;->industry:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2249
    const-string/jumbo v6, "90%"

    .line 2250
    iget-object v5, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v8, Ledz$h;->attendance_name:I

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2251
    iget-object v8, p0, Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;->e:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Ledz$h;->attendance_app_info:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2252
    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_5
    move v5, v3

    goto/16 :goto_1
.end method

.method public show()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 291
    .local p0, "this":Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog;, "Lcom/alibaba/android/oa/view/FirstCreateTeamTipDialog<TT;>;"
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->show()V

    .line 292
    invoke-static {}, Lcnh;->a()Lcnh;

    move-result-object v0

    const-string/jumbo v1, "com.alibaba.android.oa.view.FirstCreateTeamTipDialog.isShowing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcnh;->a(Ljava/lang/String;Z)V

    .line 293
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.alibaba.android.oa.view.FirstCreateTeamTipDialog.isShowing"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/Intent;)Z

    .line 294
    return-void
.end method
