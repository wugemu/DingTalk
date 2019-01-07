.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;
.super Ljava/lang/Object;
.source "CMailSettingsActivity.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iput-boolean p2, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 615
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->z(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 616
    const-string/jumbo v0, "mConversation.stayOnTop"

    invoke-static {v0, p1, p2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lrz;

    move-result-object v0

    .line 1045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 618
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 603
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 603
    .line 1606
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->z(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)V

    .line 1607
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v1

    iget-boolean v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1609
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->y(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lafe;->a(Z)V

    .line 1610
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15$1;->b:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity$15;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSettingsActivity;)Lrz;

    move-result-object v0

    .line 2045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 603
    return-void

    .line 1607
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
