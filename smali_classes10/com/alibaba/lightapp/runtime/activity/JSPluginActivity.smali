.class public abstract Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "JSPluginActivity.java"

# interfaces
.implements Lcom/alibaba/lightapp/runtime/INuvaContext;


# instance fields
.field protected a:Z

.field protected b:Z

.field private c:Z

.field private d:Z

.field private e:Ljava/lang/String;

.field private final f:I

.field private final g:I

.field private h:I

.field private i:Landroid/view/MenuItem;

.field private j:Landroid/view/MenuItem;

.field private k:Landroid/widget/ImageView;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:I

.field private o:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 30
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->c:Z

    .line 31
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->d:Z

    .line 33
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->e:Ljava/lang/String;

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->f:I

    .line 38
    const/4 v0, 0x3

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->g:I

    .line 39
    iput v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->h:I

    .line 45
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->l:Ljava/lang/String;

    .line 46
    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->m:I

    .line 47
    iput v2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->n:I

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a:Z

    .line 50
    iput-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b:Z

    .line 136
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;

    invoke-direct {v0, p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$2;-><init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->o:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->n:I

    return p1
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->o:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    return-object v0
.end method

.method private a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->j:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 122
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->b:Z

    if-eqz v0, :cond_0

    .line 3133
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->n:I

    .line 122
    if-lez v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    .line 4133
    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->n:I

    .line 123
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 124
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 126
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    .line 5272
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->l:Ljava/lang/String;

    .line 5273
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5274
    const/4 v0, -0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->m:I

    :goto_0
    return-void

    .line 5277
    :cond_0
    sget v0, Lhdn$g;->menu_overflow:I

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->m:I

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    .line 4309
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZI)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 24
    .line 4239
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$5;-><init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZI)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 24
    .line 4227
    iput-boolean p2, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->d:Z

    .line 4228
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;

    invoke-direct {v0, p0, p3, p1}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$4;-><init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZZZLjava/lang/String;)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 24
    .line 4215
    iput-boolean p3, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->c:Z

    .line 4216
    new-instance v0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$3;-><init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;ZZ)V

    invoke-virtual {p0, v0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->e:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    .line 4317
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->mActionBar:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 24
    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a()V

    return-void
.end method

.method static synthetic c(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 24
    .line 5300
    iput-boolean p1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a:Z

    .line 5301
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->supportInvalidateOptionsMenu()V

    .line 24
    return-void
.end method

.method static synthetic d(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->e:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v1, 0x17

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 54
    .line 1100
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    .line 1101
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v1, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1102
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    new-instance v1, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;

    invoke-direct {v1, p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity$1;-><init>(Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1110
    const/4 v0, 0x3

    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->h:I

    const-string/jumbo v2, ""

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->j:Landroid/view/MenuItem;

    .line 1111
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->j:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 1112
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->j:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->k:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 1113
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a()V

    .line 1114
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->h:I

    .line 2085
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->h:I

    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->l:Ljava/lang/String;

    invoke-interface {p1, v3, v4, v0, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->i:Landroid/view/MenuItem;

    .line 2129
    iget v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->m:I

    .line 2086
    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->l:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2087
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->i:Landroid/view/MenuItem;

    .line 3129
    iget v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->m:I

    .line 2087
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 2091
    :goto_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->i:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 2092
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->i:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->a:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 56
    const/4 v0, 0x1

    return v0

    .line 2089
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->i:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 79
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 64
    :sswitch_0
    iget-boolean v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->d:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->o:Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;

    invoke-virtual {v0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;->onRightClick()V

    goto :goto_0

    .line 75
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/lightapp/runtime/activity/JSPluginActivity;->finish()V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method
