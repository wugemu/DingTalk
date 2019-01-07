.class final Lhl$a;
.super Landroid/database/ContentObserver;
.source "CursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lhl;


# direct methods
.method constructor <init>(Lhl;)V
    .locals 1

    .prologue
    .line 475
    iput-object p1, p0, Lhl$a;->a:Lhl;

    .line 476
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 477
    return-void
.end method


# virtual methods
.method public final deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 481
    const/4 v0, 0x1

    return v0
.end method

.method public final onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 486
    iget-object v0, p0, Lhl$a;->a:Lhl;

    invoke-virtual {v0}, Lhl;->onContentChanged()V

    .line 487
    return-void
.end method
