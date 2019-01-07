.class final Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;
.super Ljava/lang/Object;
.source "MultiMailListActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->g(Ljava/lang/String;)Lcma;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcma",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    .prologue
    .line 2234
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x1

    .line 2234
    .line 3238
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3242
    invoke-static {}, Lacp;->a()Lacp;

    invoke-static {}, Lacp;->b()V

    .line 3243
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3244
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    .line 3246
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->a:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 2256
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailListActivity$38;->b:Lcom/alibaba/alimei/mail/activity/MultiMailListActivity;

    invoke-static {v0}, Lajf;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2260
    :goto_0
    return-void

    .line 2259
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "progress"    # I

    .prologue
    .line 2252
    return-void
.end method
