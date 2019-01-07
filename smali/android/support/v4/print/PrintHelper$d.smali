.class final Landroid/support/v4/print/PrintHelper$d;
.super Landroid/support/v4/print/PrintHelper$c;
.source "PrintHelper.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x18
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/print/PrintHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "d"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 876
    invoke-direct {p0, p1}, Landroid/support/v4/print/PrintHelper$c;-><init>(Landroid/content/Context;)V

    .line 878
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$d;->d:Z

    .line 879
    iput-boolean v0, p0, Landroid/support/v4/print/PrintHelper$d;->c:Z

    .line 880
    return-void
.end method
