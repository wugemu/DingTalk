.class public Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
.super Lcom/alibaba/android/user/UserBaseActivity;
.source "ChooseDistrictCodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;,
        Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;,
        Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;
    }
.end annotation


# static fields
.field private static d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/widget/ListView;

.field b:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

.field c:Landroid/widget/AdapterView$OnItemClickListener;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:[Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

.field private j:Landroid/widget/EditText;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfra;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 54
    sput-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd\u9999\u6e2f"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u5370\u5ea6"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u5370\u5ea6\u5c3c\u897f\u4e9a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u9a6c\u6765\u897f\u4e9a"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u83f2\u5f8b\u5bbe"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u4e2d\u56fd\u53f0\u6e7e"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u6cf0\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    const-string/jumbo v1, "\u7f8e\u56fd"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/user/UserBaseActivity;-><init>()V

    .line 225
    new-instance v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$4;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->n:Ljava/lang/Runnable;

    .line 260
    new-instance v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$5;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->c:Landroid/widget/AdapterView$OnItemClickListener;

    .line 372
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->j:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
    .param p1, "x1"    # Ljava/util/HashMap;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->f:Ljava/util/HashMap;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->m:Ljava/util/List;

    return-object p1
.end method

.method static synthetic a(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->g:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->m:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->l:Ljava/util/List;

    return-object p1
.end method

.method static synthetic b()Ljava/util/Set;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->d:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V
    .locals 4
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    .line 2221
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lhcv;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2222
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lhcv;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 46
    return-void
.end method

.method static synthetic g(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->n:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->b:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$a;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->f:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic j(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->g:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic l(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/high16 v7, 0x42340000    # 45.0f

    const/4 v6, 0x4

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 87
    invoke-super {p0, p1}, Lcom/alibaba/android/user/UserBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1095
    sget v0, Lezg$j;->activity_choose_district:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->setContentView(I)V

    .line 1096
    sget v0, Lezg$h;->district_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->a:Landroid/widget/ListView;

    .line 1097
    sget v0, Lezg$h;->edit_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->j:Landroid/widget/EditText;

    .line 1098
    sget v0, Lezg$h;->img_clear:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->k:Landroid/widget/ImageView;

    .line 1099
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$1;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->h:Landroid/os/Handler;

    .line 1107
    new-instance v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

    invoke-direct {v0, p0, v5}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;B)V

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->i:Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$c;

    .line 1109
    const-class v0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    new-instance v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$2;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/Runnable;)V

    .line 1151
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->j:Landroid/widget/EditText;

    new-instance v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;

    invoke-direct {v1, p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$3;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1192
    sget v0, Lezg$h;->letter_list:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;

    .line 1380
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->TAIWAN:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1193
    if-eqz v1, :cond_1

    .line 1194
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u2606"

    aput-object v2, v1, v5

    const-string/jumbo v2, "3\u5283"

    aput-object v2, v1, v4

    const-string/jumbo v2, "4\u5283"

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string/jumbo v4, "5\u5283"

    aput-object v4, v1, v2

    const-string/jumbo v2, "6\u5283"

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const-string/jumbo v4, "7\u5283"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "8\u5283"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "9\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v4, "10\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v4, "11\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v4, "12\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v4, "13\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v4, "14\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v4, "15\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v4, "16\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v4, "17\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v4, "18\u5283"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v4, "19\u5283"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    .line 1200
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lezg$g;->letter_list_bg:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1201
    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setBgDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1202
    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {p0, v1}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setPaintSize(F)V

    .line 1203
    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetterColor(I)V

    .line 1204
    new-instance v1, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;

    invoke-direct {v1, p0, v5}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity$b;-><init>(Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;B)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setOnTouchingLetterChangedListener(Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView$a;)V

    .line 2208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2209
    sget v1, Lezg$j;->overlay:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    .line 2210
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2211
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 2212
    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v7}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 2216
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 2217
    iget-object v2, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    sget v1, Lezg$l;->login_title_select_area:I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBar;->setTitle(I)V

    .line 92
    :cond_0
    return-void

    .line 1197
    :cond_1
    const/16 v1, 0x1b

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "\u2606"

    aput-object v2, v1, v5

    const-string/jumbo v2, "A"

    aput-object v2, v1, v4

    const-string/jumbo v2, "B"

    aput-object v2, v1, v3

    const/4 v2, 0x3

    const-string/jumbo v4, "C"

    aput-object v4, v1, v2

    const-string/jumbo v2, "D"

    aput-object v2, v1, v6

    const/4 v2, 0x5

    const-string/jumbo v4, "E"

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v4, "F"

    aput-object v4, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v4, "G"

    aput-object v4, v1, v2

    const/16 v2, 0x8

    const-string/jumbo v4, "H"

    aput-object v4, v1, v2

    const/16 v2, 0x9

    const-string/jumbo v4, "I"

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v4, "J"

    aput-object v4, v1, v2

    const/16 v2, 0xb

    const-string/jumbo v4, "K"

    aput-object v4, v1, v2

    const/16 v2, 0xc

    const-string/jumbo v4, "L"

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string/jumbo v4, "M"

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v4, "N"

    aput-object v4, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v4, "O"

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v4, "P"

    aput-object v4, v1, v2

    const/16 v2, 0x11

    const-string/jumbo v4, "Q"

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v4, "R"

    aput-object v4, v1, v2

    const/16 v2, 0x13

    const-string/jumbo v4, "S"

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v4, "T"

    aput-object v4, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v4, "U"

    aput-object v4, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v4, "V"

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string/jumbo v4, "W"

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v4, "X"

    aput-object v4, v1, v2

    const/16 v2, 0x19

    const-string/jumbo v4, "Y"

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string/jumbo v4, "Z"

    aput-object v4, v1, v2

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkbase/widgets/views/LetterListView;->setLetters([Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 275
    invoke-super {p0}, Lcom/alibaba/android/user/UserBaseActivity;->onDestroy()V

    .line 276
    const-string/jumbo v1, "window"

    invoke-virtual {p0, v1}, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 277
    .local v0, "windowManager":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcom/alibaba/android/user/login/ChooseDistrictCodeActivity;->e:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 280
    :cond_0
    return-void
.end method
