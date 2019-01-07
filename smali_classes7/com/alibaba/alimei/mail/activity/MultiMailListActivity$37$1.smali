.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37$1;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;

    .prologue
    .line 2152
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;

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
    .line 2155
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$37;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->w(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2156
    return-void
.end method
