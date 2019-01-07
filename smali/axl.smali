.class public final Laxl;
.super Lawy;
.source "UnknownEventHolder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lawy;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 19
    sget v0, Laow$e;->calendar_list_item_unknown_event:I

    return v0
.end method

.method public final a(Z)V
    .locals 0
    .param p1, "isLastCommon"    # Z

    .prologue
    .line 36
    return-void
.end method

.method final b()V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public final b(Z)V
    .locals 0
    .param p1, "isLast"    # Z

    .prologue
    .line 40
    return-void
.end method

.method final c()V
    .locals 0

    .prologue
    .line 28
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 44
    invoke-static {}, Lccr;->a()Lccr;

    move-result-object v0

    invoke-virtual {v0}, Lccr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcms;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lgvm;->a()Lgvm;

    move-result-object v0

    iget-object v1, p0, Laxl;->b:Landroid/app/Activity;

    const-string/jumbo v2, "https://h5.dingtalk.com/base/download.html"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lgvm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method
