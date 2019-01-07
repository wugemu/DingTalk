.class final Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;
.super Ljava/lang/Object;
.source "CMailBaseSearchFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a(Lcom/alibaba/alimei/mail/widget/ComponentCircleButton;Lcom/alibaba/alimei/mail/search/mode/MailSearchHistoryModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;


# direct methods
.method constructor <init>(Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    .prologue
    .line 455
    iput-object p1, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iput p2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->a:I

    iput-object p3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 458
    const/4 v1, 0x0

    .line 459
    .local v1, "tab":I
    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->a:I

    packed-switch v2, :pswitch_data_0

    .line 476
    :goto_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    invoke-interface {v2, v1}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->a(I)V

    .line 478
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->u:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->b:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$a;->b(Ljava/lang/String;)V

    .line 481
    :cond_0
    iget-object v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->d:Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;

    iget-object v2, v2, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment;->a:Ljava/lang/String;

    invoke-static {v2}, Lpn;->a(Ljava/lang/String;)Lcom/alibaba/alimei/mail/search/api/MailSearchApi;

    move-result-object v0

    .line 482
    .local v0, "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    if-eqz v0, :cond_1

    .line 483
    iget v2, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->a:I

    iget-object v3, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/alibaba/alimei/mail/fragment/CMailBaseSearchFragment$4;->c:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/alibaba/alimei/mail/search/api/MailSearchApi;->saveHistory(ILjava/lang/String;Ljava/lang/String;Lxv;)V

    .line 485
    :cond_1
    return-void

    .line 463
    .end local v0    # "searchApi":Lcom/alibaba/alimei/mail/search/api/MailSearchApi;
    :pswitch_0
    const/4 v1, 0x1

    .line 464
    goto :goto_0

    .line 466
    :pswitch_1
    const/4 v1, 0x2

    .line 467
    goto :goto_0

    .line 469
    :pswitch_2
    const/4 v1, 0x3

    .line 470
    goto :goto_0

    .line 472
    :pswitch_3
    const/4 v1, 0x4

    goto :goto_0

    .line 459
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
