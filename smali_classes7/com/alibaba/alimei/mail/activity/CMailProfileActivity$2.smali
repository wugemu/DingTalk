.class final Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;
.super Ljava/lang/Object;
.source "CMailProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 85
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->b(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity$2;->a:Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;

    invoke-static {v2}, Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailProfileActivity;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lacg;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 86
    return-void
.end method
