.class public Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "ActionMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;,
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;,
        Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

.field private d:Landroid/content/Context;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ListView;

.field private g:Landroid/widget/Button;

.field private h:Landroid/view/View;

.field private i:Landroid/view/View;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/TextView;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    sget v0, Lcig$k;->ddBottomFloatDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;I)V

    .line 71
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 80
    iput-object p1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d:Landroid/content/Context;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    .line 82
    new-instance v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    iget-object v1, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->n:Z

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menuClickListener"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    .prologue
    .line 74
    sget v0, Lcig$k;->ddBottomFloatDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;-><init>(Landroid/content/Context;I)V

    .line 75
    iput-object p2, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    .line 76
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    .param p1, "x1"    # I

    .prologue
    .line 48
    .line 2143
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    .line 2144
    :cond_0
    :goto_0
    return-void

    .line 2146
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2147
    if-ge p1, v0, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 2150
    if-eqz v0, :cond_2

    .line 2153
    const/4 v2, 0x0

    .line 2541
    iput-boolean v2, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->f:Z

    goto :goto_1

    .line 2156
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .line 2157
    if-eqz v0, :cond_4

    .line 2158
    const/4 v1, 0x1

    .line 3541
    iput-boolean v1, v0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;->f:Z

    .line 2161
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    if-eqz v0, :cond_0

    .line 2162
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Z
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic c(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->c:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$b;

    return-object v0
.end method

.method static synthetic d(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    .locals 1
    .param p1, "menu"    # Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    if-nez v0, :cond_0

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    .line 220
    :cond_0
    if-eqz p1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    if-eqz v0, :cond_2

    .line 224
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->notifyDataSetChanged()V

    .line 226
    :cond_2
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;",
            ">;)",
            "Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "menus":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$MenuWrapper;>;"
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    if-nez v0, :cond_2

    .line 231
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    .line 235
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->notifyDataSetChanged()V

    .line 241
    :cond_1
    return-object p0

    .line 233
    :cond_2
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 88
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget v0, Lcig$h;->layout_action_menu_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->setContentView(I)V

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v3, v4}, Landroid/view/Window;->setLayout(II)V

    .line 1097
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 1098
    const/16 v3, 0x50

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1099
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1100
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v3, Lcig$k;->ddBottomDialogAnimStyle:I

    invoke-virtual {v0, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 1104
    sget v0, Lcig$f;->content_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->j:Landroid/widget/LinearLayout;

    .line 1105
    sget v0, Lcig$f;->content:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->k:Landroid/widget/TextView;

    .line 1106
    sget v0, Lcig$f;->cancel:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->g:Landroid/widget/Button;

    .line 1107
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->g:Landroid/widget/Button;

    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$1;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1114
    sget v0, Lcig$f;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->f:Landroid/widget/ListView;

    .line 1115
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->f:Landroid/widget/ListView;

    new-instance v3, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;

    invoke-direct {v3, p0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$2;-><init>(Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;)V

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1136
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->f:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1137
    sget v0, Lcig$f;->title_layout:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->h:Landroid/view/View;

    .line 1138
    sget v0, Lcig$f;->title:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->e:Landroid/widget/TextView;

    .line 1139
    sget v0, Lcig$f;->title_layout_divider:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->i:Landroid/view/View;

    .line 1169
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 1171
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->h:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1172
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->e:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v0, v1

    .line 1178
    :goto_0
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->g:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 1179
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->g:Landroid/widget/Button;

    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1183
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->j:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    .line 1184
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1185
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->k:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move v3, v1

    .line 1192
    :goto_1
    if-nez v3, :cond_6

    if-nez v0, :cond_6

    .line 1193
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->i:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1199
    :goto_2
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    if-eqz v4, :cond_3

    .line 1200
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->m:Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;

    if-nez v0, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    move v2, v1

    .line 1279
    :cond_2
    iput-boolean v2, v4, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog$a;->a:Z

    .line 93
    :cond_3
    return-void

    .line 1175
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->h:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move v0, v2

    goto :goto_0

    .line 1188
    :cond_5
    iget-object v3, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v2

    .line 1189
    goto :goto_1

    .line 1195
    :cond_6
    iget-object v4, p0, Lcom/alibaba/android/dingtalkbase/dialog/ActionMenuDialog;->i:Landroid/view/View;

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
