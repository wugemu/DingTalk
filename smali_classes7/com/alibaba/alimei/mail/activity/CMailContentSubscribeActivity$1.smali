.class final Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;
.super Ljava/lang/Object;
.source "CMailContentSubscribeActivity.java"

# interfaces
.implements Lcma;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;
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
        "Laeg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onDataReceived(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 91
    check-cast p1, Laeg;

    .line 1094
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1098
    if-eqz p1, :cond_1

    .line 1099
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    move-result-object v0

    invoke-interface {p1}, Laeg;->a()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->a(Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    .line 1101
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "s1"    # Ljava/lang/String;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$1;->a:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    :goto_0
    return-void

    .line 116
    :cond_0
    invoke-static {p1, p2}, Lcms;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onProgress(Ljava/lang/Object;I)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;
    .param p2, "i"    # I

    .prologue
    .line 108
    return-void
.end method
