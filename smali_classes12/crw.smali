.class public abstract Lcrw;
.super Landroid/text/style/ClickableSpan;
.source "NoUnderlineClickSpan.java"


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "linkColor"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 14
    iput p1, p0, Lcrw;->a:I

    .line 15
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 19
    iget v0, p0, Lcrw;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 20
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 21
    return-void
.end method
