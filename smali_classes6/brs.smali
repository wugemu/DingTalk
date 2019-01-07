.class public final Lbrs;
.super Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;
.source "DocNavBarViewDelegate.java"


# instance fields
.field public a:Landroid/app/Activity;

.field public b:Landroid/view/View;

.field public c:Landroid/widget/RelativeLayout;

.field public d:Landroid/widget/RelativeLayout;

.field public e:Landroid/widget/RelativeLayout;

.field public f:Landroid/widget/RelativeLayout;

.field public g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

.field public h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/plugin/delegate/NavigationModel;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lbrs;->i:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lbrs;->a:Landroid/app/Activity;

    .line 62
    new-instance v0, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    invoke-direct {v0}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;-><init>()V

    iput-object v0, p0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    .line 63
    return-void
.end method

.method static synthetic a(Lbrs;)Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;
    .locals 1
    .param p0, "x0"    # Lbrs;

    .prologue
    .line 41
    iget-object v0, p0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    return-object v0
.end method

.method static synthetic a(Lbrs;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lbrs;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    .line 1210
    if-nez p1, :cond_1

    .line 3052
    :cond_0
    :goto_0
    return-void

    .line 1215
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    if-eqz v0, :cond_2

    .line 1216
    iget-object v0, p0, Lbrs;->j:Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;

    sget-object v1, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sOverflowMenuBackgroundDefaultColor:Ljava/lang/String;

    sget-object v2, Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation;->sMenuTextDefaultColor:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Lcom/alibaba/android/dingtalk/doc/hybrid/plugin/delegate/NavigationDelegateModel;->setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1282
    :cond_2
    iget-object v0, p0, Lbrs;->i:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbrs;->i:Ljava/util/List;

    .line 2270
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2271
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2273
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1262
    :cond_3
    iget-object v1, p0, Lbrs;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1224
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lbrs;->a(Z)V

    .line 1226
    iget-object v0, p0, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_4

    .line 1227
    iget-object v0, p0, Lbrs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_6

    .line 1228
    iget-object v0, p0, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setVisibility(I)V

    .line 1235
    :cond_4
    :goto_2
    iget-object v0, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbrs;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1236
    iget-object v0, p0, Lbrs;->a:Landroid/app/Activity;

    iget-object v1, p0, Lbrs;->i:Ljava/util/List;

    iget-object v2, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    new-instance v3, Lbrs$2;

    invoke-direct {v3, p0}, Lbrs$2;-><init>(Lbrs;)V

    .line 3051
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 3055
    new-instance v4, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;

    invoke-direct {v4, v0}, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;-><init>(Landroid/content/Context;)V

    .line 3056
    invoke-virtual {v4, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/NavigationItemListManager$ToolbarItemListAdapter;->a(Ljava/util/List;)V

    .line 3057
    invoke-virtual {v2, v4}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->setAdapter(Landroid/widget/BaseAdapter;)V

    .line 3059
    invoke-virtual {v2, v3}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->setOnItemClickListener(Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView$b;)V

    goto :goto_0

    .line 1285
    :cond_5
    iget-object v0, p0, Lbrs;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    .line 1230
    :cond_6
    iget-object v0, p0, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private a(Z)V
    .locals 3
    .param p1, "isSetTools"    # Z

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 293
    if-eqz p1, :cond_3

    .line 294
    iget-object v0, p0, Lbrs;->d:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lbrs;->d:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 298
    :cond_0
    iget-object v0, p0, Lbrs;->c:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lbrs;->c:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    :cond_1
    iget-object v0, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-virtual {v0, v2}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->setVisibility(I)V

    .line 314
    :cond_2
    :goto_0
    return-void

    .line 306
    :cond_3
    iget-object v0, p0, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    if-eqz v0, :cond_4

    .line 307
    iget-object v0, p0, Lbrs;->g:Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;

    invoke-virtual {v0, v2}, Lcom/alibaba/lightapp/runtime/view/GestureDetectorTextView;->setVisibility(I)V

    .line 310
    :cond_4
    iget-object v0, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    if-eqz v0, :cond_2

    .line 311
    iget-object v0, p0, Lbrs;->h:Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalk/doc/ui/widget/LinearListView;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic b(Lbrs;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lbrs;

    .prologue
    .line 41
    iget-object v0, p0, Lbrs;->i:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final goBack()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public final hideActionBar(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 178
    return-void
.end method

.method public final setActionBarSubTitle(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "var1"    # Ljava/lang/String;
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Z

    .prologue
    .line 153
    return-void
.end method

.method public final setActionBarTitle(Ljava/lang/String;ZZZ)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "showRedDot"    # Z
    .param p3, "changeRedDot"    # Z
    .param p4, "eventEnable"    # Z

    .prologue
    .line 148
    return-void
.end method

.method public final setActions(Ljava/util/List;Z)V
    .locals 1
    .param p2, "var2"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrs;->a(Z)V

    .line 163
    return-void
.end method

.method public final setHelpIcon(ZI)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # I

    .prologue
    .line 137
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrs;->a(Z)V

    .line 138
    return-void
.end method

.method public final setLeft(ZZZLjava/lang/String;)V
    .locals 0
    .param p1, "isBackArrowVisible"    # Z
    .param p2, "isHomeIconVisible"    # Z
    .param p3, "isControl"    # Z
    .param p4, "text"    # Ljava/lang/String;

    .prologue
    .line 128
    return-void
.end method

.method public final setMenu(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p2, "var2"    # Ljava/lang/String;
    .param p3, "var3"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 157
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrs;->a(Z)V

    .line 158
    return-void
.end method

.method public final setPullGesture(Z)V
    .locals 0
    .param p1, "var1"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public final setRight(ZZZLjava/lang/String;)V
    .locals 1
    .param p1, "var1"    # Z
    .param p2, "var2"    # Z
    .param p3, "var3"    # Z
    .param p4, "var4"    # Ljava/lang/String;

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbrs;->a(Z)V

    .line 133
    return-void
.end method

.method public final setTitleIcon(ZILjava/lang/String;)V
    .locals 0
    .param p1, "var1"    # Z
    .param p2, "var2"    # I
    .param p3, "var3"    # Ljava/lang/String;

    .prologue
    .line 143
    return-void
.end method

.method public final showTitleDropListMenu(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "var1":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/lightapp/runtime/plugin/biz/Navigation$ItemModel;>;"
    return-void
.end method
