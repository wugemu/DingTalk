.class public final Ldhm;
.super Ljava/lang/Object;
.source "SecretChatDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldhm$a;
    }
.end annotation


# instance fields
.field public a:Ldhm$a;

.field private b:Landroid/view/View;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/Activity;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "burn"    # Z

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Ldhm;->f:Landroid/app/Activity;

    .line 34
    iput-boolean p2, p0, Ldhm;->g:Z

    .line 35
    instance-of v0, p1, Ldhm$a;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Ldhm$a;

    .end local p1    # "context":Landroid/app/Activity;
    iput-object p1, p0, Ldhm;->a:Ldhm$a;

    .line 38
    :cond_0
    iget-object v0, p0, Ldhm;->f:Landroid/app/Activity;

    sget v1, Lctk$f;->secret_chat_bubble:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldhm;->b:Landroid/view/View;

    .line 39
    iget-object v0, p0, Ldhm;->b:Landroid/view/View;

    sget v1, Lctk$f;->img_secret_chat_bubble_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Ldhm;->c:Landroid/widget/ImageView;

    .line 40
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v0

    const-string/jumbo v1, "dt_secret_chat"

    const-string/jumbo v2, "secret_chat_icon"

    invoke-virtual {v0, v1, v2}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ldhm;->e:Ljava/lang/String;

    .line 42
    iget-object v0, p0, Ldhm;->b:Landroid/view/View;

    sget v1, Lctk$f;->tv_secret_chat_bubble_red_dot_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldhm;->d:Landroid/widget/TextView;

    .line 43
    iget-object v0, p0, Ldhm;->b:Landroid/view/View;

    new-instance v1, Ldhm$1;

    invoke-direct {v1, p0}, Ldhm$1;-><init>(Ldhm;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {p0}, Ldhm;->a()V

    .line 52
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 55
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v1

    const-string/jumbo v2, "dt_secret_chat"

    const-string/jumbo v3, "secret_chat_icon"

    invoke-virtual {v1, v2, v3}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "iconSelect":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    const-string/jumbo v0, "1"

    .line 59
    :cond_0
    iget-boolean v1, p0, Ldhm;->g:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldhm;->a:Ldhm$a;

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldhm;->a:Ldhm$a;

    .line 61
    invoke-interface {v1}, Ldhm$a;->m()I

    move-result v1

    if-lez v1, :cond_5

    .line 62
    iput-object v0, p0, Ldhm;->e:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Ldhm;->e:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 64
    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 65
    iget-object v1, p0, Ldhm;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    iget-object v1, p0, Ldhm;->a:Ldhm$a;

    invoke-interface {v1}, Ldhm$a;->m()I

    move-result v1

    const/16 v2, 0x64

    if-ge v1, v2, :cond_2

    .line 67
    iget-object v1, p0, Ldhm;->d:Landroid/widget/TextView;

    iget-object v2, p0, Ldhm;->a:Ldhm$a;

    invoke-interface {v2}, Ldhm$a;->m()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    iget-object v1, p0, Ldhm;->c:Landroid/widget/ImageView;

    sget v2, Lctk$e;->secret_chat_icon_low_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 84
    :cond_1
    :goto_1
    return-void

    .line 69
    :cond_2
    iget-object v1, p0, Ldhm;->d:Landroid/widget/TextView;

    const-string/jumbo v2, "99+"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_3
    iget-object v1, p0, Ldhm;->e:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 73
    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object v1, p0, Ldhm;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 75
    iget-object v1, p0, Ldhm;->c:Landroid/widget/ImageView;

    sget v2, Lctk$e;->secret_chat_icon_mid_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 76
    :cond_4
    iget-object v1, p0, Ldhm;->e:Ljava/lang/String;

    const-string/jumbo v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 78
    iget-object v1, p0, Ldhm;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v1, p0, Ldhm;->c:Landroid/widget/ImageView;

    sget v2, Lctk$e;->secret_chat_icon_high_selector:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1087
    :cond_5
    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 1088
    iget-object v1, p0, Ldhm;->b:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method
