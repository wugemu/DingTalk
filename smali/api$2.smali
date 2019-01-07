.class final Lapi$2;
.super Ljava/lang/Object;
.source "CalendarActivityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lapi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapi;


# direct methods
.method constructor <init>(Lapi;)V
    .locals 0
    .param p1, "this$0"    # Lapi;

    .prologue
    .line 319
    iput-object p1, p0, Lapi$2;->a:Lapi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 322
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 1051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 322
    iget-object v1, p0, Lapi$2;->a:Lapi;

    .line 2051
    iget-object v1, v1, Lapi;->f:Laox;

    .line 322
    invoke-interface {v0, v1}, Laph$b;->a(Lcsa;)V

    .line 323
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 3051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 323
    iget-object v1, p0, Lapi$2;->a:Lapi;

    .line 4051
    iget-object v1, v1, Lapi;->g:Laox;

    .line 323
    invoke-interface {v0, v1}, Laph$b;->b(Lcsa;)V

    .line 325
    iget-object v0, p0, Lapi$2;->a:Lapi;

    new-instance v1, Lawn;

    iget-object v2, p0, Lapi$2;->a:Lapi;

    .line 5051
    iget-object v2, v2, Lapi;->a:Laph$b;

    .line 325
    invoke-interface {v2}, Laph$b;->b()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lawn;-><init>(Landroid/app/Activity;)V

    .line 6051
    iput-object v1, v0, Lapi;->h:Lawn;

    .line 326
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 7051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 326
    iget-object v1, p0, Lapi$2;->a:Lapi;

    .line 8051
    iget-object v1, v1, Lapi;->h:Lawn;

    .line 326
    invoke-interface {v0, v1}, Laph$b;->a(Lawn;)V

    .line 327
    iget-object v0, p0, Lapi$2;->a:Lapi;

    invoke-virtual {v0}, Lapi;->e()V

    .line 328
    iget-object v0, p0, Lapi$2;->a:Lapi;

    invoke-virtual {v0}, Lapi;->d()V

    .line 329
    iget-object v0, p0, Lapi$2;->a:Lapi;

    iget-object v1, p0, Lapi$2;->a:Lapi;

    .line 9051
    iget-object v1, v1, Lapi;->b:Ljava/util/Calendar;

    .line 329
    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapi;->d(Lckq;)V

    .line 330
    iget-object v0, p0, Lapi$2;->a:Lapi;

    iget-object v1, p0, Lapi$2;->a:Lapi;

    .line 10051
    iget-object v1, v1, Lapi;->b:Ljava/util/Calendar;

    .line 330
    invoke-static {v1}, Lckq;->a(Ljava/util/Calendar;)Lckq;

    move-result-object v1

    invoke-virtual {v0, v1}, Lapi;->e(Lckq;)V

    .line 331
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 11386
    iget-object v0, v0, Lapi;->e:Larm;

    invoke-interface {v0}, Larm;->b()V

    .line 332
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 12051
    const/4 v1, 0x1

    iput-boolean v1, v0, Lapi;->c:Z

    .line 333
    iget-object v0, p0, Lapi$2;->a:Lapi;

    .line 13051
    iget-object v0, v0, Lapi;->a:Laph$b;

    .line 333
    invoke-interface {v0}, Laph$b;->e()V

    .line 334
    return-void
.end method
