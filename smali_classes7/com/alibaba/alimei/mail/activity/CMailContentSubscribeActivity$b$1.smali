.class final Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;
.super Ljava/lang/Object;
.source "CMailContentSubscribeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lzt;

.field final synthetic b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;Lzt;)V
    .locals 0
    .param p1, "this$1"    # Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;->b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;

    iput-object p2, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;->a:Lzt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 179
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;->b:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;

    iget-object v0, v0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b;->e:Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;

    invoke-static {v0}, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;->d(Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity;)Laeg;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailContentSubscribeActivity$b$1;->a:Lzt;

    invoke-interface {v0, v1}, Laeg;->a(Lzt;)V

    .line 180
    return-void
.end method
