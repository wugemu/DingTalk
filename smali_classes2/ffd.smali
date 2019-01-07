.class public abstract Lffd;
.super Landroid/text/style/ClickableSpan;
.source "SpannableClickable.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    sget v0, Lezg$e;->color_8290AF:I

    iput v0, p0, Lffd;->a:I

    .line 27
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iget v1, p0, Lffd;->a:I

    invoke-static {v0, v1}, Ldp;->c(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lffd;->b:I

    .line 28
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "textColor"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 19
    sget v0, Lezg$e;->color_8290AF:I

    iput v0, p0, Lffd;->a:I

    .line 31
    iput p1, p0, Lffd;->b:I

    .line 32
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 37
    if-eqz p1, :cond_0

    .line 38
    iget v0, p0, Lffd;->b:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 39
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 40
    invoke-virtual {p1}, Landroid/text/TextPaint;->clearShadowLayer()V

    .line 42
    :cond_0
    return-void
.end method
