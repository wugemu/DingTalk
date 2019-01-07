.class public final Lhho;
.super Lcri;
.source "FCPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhho$a;
    }
.end annotation


# instance fields
.field public c:Landroid/view/View;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/TextView;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionsObject;

.field public m:Lhho$a;

.field public n:Landroid/app/Activity;

.field public o:Lhho$a;

.field public p:Landroid/widget/PopupWindow$OnDismissListener;

.field private q:I

.field private r:I

.field private s:Z

.field private t:Landroid/view/View;

.field private u:Landroid/view/View;

.field private v:Landroid/view/WindowManager;

.field private w:I

.field private x:I


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 6
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 92
    invoke-direct {p0}, Lcri;-><init>()V

    .line 59
    iput v3, p0, Lhho;->q:I

    .line 60
    iput v3, p0, Lhho;->r:I

    .line 71
    iput-boolean v3, p0, Lhho;->s:Z

    .line 78
    new-instance v0, Lhho$1;

    invoke-direct {v0, p0}, Lhho$1;-><init>(Lhho;)V

    iput-object v0, p0, Lhho;->o:Lhho$a;

    .line 85
    new-instance v0, Lhho$2;

    invoke-direct {v0, p0}, Lhho$2;-><init>(Lhho;)V

    iput-object v0, p0, Lhho;->p:Landroid/widget/PopupWindow$OnDismissListener;

    .line 93
    iput-object p1, p0, Lhho;->n:Landroid/app/Activity;

    .line 95
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lhho;->v:Landroid/view/WindowManager;

    .line 96
    iget-object v0, p0, Lhho;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->a(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhho;->w:I

    .line 97
    iget-object v0, p0, Lhho;->n:Landroid/app/Activity;

    invoke-static {v0}, Lcms;->b(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lhho;->x:I

    .line 99
    iget-object v1, p0, Lhho;->n:Landroid/app/Activity;

    .line 1278
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lhdn$i;->popup_window_checkin:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhho;->c:Landroid/view/View;

    .line 1279
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    invoke-virtual {p0, v0}, Lhho;->setContentView(Landroid/view/View;)V

    .line 1281
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    sget v2, Lhdn$h;->tv_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lhho;->d:Landroid/widget/ImageView;

    .line 1282
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    sget v2, Lhdn$h;->tv_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhho;->e:Landroid/widget/TextView;

    .line 1283
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    sget v2, Lhdn$h;->tv_content:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhho;->f:Landroid/widget/TextView;

    .line 1284
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    sget v2, Lhdn$h;->pb_loading:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lhho;->g:Landroid/widget/ProgressBar;

    .line 1285
    iget-object v0, p0, Lhho;->c:Landroid/view/View;

    sget v2, Lhdn$h;->tv_action2:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lhho;->h:Landroid/widget/TextView;

    .line 1287
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lhdn$i;->popup_window_checkin_guide:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhho;->t:Landroid/view/View;

    .line 1288
    iget-object v0, p0, Lhho;->t:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    iget-object v0, p0, Lhho;->t:Landroid/view/View;

    sget v1, Lhdn$h;->guide_finger:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhho;->u:Landroid/view/View;

    .line 100
    iget v0, p0, Lhho;->w:I

    invoke-virtual {p0, v0}, Lhho;->setWidth(I)V

    .line 101
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lhho;->setHeight(I)V

    .line 102
    invoke-virtual {p0, v3}, Lhho;->setOutsideTouchable(Z)V

    .line 103
    return-void
.end method

.method static synthetic a(Lhho;)Lhho$a;
    .locals 1
    .param p0, "x0"    # Lhho;

    .prologue
    .line 44
    iget-object v0, p0, Lhho;->m:Lhho$a;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;)Lhho;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 106
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x0

    .line 111
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lhho;

    invoke-direct {v0, p0}, Lhho;-><init>(Landroid/app/Activity;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Landroid/view/View;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TextView;
    .param p2, "parent"    # Landroid/view/View;
    .param p3, "action"    # Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 356
    if-eqz p1, :cond_0

    if-nez p3, :cond_1

    .line 395
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    instance-of v1, p3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject$HiddenActionObject;

    if-eqz v1, :cond_2

    .line 361
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v1, p3, Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;->title:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    move-object v0, p1

    .line 370
    .local v0, "clickableView":Landroid/view/View;
    if-eqz p2, :cond_3

    .line 371
    move-object v0, p2

    .line 373
    :cond_3
    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 374
    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 375
    new-instance v1, Lhho$3;

    invoke-direct {v1, p0, p3}, Lhho$3;-><init>(Lhho;Lcom/alibaba/lightapp/runtime/fastcheckin/object/FCActionObject;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public final b()Lhho;
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 266
    iget-object v1, p0, Lhho;->g:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 267
    iget-object v1, p0, Lhho;->g:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 269
    :cond_0
    iget-object v1, p0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 270
    iget-object v1, p0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 271
    .local v0, "cs":Ljava/lang/CharSequence;
    iget-object v1, p0, Lhho;->h:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v1, p0, Lhho;->h:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 274
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    return-object p0
.end method

.method public final dismiss()V
    .locals 0

    .prologue
    .line 226
    invoke-super {p0}, Lcri;->dismiss()V

    .line 232
    return-void
.end method
