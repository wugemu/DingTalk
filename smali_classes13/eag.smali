.class public final Leag;
.super Ldzl;
.source "SessionRetryHeaderHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ldzl;-><init>()V

    return-void
.end method


# virtual methods
.method final b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 21
    iget-object v0, p0, Leag;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leag;->f:Landroid/widget/TextView;

    .line 22
    iget-object v0, p0, Leag;->f:Landroid/widget/TextView;

    iget-object v1, p0, Leag;->c:Landroid/app/Activity;

    sget v2, Lctk$i;->dt_session_load_fail:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object v0, p0, Leag;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Leag;->g:Landroid/widget/TextView;

    .line 24
    iget-object v0, p0, Leag;->g:Landroid/widget/TextView;

    sget v1, Lctk$i;->icon_atention_fill:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 25
    iget-object v0, p0, Leag;->g:Landroid/widget/TextView;

    iget-object v1, p0, Leag;->c:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lctk$c;->ui_common_alert_icon_bg_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v0, p0, Leag;->a:Landroid/view/View;

    sget v1, Lctk$f;->layout_close:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    iget-object v0, p0, Leag;->a:Landroid/view/View;

    sget v1, Lctk$f;->tv_retry:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 29
    iget-object v0, p0, Leag;->a:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 35
    return-void
.end method

.method public final d()Lcom/alibaba/android/dingtalkim/session/header/Header;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/alibaba/android/dingtalkim/session/header/Header;->SESSION_RETRY:Lcom/alibaba/android/dingtalkim/session/header/Header;

    return-object v0
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 44
    iget-object v1, p0, Leag;->c:Landroid/app/Activity;

    invoke-static {v1}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 54
    :cond_0
    return-void

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 49
    .local v0, "id":I
    sget v1, Lctk$f;->container:I

    if-ne v0, v1, :cond_0

    .line 50
    iget-object v1, p0, Leag;->e:Ldze;

    if-eqz v1, :cond_0

    .line 51
    iget-object v1, p0, Leag;->e:Ldze;

    .line 1301
    iget-object v2, v1, Ldze;->e:Ljava/util/HashSet;

    if-eqz v2, :cond_0

    .line 1302
    iget-object v1, v1, Ldze;->e:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldze$a;

    .line 1303
    if-eqz v1, :cond_2

    .line 1304
    invoke-interface {v1}, Ldze$a;->j()V

    goto :goto_0
.end method
