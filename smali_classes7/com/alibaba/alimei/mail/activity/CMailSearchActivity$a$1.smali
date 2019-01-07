.class final Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;
.super Ljava/lang/Object;
.source "CMailSearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 315
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Landroid/widget/SearchView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a$1;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->j(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)Landroid/widget/SearchView;

    move-result-object v1

    invoke-static {v0, v1}, Lcms;->d(Landroid/content/Context;Landroid/view/View;)V

    .line 318
    :cond_0
    return-void
.end method
