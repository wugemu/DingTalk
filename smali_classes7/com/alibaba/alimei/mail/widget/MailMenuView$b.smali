.class final Lcom/alibaba/alimei/mail/widget/MailMenuView$b;
.super Ljava/lang/Object;
.source "MailMenuView.java"

# interfaces
.implements Lxv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/widget/MailMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lxv",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/alibaba/alimei/mail/widget/MailMenuView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/widget/MailMenuView;)V
    .locals 1
    .param p1, "view"    # Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .prologue
    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 652
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$b;->a:Ljava/lang/ref/WeakReference;

    .line 653
    return-void
.end method


# virtual methods
.method public final onException(Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 3
    .param p1, "tr"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 670
    const-string/jumbo v0, "MailMenuView"

    const-string/jumbo v1, "query mail unread count fail"

    invoke-virtual {p1}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 648
    check-cast p1, Ljava/util/HashMap;

    .line 2656
    iget-object v0, p0, Lcom/alibaba/alimei/mail/widget/MailMenuView$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/mail/widget/MailMenuView;

    .line 1662
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->f(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1663
    :cond_0
    :goto_0
    return-void

    .line 1665
    :cond_1
    invoke-static {v0}, Lcom/alibaba/alimei/mail/widget/MailMenuView;->b(Lcom/alibaba/alimei/mail/widget/MailMenuView;)Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;

    move-result-object v0

    .line 3144
    iput-object p1, v0, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->b:Ljava/util/Map;

    .line 3145
    invoke-virtual {v0}, Lcom/alibaba/alimei/mail/adapter/MailboxListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
