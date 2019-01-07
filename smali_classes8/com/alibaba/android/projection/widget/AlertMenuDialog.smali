.class public Lcom/alibaba/android/projection/widget/AlertMenuDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "AlertMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;,
        Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;,
        Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/widget/ListView;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

.field private f:Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 49
    iput-object p1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->b:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    .line 51
    new-instance v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-direct {v0, p0, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;-><init>(Lcom/alibaba/android/projection/widget/AlertMenuDialog;Ljava/util/List;)V

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "clickListener"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;

    .prologue
    .line 43
    sget v0, Legm$f;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;-><init>(Landroid/content/Context;I)V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->f:Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/alibaba/android/projection/widget/AlertMenuDialog;I)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog;
    .param p1, "x1"    # I

    .prologue
    .line 31
    .line 1127
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-gez p1, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1130
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1131
    if-ge p1, v0, :cond_0

    .line 1133
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 1134
    if-eqz v0, :cond_2

    .line 1137
    const/4 v2, 0x0

    .line 1191
    iput-boolean v2, v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    goto :goto_1

    .line 1140
    :cond_3
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .line 1141
    if-eqz v0, :cond_4

    .line 1142
    const/4 v1, 0x1

    .line 2191
    iput-boolean v1, v0, Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;->c:Z

    .line 1145
    :cond_4
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    if-eqz v0, :cond_0

    .line 1146
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->f:Lcom/alibaba/android/projection/widget/AlertMenuDialog$b;

    return-object v0
.end method

.method static synthetic c(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->b:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;)Lcom/alibaba/android/projection/widget/AlertMenuDialog;
    .locals 1
    .param p1, "menu"    # Lcom/alibaba/android/projection/widget/AlertMenuDialog$MenuWrapper;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    .line 74
    :cond_0
    if-eqz p1, :cond_1

    .line 75
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    if-eqz v0, :cond_2

    .line 78
    iget-object v0, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    invoke-virtual {v0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;->notifyDataSetChanged()V

    .line 80
    :cond_2
    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/high16 v2, 0x20000

    .line 56
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->requestWindowFeature(I)Z

    .line 57
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 58
    sget v1, Legm$d;->layout_focus_dialog_alert_menu:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->setContentView(I)V

    .line 60
    invoke-virtual {p0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 61
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 62
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 63
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 1104
    :cond_0
    sget v1, Legm$c;->list_view:I

    invoke-virtual {p0, v1}, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c:Landroid/widget/ListView;

    .line 1105
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c:Landroid/widget/ListView;

    new-instance v2, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/projection/widget/AlertMenuDialog$1;-><init>(Lcom/alibaba/android/projection/widget/AlertMenuDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1123
    iget-object v1, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->c:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/alibaba/android/projection/widget/AlertMenuDialog;->e:Lcom/alibaba/android/projection/widget/AlertMenuDialog$a;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method
