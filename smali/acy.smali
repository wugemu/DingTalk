.class public final Lacy;
.super Lada;
.source "MailMeetingParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lacy$b;,
        Lacy$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lada;-><init>(Landroid/app/Activity;)V

    .line 39
    return-void
.end method

.method static synthetic a(Lacy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacy;

    .prologue
    .line 35
    iget-object v0, p0, Lacy;->e:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lacy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lacy;

    .prologue
    .line 35
    iget-object v0, p0, Lacy;->e:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lacy;->getItemViewType(I)I

    move-result v3

    .line 44
    .local v3, "viewType":I
    const/4 v0, 0x0

    .line 46
    .local v0, "holder":Lada$a;
    if-eqz p2, :cond_1

    .line 47
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .line 48
    .local v2, "tag":Ljava/lang/Object;
    instance-of v4, v2, Lada$a;

    if-eqz v4, :cond_0

    move-object v0, v2

    .line 49
    check-cast v0, Lada$a;

    .line 50
    iget v4, v0, Lada$a;->b:I

    if-eq v3, v4, :cond_1

    .line 51
    const/4 v0, 0x0

    .line 55
    :cond_0
    const/4 p2, 0x0

    .line 60
    .end local v2    # "tag":Ljava/lang/Object;
    :cond_1
    if-eqz p2, :cond_2

    if-nez v0, :cond_3

    .line 61
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 67
    new-instance v0, Lacy$b;

    .end local v0    # "holder":Lada$a;
    invoke-direct {v0, p0}, Lacy$b;-><init>(Lacy;)V

    .line 71
    .restart local v0    # "holder":Lada$a;
    :goto_0
    iget-object v4, p0, Lacy;->e:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lada$a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :cond_3
    iput-object p0, v0, Lada$a;->c:Lada;

    .line 78
    iget-object v4, p0, Lacy;->d:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    .line 79
    .local v1, "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    const-string/jumbo v4, "from"

    iget-object v5, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 80
    const-string/jumbo v4, "read"

    iput-object v4, v1, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->status:Ljava/lang/String;

    .line 82
    :cond_4
    iget-object v4, p0, Lacy;->e:Landroid/content/Context;

    invoke-virtual {v0, v4, v1}, Lada$a;->a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V

    .line 84
    return-object p2

    .line 63
    .end local v1    # "model":Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;
    :pswitch_0
    new-instance v0, Lacy$a;

    .end local v0    # "holder":Lada$a;
    invoke-direct {v0, p0}, Lacy$a;-><init>(Lacy;)V

    .line 64
    .restart local v0    # "holder":Lada$a;
    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
