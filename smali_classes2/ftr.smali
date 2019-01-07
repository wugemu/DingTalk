.class public final Lftr;
.super Lfsd;
.source "NameCardInfosSelectViewHolder.java"

# interfaces
.implements Lfsf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lfsd",
        "<",
        "Lfst;",
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
.field private b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lfsd;-><init>(Landroid/view/View;)V

    .line 25
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
    .line 1066
    new-instance v1, Lfse;

    invoke-direct {v1}, Lfse;-><init>()V

    .line 1068
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1069
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lfse;->a:Ljava/lang/Object;

    .line 1072
    :cond_0
    iget-object v0, p0, Lftr;->c:Ljava/lang/String;

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
    const/4 v3, 0x0

    .line 18
    check-cast p1, Lfst;

    .line 1030
    if-eqz p1, :cond_3

    .line 1031
    sget v0, Lezg$h;->name_card_infos_form_view:I

    invoke-virtual {p0, v0}, Lftr;->a(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iput-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    .line 1032
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iget-object v1, p1, Lfst;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setLabelText(Ljava/lang/String;)V

    .line 1034
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    iget-object v1, p1, Lfst;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setTag(Ljava/lang/Object;)V

    .line 1035
    iget-object v0, p1, Lfst;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1036
    iget-object v0, p1, Lfst;->a:Ljava/lang/String;

    .line 1037
    iget-object v1, p1, Lfst;->a:Ljava/lang/String;

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1038
    iget-object v0, p1, Lfst;->a:Ljava/lang/String;

    const-string/jumbo v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1039
    aget-object v0, v0, v3

    .line 1041
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1042
    iget-object v1, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setText(Ljava/lang/String;)V

    .line 1049
    :goto_0
    iget-object v0, p1, Lfst;->a:Ljava/lang/String;

    iput-object v0, p0, Lftr;->c:Ljava/lang/String;

    .line 1050
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    new-instance v1, Lftr$1;

    invoke-direct {v1, p0, p1}, Lftr$1;-><init>(Lftr;Lfst;)V

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void

    .line 1044
    :cond_1
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_2
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_3
    iget-object v0, p0, Lftr;->b:Lcom/alibaba/android/dingtalkui/form/select/DtSelectTextFormView;

    invoke-static {v0, v3}, Lftr;->a(Landroid/view/View;Z)V

    .line 1060
    const/4 v0, 0x0

    iput-object v0, p0, Lftr;->c:Ljava/lang/String;

    goto :goto_1
.end method
