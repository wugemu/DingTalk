.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lafl$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Landroid/content/Context;Lafl;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 2134
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 2137
    const-string/jumbo v0, "pref_key_add_account_banner_show"

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2139
    invoke-static {v1}, Lafe;->b(Z)V

    .line 2140
    invoke-static {p1}, Lacg;->b(Landroid/content/Context;)V

    .line 2141
    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 2145
    const-string/jumbo v0, "pref_key_add_account_banner_show"

    invoke-static {v0, v2}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 2147
    const/4 v0, 0x1

    invoke-static {v0}, Lafe;->b(Z)V

    .line 2149
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    sget v1, Laxo$f;->add_account_guide_layout:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Landroid/view/View;)Landroid/view/View;

    .line 2150
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2152
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37$1;

    invoke-direct {v1, p0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37$1;-><init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2158
    return-void
.end method
