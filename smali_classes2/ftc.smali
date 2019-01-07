.class public final Lftc;
.super Ljava/lang/Object;
.source "NameCardEditPresenter.java"


# instance fields
.field a:Lfsw$a;

.field public b:Lfuj$a;

.field public c:Lfuj$a;


# direct methods
.method public constructor <init>(Lfsw$a;)V
    .locals 0
    .param p1, "viewContract"    # Lfsw$a;

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lftc;->a:Lfsw$a;

    .line 32
    return-void
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 76
    if-eqz p0, :cond_0

    .line 77
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/alibaba/android/user/namecard/create/activity/NameCardInfosActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x1002

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 57
    iget-object v0, p0, Lftc;->c:Lfuj$a;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lftc$2;

    invoke-direct {v0, p0, p1}, Lftc$2;-><init>(Lftc;Landroid/app/Activity;)V

    iput-object v0, p0, Lftc;->c:Lfuj$a;

    .line 1047
    :cond_0
    sget-object v0, Lfuj$b;->a:Lfuj;

    .line 71
    const/4 v1, 0x1

    iget-object v2, p0, Lftc;->c:Lfuj$a;

    invoke-virtual {v0, v1, v2}, Lfuj;->a(ZLfuj$a;)V

    .line 72
    return-void
.end method
