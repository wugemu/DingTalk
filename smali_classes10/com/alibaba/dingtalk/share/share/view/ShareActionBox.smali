.class public Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ShareActionBox.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;
    }
.end annotation


# static fields
.field public static i:Ljava/lang/String;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/ShareInfo;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/lang/String;

.field public f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field private j:Landroid/content/Context;

.field private k:Landroid/support/v4/view/ViewPager;

.field private l:Lgwi;

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/GridView;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/view/View;

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

.field private v:I

.field private w:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 195
    const-string/jumbo v0, "share_channel"

    sput-object v0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->i:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 109
    sget v0, Lgvn$i;->share_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;I)V

    .line 110
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Landroid/content/Context;)V

    .line 111
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-boolean v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a:Z

    .line 57
    const-string/jumbo v0, "to"

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d:Ljava/util/List;

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    .line 65
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    .line 66
    iput v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->s:I

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    .line 87
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a()V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "arrayViewItme":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    sget v0, Lgvn$i;->share_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;-><init>(Landroid/content/Context;I)V

    .line 103
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Landroid/content/Context;)V

    .line 104
    invoke-virtual {p0, p2}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Ljava/util/List;)V

    .line 105
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a()V

    .line 106
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->s:I

    return v0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;
    .param p1, "x1"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->s:I

    return p1
.end method

