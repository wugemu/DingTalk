.class public final Lftp;
.super Lfsd;
.source "NameCardInfosInputViewHolder.java"

# interfaces
.implements Lfsf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfsr;",
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
.field public b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 24
    return-void
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    .line 18
    .line 1059
    new-instance v1, Lfse;

    invoke-direct {v1}, Lfse;-><init>()V

    .line 1060
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lfse;->a:Ljava/lang/Object;

    .line 1061
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lfse;->b:Ljava/lang/Object;

    .line 18
    return-object v1
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar2;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar2;->b(I)V

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    check-cast p1, Lfsr;

    .line 1028
    sget v0, Lezg$h;->name_card_infos_form_view:I

    invoke-virtual {p0, v0}, Lftp;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iput-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    .line 1029
    if-eqz p1, :cond_3

    .line 1030
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-object v3, p1, Lfsr;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setLabelText(Ljava/lang/String;)V

    .line 1031
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-object v3, p1, Lfsr;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setHint(Ljava/lang/String;)V

    .line 1032
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-object v3, p1, Lfsr;->d:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setTag(Ljava/lang/Object;)V

    .line 1033
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-object v3, p1, Lfsr;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setText(Ljava/lang/String;)V

    .line 1036
    iget-object v0, p1, Lfsr;->f:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 1037
    new-instance v0, Lftp$1;

    invoke-direct {v0, p0}, Lftp$1;-><init>(Lftp;)V

    iput-object v0, p1, Lfsr;->f:Landroid/view/View$OnClickListener;

    .line 1044
    :cond_0
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-object v3, p1, Lfsr;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1047
    iget-object v3, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    iget-boolean v0, p1, Lfsr;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setFocusable(Z)V

    .line 1050
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 1047
    goto :goto_0

    .line 1050
    :cond_2
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;->setEnabled(Z)V

    goto :goto_1

    .line 1053
    :cond_3
    iget-object v0, p0, Lftp;->b:Lcom/alibaba/android/dingtalkui/form/input/DtSingleLineInputFormView;

    invoke-static {v0, v2}, Lftp;->a(Landroid/view/View;Z)V

    goto :goto_1
.end method
