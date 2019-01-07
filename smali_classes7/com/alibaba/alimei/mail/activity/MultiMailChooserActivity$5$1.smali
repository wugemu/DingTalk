.class final Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;
.super Ljava/lang/Object;
.source "MultiMailChooserActivity.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Lxv$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 4
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 342
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->dismissLoadingDialog()V

    .line 343
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)Lrz;

    move-result-object v0

    .line 1045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 344
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 330
    .line 1334
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->b(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->dismissLoadingDialog()V

    .line 1336
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5$1;->a:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity$5;->b:Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;->a(Lcom/alibaba/alimei/mail/activity/MultiMailChooserActivity;)Lrz;

    move-result-object v0

    .line 2045
    const-wide/16 v2, -0x1

    iput-wide v2, v0, Lrz;->a:J

    .line 330
    return-void
.end method
