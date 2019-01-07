.class public final Ljqm;
.super Ljava/lang/Object;
.source "WMLPagePromptFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/app/Activity;)Ljqk;
    .locals 2
    .param p0, "context"    # Landroid/app/Activity;

    .prologue
    .line 44
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 1149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 44
    if-eqz v1, :cond_0

    .line 45
    invoke-static {}, Ljpo;->a()Ljpo;

    move-result-object v1

    .line 2149
    iget-object v1, v1, Ljpo;->c:Ljpo$a;

    iget-object v1, v1, Ljpo$a;->h:Ljpz;

    .line 45
    invoke-interface {v1, p0}, Ljpz;->getErrorPrompt(Landroid/app/Activity;)Ljqk;

    move-result-object v0

    .line 46
    .local v0, "errorPrompt":Ljqk;
    if-eqz v0, :cond_0

    .line 50
    .end local v0    # "errorPrompt":Ljqk;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
