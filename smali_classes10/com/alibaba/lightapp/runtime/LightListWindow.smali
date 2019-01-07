.class public Lcom/alibaba/lightapp/runtime/LightListWindow;
.super Landroid/widget/ListPopupWindow;
.source "LightListWindow.java"

# interfaces
.implements Lcrh$a;


# instance fields
.field private a:Lcrh;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    .line 19
    if-eqz p1, :cond_0

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->b:Landroid/app/Activity;

    .line 23
    :cond_0
    return-void
.end method

.method private a()Landroid/app/Activity;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 25
    const/4 v0, 0x0

    .line 26
    .local v0, "activity":Landroid/app/Activity;
    iget-object v1, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->b:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 27
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->b:Landroid/app/Activity;

    .line 29
    :cond_0
    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 47
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 48
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    invoke-virtual {v0}, Lcrh;->a()V

    .line 52
    :cond_0
    return-void
.end method

.method public final onDismissRequest()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 63
    return-void
.end method

.method public show()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 38
    .line 1033
    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightListWindow;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcms;->c(Landroid/app/Activity;)Z

    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    invoke-super {p0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1055
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    if-nez v0, :cond_0

    .line 1056
    new-instance v0, Lcrh;

    invoke-direct {v0}, Lcrh;-><init>()V

    iput-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/alibaba/lightapp/runtime/LightListWindow;->a:Lcrh;

    invoke-direct {p0}, Lcom/alibaba/lightapp/runtime/LightListWindow;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcrh;->a(Landroid/app/Activity;Lcrh$a;)V

    .line 44
    :cond_1
    return-void
.end method
