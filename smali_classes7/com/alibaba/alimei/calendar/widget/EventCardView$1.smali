.class public final Lcom/alibaba/alimei/calendar/widget/EventCardView$1;
.super Ljava/lang/Object;
.source "EventCardView.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/calendar/widget/EventCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/List",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alibaba/alimei/calendar/widget/EventCardView;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/calendar/widget/EventCardView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/calendar/widget/EventCardView;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->b:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    iput-object p2, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 1
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 219
    const-string/jumbo v0, "EventCardView"

    invoke-static {v0, p1}, Lafg;->a(Ljava/lang/String;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V

    .line 220
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x0

    .line 200
    check-cast p1, Ljava/util/List;

    .line 1203
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1204
    :cond_0
    :goto_0
    return-void

    .line 1206
    :cond_1
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->b:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->b:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-virtual {v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;

    .line 1208
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/activity/MailBaseActivity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->a:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1210
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->b:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->a(Lcom/alibaba/alimei/calendar/widget/EventCardView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/alibaba/alimei/calendar/widget/EventCardView$1;->b:Lcom/alibaba/alimei/calendar/widget/EventCardView;

    invoke-static {v0}, Lcom/alibaba/alimei/calendar/widget/EventCardView;->b(Lcom/alibaba/alimei/calendar/widget/EventCardView;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method
