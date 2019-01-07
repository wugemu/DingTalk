.class final Lfcm$a;
.super Landroid/text/style/ClickableSpan;
.source "BaseViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Z

.field b:J

.field final synthetic c:Lfcm;


# direct methods
.method constructor <init>(Lfcm;JZ)V
    .locals 2
    .param p2, "uid"    # J
    .param p4, "isFromLike"    # Z

    .prologue
    .line 1364
    iput-object p1, p0, Lfcm$a;->c:Lfcm;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 1365
    iput-wide p2, p0, Lfcm$a;->b:J

    .line 1366
    const/4 v0, 0x1

    iput-boolean v0, p0, Lfcm$a;->a:Z

    .line 1367
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "widget"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 1371
    iget-object v0, p0, Lfcm$a;->c:Lfcm;

    iget-wide v2, p0, Lfcm$a;->b:J

    invoke-virtual {v0, v2, v3}, Lfcm;->a(J)V

    .line 1372
    return-void
.end method

.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1377
    return-void
.end method