.method private a(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 163
    iput-object p1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    .line 165
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 166
    .local v4, "pm":Landroid/content/pm/PackageManager;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 167
    .local v2, "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 168
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 169
    .local v3, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v3, :cond_0

    iget-object v6, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 170
    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 174
    .end local v2    # "installedPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v3    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v1

    .line 175
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const-string/jumbo v5, "share"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string/jumbo v7, "ShareBox read packageManager exception:"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    .line 177
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 176
    invoke-static {v5, v9, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a()Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "currentPkgName":Ljava/lang/String;
    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 182
    const-string/jumbo v5, "share"

    const-string/jumbo v6, "ShareBox read local package list size is 0"

    invoke-static {v5, v9, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    sget v5, Lgvn$h;->and_share_read_installed_packages_failed:I

    invoke-static {v5}, Lcms;->a(I)V

    .line 185
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 186
    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_3
    return-void
.end method

.method private static a(Landroid/widget/TextView;)V
    .locals 1
    .param p0, "titleView"    # Landroid/widget/TextView;

    .prologue
    .line 313
    if-nez p0, :cond_0

    .line 325
    :goto_0
    return-void

    .line 317
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 320
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 324
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)I
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    return v0
.end method

.method static synthetic c(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->h:Ljava/lang/String;

    return-object v0
.end method

.method private d()V
    .locals 5

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v4, 0x43b40000    # 360.0f

    const/high16 v3, 0x435c0000    # 220.0f

    .line 252
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 253
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 254
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-static {v2, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 256
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-static {v1, v3}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 279
    :cond_0
    :goto_0
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 281
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 282
    return-void

    .line 260
    :cond_1
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-static {v2, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 262
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-static {v1, v4}, Lcms;->c(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method

.method static synthetic e(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a:Z

    return v0
.end method

.method static synthetic g(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Lcom/alibaba/laiwang/tide/share/business/ShareInfo;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->f:Lcom/alibaba/laiwang/tide/share/business/ShareInfo;

    return-object v0
.end method

.method static synthetic h(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->n:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 9

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 201
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;

    .line 1217
    .local v1, "unit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    move v2, v4

    .line 204
    :goto_1
    if-nez v2, :cond_0

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1220
    :cond_2
    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->t:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->isSupportShare(Ljava/util/List;)Z

    move-result v2

    .line 1221
    if-eqz v2, :cond_3

    move v2, v3

    .line 1222
    goto :goto_1

    .line 1224
    :cond_3
    invoke-virtual {v1}, Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;->getmShareUnitInfo()Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/laiwang/tide/share/business/ShareUnitInfo;->getPakName()Ljava/lang/String;

    move-result-object v2

    .line 1225
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1226
    const-string/jumbo v2, "[not exist]"

    .line 1228
    :cond_4
    const-string/jumbo v5, "share"

    const/4 v6, 0x0

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "ShareActionBox checkShowItem pkgName:"

    aput-object v8, v7, v4

    aput-object v2, v7, v3

    const/4 v2, 0x2

    const-string/jumbo v8, " not installed or permission denied"

    aput-object v8, v7, v2

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v6, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    .line 1229
    goto :goto_1

    .line 208
    .end local v1    # "unit":Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;
    :cond_5
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .local p1, "arrayViewItme":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/laiwang/tide/share/business/BaseShareUnit;>;"
    const/4 v3, 0x1

    const/4 v2, 0x2

    .line 122
    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 124
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1133
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_2

    .line 1135
    const/4 v0, 0x6

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    .line 1136
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-le v0, v1, :cond_1

    .line 1137
    iput v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    .line 126
    :goto_0
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    .line 127
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a()V

    .line 129
    :cond_0
    return-void

    .line 1139
    :cond_1
    iput v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    goto :goto_0

    .line 1144
    :cond_2
    const/4 v0, 0x4

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    .line 1145
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-le v0, v1, :cond_3

    .line 1146
    iput v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    goto :goto_0

    .line 1148
    :cond_3
    iput v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->q:I

    goto :goto_0
.end method

.method public final b()V
    .locals 8

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 518
    .line 2372
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    if-eqz v0, :cond_2

    move v0, v2

    .line 2362
    :goto_0
    if-eqz v0, :cond_8

    .line 2363
    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d()V

    .line 2443
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    div-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v6

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    .line 2444
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    rem-int/2addr v0, v3

    int-to-float v0, v0

    mul-float/2addr v0, v6

    .line 2446
    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    .line 2447
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    .line 2449
    :cond_0
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    if-nez v0, :cond_1

    .line 2450
    iput v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    .line 3376
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->m:Ljava/util/List;

    move v0, v1

    .line 3378
    :goto_1
    iget v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    if-ge v0, v3, :cond_4

    .line 3379
    new-instance v3, Landroid/widget/GridView;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 3381
    new-instance v4, Lgwg;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    iget-object v6, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    iget v7, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    invoke-direct {v4, v5, v6, v0, v7}, Lgwg;-><init>(Landroid/content/Context;Ljava/util/List;II)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3382
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    iget-object v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lgvn$b;->btn_gray_bg:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3383
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setGravity(I)V

    .line 3384
    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setClickable(Z)V

    .line 3385
    invoke-virtual {v3, v2}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 3386
    invoke-virtual {v3, v1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 3387
    iget v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3388
    invoke-virtual {v3, v1, v1, v1, v1}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 3389
    iget v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    iget v5, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-le v4, v5, :cond_3

    .line 3390
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    .line 3391
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lgvn$c;->default_gridview_vertical_spacing:I

    .line 3392
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 3390
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 3397
    :goto_2
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lgvn$c;->default_share_horizontal_space:I

    .line 3398
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 3397
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 3399
    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 3400
    new-instance v4, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;

    invoke-direct {v4, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$1;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V

    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3438
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->m:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3378
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 2372
    goto/16 :goto_0

    .line 3394
    :cond_3
    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lgvn$c;->default_viewpager_singlehight:I

    .line 3395
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 3394
    invoke-virtual {v3, v4}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    goto :goto_2

    .line 3486
    :cond_4
    new-instance v0, Lgwi;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->m:Ljava/util/List;

    invoke-direct {v0, v3}, Lgwi;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->l:Lgwi;

    .line 3487
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->l:Lgwi;

    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Lgl;)V

    .line 3488
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setClickable(Z)V

    .line 3489
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setEnabled(Z)V

    .line 3490
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 3491
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 3493
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    .line 3494
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 3495
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lgvn$c;->default_viewpager_hight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 3496
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3497
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    new-instance v3, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$4;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$4;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V

    invoke-virtual {v0, v3}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$d;)V

    .line 4333
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-le v0, v3, :cond_5

    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    iget v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-gt v0, v3, :cond_6

    .line 4334
    :cond_5
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    .line 4335
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4336
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lgvn$c;->default_viewpager_singlehight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4338
    iget-object v3, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4341
    :cond_6
    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->v:I

    if-ne v0, v2, :cond_9

    .line 4342
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setVisibility(I)V

    .line 4343
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-le v0, v1, :cond_7

    iget v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->p:I

    iget v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->r:I

    if-gt v0, v1, :cond_8

    .line 4344
    :cond_7
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    .line 4345
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4346
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lgvn$c;->default_viewpager_singlehight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 4348
    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4349
    :cond_8
    :goto_3
    return-void

    .line 4351
    :cond_9
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    iget-object v2, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 4352
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;->setVisibility(I)V

    goto :goto_3
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 523
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->dismiss()V

    .line 524
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

    if-eqz v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->c:Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;

    invoke-interface {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$a;->a()V

    .line 527
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 235
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 236
    sget v0, Lgvn$g;->view_shares:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->setContentView(I)V

    .line 244
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 245
    invoke-direct {p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->d()V

    .line 246
    invoke-virtual {p0, v3}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->setCanceledOnTouchOutside(Z)V

    .line 1286
    sget v0, Lgvn$e;->root:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->n:Landroid/view/View;

    .line 1287
    sget v0, Lgvn$e;->pager:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->k:Landroid/support/v4/view/ViewPager;

    .line 1288
    sget v0, Lgvn$e;->indicator:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->u:Lcom/alibaba/dingtalk/share/share/view/ShareViewpagerIndicator;

    .line 1290
    sget v0, Lgvn$e;->share_box_title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    .line 1291
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1293
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1294
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->g:Ljava/lang/String;

    .line 1307
    :goto_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->a(Landroid/widget/TextView;)V

    .line 1454
    :cond_0
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->n:Landroid/view/View;

    new-instance v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$2;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1471
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->n:Landroid/view/View;

    sget v1, Lgvn$e;->btn_share_cancel:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$3;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox$3;-><init>(Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    return-void

    .line 1299
    :cond_1
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1300
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 1301
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    const/16 v1, 0x19

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    .line 1302
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    sget v2, Lgvn$h;->webview_title_tip:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1304
    :cond_2
    iget-object v0, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->w:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->j:Landroid/content/Context;

    sget v2, Lgvn$h;->webview_title_tip2:I

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/alibaba/dingtalk/share/share/view/ShareActionBox;->e:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
