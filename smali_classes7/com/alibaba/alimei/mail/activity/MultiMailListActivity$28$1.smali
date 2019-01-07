.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28$1;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;

    .prologue
    .line 1629
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;

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
    .line 1632
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$28;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->u(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1633
    const-string/jumbo v0, "pref_key_mail_folder_move_guide"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcpk;->b(Ljava/lang/String;Z)V

    .line 1634
    return-void
.end method
