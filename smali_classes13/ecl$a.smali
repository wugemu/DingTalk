.class final Lecl$a;
.super Ljava/lang/Object;
.source "DtActionSheetAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lecl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/FrameLayout;

.field b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

.field c:Landroid/widget/TextView;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field final synthetic f:Lecl;


# direct methods
.method private constructor <init>(Lecl;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lecl$a;->f:Lecl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lecl;B)V
    .locals 0
    .param p1, "x0"    # Lecl;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lecl$a;-><init>(Lecl;)V

    return-void
.end method


# virtual methods
.method public final a(Lecm;)V
    .locals 4
    .param p1, "style"    # Lecm;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-object v1, p0, Lecl$a;->f:Lecl;

    invoke-static {v1}, Lecl;->a(Lecl;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lecl$a;->f:Lecl;

    invoke-static {v1}, Lecl;->a(Lecl;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 134
    .local v0, "resources":Landroid/content/res/Resources;
    iget-object v1, p0, Lecl$a;->b:Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;

    invoke-interface {p1}, Lecm;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/alibaba/android/dingtalkui/icon/DtIconFontTextView;->setTextColor(I)V

    .line 135
    iget-object v1, p0, Lecl$a;->c:Landroid/widget/TextView;

    invoke-interface {p1}, Lecm;->e()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v1, p0, Lecl$a;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lecm;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    iget-object v1, p0, Lecl$a;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lecm;->a()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v1, p0, Lecl$a;->d:Landroid/widget/TextView;

    invoke-interface {p1}, Lecm;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 140
    .end local v0    # "resources":Landroid/content/res/Resources;
    :cond_0
    return-void
.end method
