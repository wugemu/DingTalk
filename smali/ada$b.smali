.class Lada$b;
.super Lada$a;
.source "MailParticipantAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lada;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field protected d:Landroid/widget/TextView;

.field final synthetic e:Lada;


# direct methods
.method public constructor <init>(Lada;)V
    .locals 1
    .param p1, "this$0"    # Lada;

    .prologue
    .line 314
    iput-object p1, p0, Lada$b;->e:Lada;

    .line 315
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lada$a;-><init>(I)V

    .line 316
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 320
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Laxo$g;->alm_cmail_fragment_mail_participant_divider:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 321
    .local v0, "view":Landroid/view/View;
    sget v1, Laxo$f;->txtDivider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lada$b;->d:Landroid/widget/TextView;

    .line 322
    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 327
    const-string/jumbo v0, "from"

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lada$b;->d:Landroid/widget/TextView;

    sget v1, Laxo$i;->alm_cmail_recipeint_type_from:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 334
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string/jumbo v0, "to"

    iget-object v1, p2, Lcom/alibaba/alimei/sdk/model/MailParticipantsModel;->recipientType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 330
    iget-object v1, p0, Lada$b;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lada$b;->e:Lada;

    invoke-static {v0}, Lada;->a(Lada;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Laxo$i;->dt_mail_separated_title_to:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    sget v0, Laxo$i;->alm_cmail_recipeint_type_to:I

    goto :goto_1

    .line 332
    :cond_2
    iget-object v0, p0, Lada$b;->d:Landroid/widget/TextView;

    sget v1, Laxo$i;->alm_cmail_recipeint_type_cc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method
