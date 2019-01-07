.class final Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;
.super Ljava/lang/Object;
.source "MailDetailFragment.java"

# interfaces
.implements Lcom/alibaba/wukong/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alibaba/wukong/Callback",
        "<",
        "Lcom/alibaba/wukong/im/Conversation;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    .prologue
    .line 1686
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "code"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1696
    return-void
.end method

.method public final bridge synthetic onProgress(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 1686
    return-void
.end method

.method public final synthetic onSuccess(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 1686
    check-cast p1, Lcom/alibaba/wukong/im/Conversation;

    .line 2689
    iget-object v0, p0, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment$10;->a:Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;

    invoke-static {v0, p1}, Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;->a(Lcom/alibaba/alimei/mail/fragment/MailDetailFragment;Lcom/alibaba/wukong/im/Conversation;)V

    .line 1686
    return-void
.end method
