.class final Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;
.super Ljava/lang/Object;
.source "CMailConfigActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    .prologue
    .line 389
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 393
    .local v0, "email":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v1, v0}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 394
    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->o(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v3}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->p(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;

    invoke-static {v4}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->q(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;)Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailConfigActivity;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 395
    return-void
.end method
