.class final Lcom/alibaba/alimei/mail/activity/MailDetailActivity$21;
.super Ljava/lang/Object;
.source "MailDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MailDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    .prologue
    .line 679
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$21;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 683
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MailDetailActivity$21;->a:Lcom/alibaba/alimei/mail/activity/MailDetailActivity;

    invoke-static {v1}, Lcom/alibaba/alimei/mail/activity/MailDetailActivity;->b(Lcom/alibaba/alimei/mail/activity/MailDetailActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 684
    .local v0, "mailContentFileDir":Ljava/io/File;
    invoke-static {v0}, Lkpt;->a(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 688
    .end local v0    # "mailContentFileDir":Ljava/io/File;
    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method
