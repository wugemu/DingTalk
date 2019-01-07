.class final Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;
.super Ljava/lang/Object;
.source "DingNewTabFragmentImpl.java"

# interfaces
.implements Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

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
    .line 244
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->k(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)V

    .line 245
    const-string/jumbo v0, "pref_key_ding_new_tab_add_tips"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 247
    if-eqz p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

    move-result-object v0

    sget v1, Laxp$i;->icon_ding_ding_fill:I

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;->setIconFontResId(I)V

    .line 1102
    const-string/jumbo v0, "ding_dinglist_create_click"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 253
    :goto_0
    return-void

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v0, v0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-static {v0}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->j(Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;)Lcom/alibaba/android/ding/widget/floatingmenu/DingFloatingActionMenu;

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

    .line 257
    if-eqz p1, :cond_0

    .line 258
    new-instance v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;-><init>()V

    .line 259
    .local v0, "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    invoke-virtual {v0, v3}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a(I)Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;

    .line 260
    iget-object v1, p0, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3$1;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;

    iget-object v1, v1, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl$3;->a:Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;

    invoke-virtual {v1}, Lcom/alibaba/android/ding/v2/DingNewTabFragmentImpl;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    .line 1922
    iget-object v2, v0, Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;->a:Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .line 2786
    invoke-static {v1, v2, v3}, Lbjv;->a(Landroid/content/Context;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;I)V

    .line 3106
    const-string/jumbo v1, "ding_dinglist_create_ding_click"

    invoke-static {v1}, Lbjz;->a(Ljava/lang/String;)V

    .line 263
    .end local v0    # "builder":Lcom/alibaba/android/ding/base/objects/DingCreateInfo$a;
    :cond_0
    return-void
.end method
