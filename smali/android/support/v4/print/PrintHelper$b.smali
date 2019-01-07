.class Landroid/support/v4/print/PrintHelper$b;
.super Landroid/support/v4/print/PrintHelper$a;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x14
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 839
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$a;-><init>(Landroid/content/Context;)V

    .line 843
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$b;->c:Z

    .line 844
    return-void
.end method
