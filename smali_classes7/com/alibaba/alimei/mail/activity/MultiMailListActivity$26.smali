.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lcom/alibaba/alimei/mail/fragment/CMailMainFragment$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;
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
    .line 1483
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Z)V

    .line 1487
    return-void
.end method

.method public final a(II)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "total"    # I

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;II)V

    .line 1492
    return-void
.end method

.method public final a(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$26;->a:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Z)V

    .line 1497
    return-void
.end method
