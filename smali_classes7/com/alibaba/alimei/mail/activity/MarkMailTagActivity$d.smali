.class final Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;
.super Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;
.source "MarkMailTagActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 660
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    .line 661
    invoke-direct {p0, p2}, Lcom/alibaba/alimei/cmail/adapter/MultipleTypeAdapter;-><init>(Landroid/content/Context;)V

    .line 662
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 666
    instance-of v0, p1, Lcom/alibaba/alimei/sdk/model/MailTagModel;

    if-eqz v0, :cond_0

    .line 667
    const/4 v0, 0x0

    .line 671
    :goto_0
    return v0

    .line 668
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 669
    const/4 v0, 0x2

    goto :goto_0

    .line 671
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected final a(I)Lrs;
    .locals 3
    .param p1, "viewType"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v2, 0x0

    .line 687
    packed-switch p1, :pswitch_data_0

    .line 695
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V

    :goto_0
    return-object v0

    .line 689
    :pswitch_0
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$c;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V

    goto :goto_0

    .line 691
    :pswitch_1
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$b;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V

    goto :goto_0

    .line 693
    :pswitch_2
    new-instance v0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;

    iget-object v1, p0, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->a:Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;

    invoke-direct {v0, v1, v2}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$a;-><init>(Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity;B)V

    goto :goto_0

    .line 687
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final getViewTypeCount()I
    .locals 1

    .prologue
    .line 676
    const/4 v0, 0x3

    return v0
.end method

.method public final isEnabled(I)Z
    .locals 2
    .param p1, "position"    # I

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    const/4 v1, 0x1

    .line 681
    invoke-virtual {p0, p1}, Lcom/alibaba/alimei/mail/activity/MarkMailTagActivity$d;->getItemViewType(I)I

    move-result v0

    .line 682
    .local v0, "viewType":I
    if-eq v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
