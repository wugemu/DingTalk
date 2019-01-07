.class public abstract Lch;
.super Lcg;
.source "BaseFragmentActivityApi16.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field protected mStartedActivityFromFragment:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcg;-><init>()V

    return-void
.end method


# virtual methods
.method public startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .prologue
    .line 49
    iget-boolean v0, p0, Lch;->mStartedActivityFromFragment:Z

    if-nez v0, :cond_0

    .line 50
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 51
    invoke-static {p2}, Lch;->checkForValidRequestCode(I)V

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcg;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 55
    return-void
.end method

.method public startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/RequiresApi;
        value = 0x10
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 64
    iget-boolean v0, p0, Lch;->mStartedIntentSenderFromFragment:Z

    if-nez v0, :cond_0

    .line 65
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 66
    invoke-static {p2}, Lch;->checkForValidRequestCode(I)V

    .line 69
    :cond_0
    invoke-super/range {p0 .. p7}, Lcg;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 71
    return-void
.end method