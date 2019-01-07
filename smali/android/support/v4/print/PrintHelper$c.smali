.class Landroid/support/v4/print/PrintHelper$c;
.super Landroid/support/v4/print/PrintHelper$b;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 864
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$b;-><init>(Landroid/content/Context;)V

    .line 866
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$c;->d:Z

    .line 867
    return-void
.end method
