.class final Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;
.super Ljava/lang/Object;
.source "DingTabFragmentImplV3.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    .prologue
    .line 246
    iput-object p1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 2
    .param p1, "opened"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 249
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->n(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)V

    .line 250
    const-string/jumbo v0, "pref_key_ding_new_tab_add_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v0

    sget v1, Laxp$i;->icon_ding_ding_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setIconFontResId(I)V

    .line 1102
    const-string/jumbo v0, "ding_dinglist_create_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-static {v0}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->m(Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v0

    sget v1, Laxp$i;->icon_add:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setIconFontResId(I)V

    goto :goto_0
.end method

.method public final b(Z)V
    .locals 4
    .param p1, "isCurrentOpened"    # Z

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 262
    if-eqz p1, :cond_0

    .line 263
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 264
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 265
    iget-object v1, p0, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3$1;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3$3;->a:Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v3/DingTabFragmentImplV3;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1922
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2786
    invoke-static {v1, v2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 3106
    const-string/jumbo v1, "ding_dinglist_create_ding_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 268
    .end local v0    # "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    :cond_0
    return-void
.end method
