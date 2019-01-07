.class public final Landroid/support/v4/content/Loader$a;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/content/Loader;


# direct methods
.method public constructor <init>(Landroid/support/v4/content/Loader;)V
    .locals 1
    .param p1, "this$0"    # Landroid/support/v4/content/Loader;

    .prologue
    .line 53
    .local p0, "this":Landroid/support/v4/content/Loader$a;, "Landroid/support/v4/content/Loader<TD;>.a;"
    iput-object p1, p0, Landroid/support/v4/content/Loader$a;->a:Landroid/support/v4/content/Loader;

    .line 54
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 59
    .local p0, "this":Landroid/support/v4/content/Loader$a;, "Landroid/support/v4/content/Loader<TD;>.a;"
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 64
    .local p0, "this":Landroid/support/v4/content/Loader$a;, "Landroid/support/v4/content/Loader<TD;>.a;"
    iget-object v0, p0, Landroid/support/v4/content/Loader$a;->a:Landroid/support/v4/content/Loader;

    invoke-virtual {v0}, Landroid/support/v4/content/Loader;->n()V

    .line 65
    return-void
.end method
