.class public Lhgx;
.super Lhgk;
.source "Echo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lhgk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 34
    invoke-super {p0}, Lhgk;->a()V

    .line 35
    return-void
.end method

.method public final a(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3}, Lhgk;->a(IILandroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public final d()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Lhgk;->d()V

    .line 25
    return-void
.end method

.method public final e()V
    .locals 0

    .prologue
    .line 29
    invoke-super {p0}, Lhgk;->e()V

    .line 30
    return-void
.end method

.method public onInitialize()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Lhgk;->onInitialize()V

    .line 15
    return-void
.end method

.method public onRelease()V
    .locals 0

    .prologue
    .line 19
    invoke-super {p0}, Lhgk;->onRelease()V

    .line 20
    return-void
.end method
