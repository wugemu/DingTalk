.class final Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;
.super Ljava/lang/Object;
.source "CMailSignListActivity.java"

# interfaces
.implements Ladb$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    .prologue
    .line 202
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lacz$a;Z)V
    .locals 4
    .param p1, "sign"    # Lacz$a;
    .param p2, "isChecked"    # Z

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 206
    if-eqz p1, :cond_0

    .line 207
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    invoke-static {v0, p1, p2}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;Lacz$a;Z)V

    .line 208
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity$8;->a:Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;

    iget-wide v2, p1, Lacz$a;->a:J

    invoke-static {v0, v2, v3}, Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSignListActivity;J)J

    .line 210
    :cond_0
    return-void
.end method
