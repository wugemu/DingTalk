.class public final Lftq;
.super Lfsd;
.source "NameCardInfosMultiLineInputViewHolder.java"

# interfaces
.implements Lfsf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfss;",
        ">;",
        "Lfsf",
        "<",
        "Lfse",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 17
    .line 1042
    new-instance v1, Lfse;

    invoke-direct {v1}, Lfse;-><init>()V

    .line 1043
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lfse;->a:Ljava/lang/Object;

    .line 1044
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfse;->b:Ljava/lang/Object;

    .line 17
    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 17
    check-cast p1, Lfss;

    .line 1027
    sget v0, Lezg$h;->name_card_infos_form_view:I

    invoke-virtual {p0, v0}, Lftq;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    iput-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    .line 1029
    if-eqz p1, :cond_0

    .line 1030
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    iget-object v1, p1, Lfss;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setLabelText(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    iget-object v1, p1, Lfss;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setHint(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setEnabled(Z)V

    .line 1033
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    iget-object v1, p1, Lfss;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setTag(Ljava/lang/Object;)V

    .line 1034
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    iget-object v1, p1, Lfss;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;->setText(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1036
    :cond_0
    iget-object v0, p0, Lftq;->b:Lcom/alibaba/android/dingtalkui/form/input/DtMultiLineInputFormView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lftq;->a(Landroid/view/View;Z)V

    goto :goto_0
.end method
