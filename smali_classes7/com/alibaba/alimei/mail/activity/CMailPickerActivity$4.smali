.class final Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$4;
.super Ljava/lang/Object;
.source "CMailPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

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
    .line 154
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$4;->a:Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;

    .line 1049
    iget-object v1, v0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    .line 1550
    iget-object v1, v1, Lacv;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 1049
    if-lez v1, :cond_0

    .line 1052
    iget-object v1, v0, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;->a:Lacv;

    invoke-virtual {v1}, Lacv;->j()Ljava/util/List;

    move-result-object v1

    .line 1053
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1056
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.workapp.msg.send"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1057
    new-instance v3, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;

    invoke-direct {v3, v0, v2}, Lcom/alibaba/alimei/mail/activity/CMailPickerActivity$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailPickerActivity;Landroid/content/Intent;)V

    invoke-static {v1, v3}, Lacg;->a(Ljava/util/List;Lcma;)V

    .line 155
    :cond_0
    return-void
.end method
