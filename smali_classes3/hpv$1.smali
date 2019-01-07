.class final Lhpv$1;
.super Ljava/lang/Object;
.source "DakaPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhpv;->a(Landroid/widget/TextView;Lhpu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhpu;

.field final synthetic b:Lhpv;


# direct methods
.method constructor <init>(Lhpv;Lhpu;)V
    .locals 0
    .param p1, "this$0"    # Lhpv;

    .prologue
    .line 168
    iput-object p1, p0, Lhpv$1;->b:Lhpv;

    iput-object p2, p0, Lhpv$1;->a:Lhpu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 171
    const-string/jumbo v1, "lightapp"

    const-string/jumbo v2, "DakaPopupWindow"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "DakaPopupWindow onActionClick type: "

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lhpv$1;->a:Lhpu;

    iget-object v5, v5, Lhpu;->c:Ljava/lang/String;

    .line 172
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    invoke-static {v3}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lhpv$1;->a:Lhpu;

    iget-object v1, v1, Lhpu;->c:Ljava/lang/String;

    const-string/jumbo v2, "1"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lhpv$1;->a:Lhpu;

    iget-object v1, v1, Lhpu;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 176
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 177
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v1

    check-cast v0, Landroid/app/Activity;

    .end local v0    # "context":Landroid/content/Context;
    iget-object v2, p0, Lhpv$1;->a:Lhpu;

    iget-object v2, v2, Lhpu;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 185
    :cond_0
    :goto_0
    iget-object v1, p0, Lhpv$1;->b:Lhpv;

    invoke-virtual {v1}, Lhpv;->dismiss()V

    .line 186
    return-void

    .line 180
    :cond_1
    iget-object v1, p0, Lhpv$1;->a:Lhpu;

    iget-object v1, v1, Lhpu;->c:Ljava/lang/String;

    const-string/jumbo v2, "2"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lhpv$1;->b:Lhpv;

    invoke-static {v1}, Lhpv;->a(Lhpv;)Landroid/view/View$OnClickListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lhpv$1;->b:Lhpv;

    invoke-static {v1}, Lhpv;->a(Lhpv;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
