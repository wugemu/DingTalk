.class public Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "SpaceInfoDialog.java"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    sget v0, Lfzs$i;->CustomDialog:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public static a(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p0, "textView"    # Landroid/widget/TextView;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 78
    if-nez p0, :cond_0

    .line 88
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/16 v0, 0x8

    invoke-static {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    goto :goto_0

    .line 85
    :cond_1
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceDetailPageView;->a(Landroid/view/View;I)V

    .line 86
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 47
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->requestWindowFeature(I)Z

    .line 48
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v1, Lfzs$g;->cspace_info_dialog:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->setContentView(I)V

    .line 50
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 51
    .local v0, "window":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 52
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 54
    :cond_0
    sget v1, Lfzs$f;->tv_tip_title:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->a:Landroid/widget/TextView;

    .line 55
    sget v1, Lfzs$f;->text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->b:Landroid/widget/TextView;

    .line 56
    sget v1, Lfzs$f;->text1:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->c:Landroid/widget/TextView;

    .line 57
    sget v1, Lfzs$f;->textView:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->d:Landroid/widget/TextView;

    .line 58
    sget v1, Lfzs$f;->tv_text:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->e:Landroid/widget/TextView;

    .line 59
    sget v1, Lfzs$f;->btn_ok:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->f:Landroid/widget/TextView;

    .line 60
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;->f:Landroid/widget/TextView;

    new-instance v2, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog$1;

    invoke-direct {v2, p0}, Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/SpaceInfoDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method
