.class public abstract Lcxr$a;
.super Landroid/text/style/ClickableSpan;
.source "SystemMsgViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcxr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "a"
.end annotation


# instance fields
.field private a:I

.field final synthetic g:Lcxr;


# direct methods
.method public constructor <init>(Lcxr;I)V
    .locals 0
    .param p1, "this$0"    # Lcxr;
    .param p2, "color"    # I

    .prologue
    .line 219
    iput-object p1, p0, Lcxr$a;->g:Lcxr;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 220
    iput p2, p0, Lcxr$a;->a:I

    .line 221
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 224
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 225
    iget v0, p0, Lcxr$a;->a:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 227
    return-void
.end method
