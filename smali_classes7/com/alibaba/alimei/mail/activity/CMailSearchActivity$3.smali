.class final Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;
.super Ljava/lang/Object;
.source "CMailSearchActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 221
    iget-object v0, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity$3;->a:Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;

    .line 1226
    iget-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->b:Ljava/lang/String;

    .line 1227
    iget-object v1, v1, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->b:Ljava/lang/String;

    .line 221
    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;->a(Lcom/alibaba/alimei/mail/activity/CMailSearchActivity;Ljava/lang/String;)V

    .line 222
    return-void
.end method
