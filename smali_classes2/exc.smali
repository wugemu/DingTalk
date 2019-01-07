.class public abstract Lexc;
.super Ljava/lang/Object;
.source "BaseApmtControlPresenter.java"

# interfaces
.implements Lexf$a;


# instance fields
.field protected a:Lexf$b;

.field protected b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lexf$b;)V
    .locals 1
    .param p1, "activityView"    # Lexf$b;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lexc;->a:Lexf$b;

    .line 18
    iget-object v0, p0, Lexc;->a:Lexf$b;

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lexc;->a:Lexf$b;

    invoke-interface {v0}, Lexf$b;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lexc;->b:Landroid/app/Activity;

    .line 21
    :cond_0
    return-void
.end method
