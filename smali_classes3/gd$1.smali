.class final Lgd$1;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgd;->a(Landroid/view/MenuItem;Lgd$d;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lgd$d;


# direct methods
.method constructor <init>(Lgd$d;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lgd$1;->a:Lgd$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 472
    iget-object v0, p0, Lgd$1;->a:Lgd$d;

    invoke-interface {v0}, Lgd$d;->a()Z

    move-result v0

    return v0
.end method

.method public final onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 467
    const/4 v0, 0x0

    return v0
.end method
