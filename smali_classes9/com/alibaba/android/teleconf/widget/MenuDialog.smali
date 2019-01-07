.class public Lcom/alibaba/android/teleconf/widget/MenuDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "MenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/teleconf/widget/MenuDialog$a;,
        Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;
    }
.end annotation


# instance fields
.field public a:Landroid/widget/ListView;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

.field public f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Lewj$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 186
    sget v0, Leuj$m;->bottom_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;-><init>(Landroid/content/Context;I)V

    .line 187
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 195
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 196
    iput-object p1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->g:Landroid/content/Context;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    .line 198
    new-instance v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-direct {v0, p0, p0, v1}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog;Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->f:Z

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lewj$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuClickListener"    # Lewj$b;

    .prologue
    .line 190
    sget v0, Leuj$m;->bottom_box_float:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;-><init>(Landroid/content/Context;I)V

    .line 191
    iput-object p2, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->l:Lewj$b;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/widget/MenuDialog;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;
    .param p1, "x1"    # I

    .prologue
    .line 46
    .line 2257
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    .line 2258
    :cond_0
    :goto_0
    return-void

    .line 2260
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2261
    if-ge p1, v0, :cond_0

    .line 2263
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 2264
    if-eqz v0, :cond_2

    .line 2267
    const/4 v2, 0x0

    .line 3093
    iput-boolean v2, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    goto :goto_1

    .line 2270
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .line 2271
    if-eqz v0, :cond_4

    .line 2272
    const/4 v1, 0x1

    .line 4093
    iput-boolean v1, v0, Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;->f:Z

    .line 2275
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    if-eqz v0, :cond_0

    .line 2276
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->f:Z

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Lewj$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->l:Lewj$b;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/teleconf/widget/MenuDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/widget/MenuDialog;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->g:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;)Lcom/alibaba/android/teleconf/widget/MenuDialog;
    .locals 1
    .param p1, "menu"    # Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;

    .prologue
    .line 301
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 302
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    .line 304
    :cond_0
    if-eqz p1, :cond_1

    .line 305
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    if-eqz v0, :cond_2

    .line 308
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->notifyDataSetChanged()V

    .line 310
    :cond_2
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/alibaba/android/teleconf/widget/MenuDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;",
            ">;)",
            "Lcom/alibaba/android/teleconf/widget/MenuDialog;"
        }
    .end annotation

    .prologue
    .line 314
    .local p1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/teleconf/widget/MenuDialog$MenuWrapper;>;"
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    if-nez v0, :cond_2

    .line 315
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    .line 319
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    if-eqz v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$a;->notifyDataSetChanged()V

    .line 325
    :cond_1
    return-object p0

    .line 317
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 205
    sget v0, Leuj$j;->layout_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->setContentView(I)V

    .line 1212
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 1213
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1214
    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1215
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1216
    invoke-virtual {p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Leuj$m;->bottomDialogStyle:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1220
    sget v0, Leuj$i;->content_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->j:Landroid/widget/LinearLayout;

    .line 1221
    sget v0, Leuj$i;->content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->k:Landroid/widget/TextView;

    .line 1222
    sget v0, Leuj$i;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->i:Landroid/view/View;

    .line 1223
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->i:Landroid/view/View;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$1;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1230
    sget v0, Leuj$i;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    .line 1231
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    new-instance v1, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/android/teleconf/widget/MenuDialog$2;-><init>(Lcom/alibaba/android/teleconf/widget/MenuDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1252
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->e:Lcom/alibaba/android/teleconf/widget/MenuDialog$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1253
    sget v0, Leuj$i;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/teleconf/widget/MenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->h:Landroid/widget/TextView;

    .line 1282
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->h:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1283
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->h:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->j:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 1287
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->j:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1288
    iget-object v0, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->k:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/alibaba/android/teleconf/widget/MenuDialog;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    :cond_1
    return-void
.end method
