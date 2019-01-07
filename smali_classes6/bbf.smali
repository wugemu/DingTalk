.class public final Lbbf;
.super Ljava/lang/Object;
.source "SingleChatTaskPresenter.java"

# interfaces
.implements Lbbe$a;


# instance fields
.field public a:Lbbe$b;

.field public b:J

.field public c:Lbht;

.field d:Ljava/lang/String;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/ding/base/objects/ObjectDing;",
            ">;"
        }
    .end annotation
.end field

.field public g:Layv$h;


# direct methods
.method public constructor <init>(Lbbe$b;)V
    .locals 1
    .param p1, "view"    # Lbbe$b;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbbf;->f:Ljava/util/List;

    .line 44
    iput-object p1, p0, Lbbf;->a:Lbbe$b;

    .line 45
    invoke-interface {p1, p0}, Lbbe$b;->setPresenter(Lcjd;)V

    .line 46
    return-void
.end method

.method private a()I
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lbbf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lbbf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method static synthetic a(Lbbf;)V
    .locals 3
    .param p0, "x0"    # Lbbf;

    .prologue
    .line 32
    .line 3199
    iget-object v0, p0, Lbbf;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3200
    iget-object v0, p0, Lbbf;->a:Lbbe$b;

    const-string/jumbo v1, ""

    invoke-direct {p0}, Lbbf;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbbe$b;->a(Ljava/lang/String;I)V

    .line 3201
    :goto_0
    return-void

    .line 3203
    :cond_0
    iget-object v0, p0, Lbbf;->a:Lbbe$b;

    iget-object v1, p0, Lbbf;->d:Ljava/lang/String;

    invoke-direct {p0}, Lbbf;->a()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lbbe$b;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic a(Lbbf;Z)V
    .locals 5
    .param p0, "x0"    # Lbbf;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    .line 2152
    new-instance v0, Lbbf$3;

    invoke-direct {v0, p0, p1}, Lbbf$3;-><init>(Lbbf;Z)V

    .line 2192
    iget-object v1, p0, Lbbf;->a:Lbbe$b;

    invoke-interface {v1}, Lbbe$b;->e()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2193
    const-class v1, Lcma;

    iget-object v2, p0, Lbbf;->a:Lbbe$b;

    invoke-interface {v2}, Lbbe$b;->e()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2195
    :cond_0
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v1

    iget-object v2, p0, Lbbf;->e:Ljava/util/List;

    .line 2709
    iget-object v3, v1, Lbbp;->b:Lbbp$a;

    new-instance v4, Lbbp$81;

    invoke-direct {v4, v1, v2, v0}, Lbbp$81;-><init>(Lbbp;Ljava/util/List;Lcma;)V

    invoke-virtual {v3, v4}, Lbbp$a;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void
.end method

.method static synthetic b(Lbbf;)V
    .locals 2
    .param p0, "x0"    # Lbbf;

    .prologue
    .line 32
    .line 3207
    iget-object v0, p0, Lbbf;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3208
    iget-object v0, p0, Lbbf;->a:Lbbe$b;

    invoke-interface {v0}, Lbbe$b;->f()V

    .line 3209
    :goto_0
    return-void

    .line 3211
    :cond_0
    iget-object v0, p0, Lbbf;->a:Lbbe$b;

    iget-object v1, p0, Lbbf;->f:Ljava/util/List;

    invoke-interface {v0, v1}, Lbbe$b;->a(Ljava/util/List;)V

    goto :goto_0
.end method


# virtual methods
.method public final g()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public final h()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public final i()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 96
    iget-object v0, p0, Lbbf;->c:Lbht;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lbbf;->c:Lbht;

    .line 1053
    const/4 v1, 0x1

    iput-boolean v1, v0, Lbht;->a:Z

    .line 98
    iput-object v2, p0, Lbbf;->c:Lbht;

    .line 1121
    :cond_0
    invoke-static {}, Layv;->a()Layv;

    move-result-object v0

    .line 2104
    iput-object v2, v0, Layv;->j:Layv$h;

    .line 101
    return-void
.end method
