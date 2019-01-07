.class public final Lbtc$1;
.super Lbzd;
.source "PermissionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbtc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/Fragment;

.field final synthetic b:Lbtc$a;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lbtc$a;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lbtc$1;->a:Landroid/support/v4/app/Fragment;

    iput-object p2, p0, Lbtc$1;->b:Lbtc$a;

    invoke-direct {p0}, Lbzd;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lbtc$1;->b:Lbtc$a;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lbtc$1;->b:Lbtc$a;

    invoke-interface {v0}, Lbtc$a;->a()V

    .line 52
    :cond_0
    return-void
.end method


# virtual methods
.method public final grant()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lbtc$1;->a()V

    .line 33
    return-void
.end method

.method public final onDenied()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lbtc$1;->a()V

    .line 38
    iget-object v0, p0, Lbtc$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbtc;->a(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method public final onNeverAsk()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lbtc$1;->a()V

    .line 44
    iget-object v0, p0, Lbtc$1;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lbtc;->a(Landroid/content/Context;)V

    .line 45
    return-void
.end method
