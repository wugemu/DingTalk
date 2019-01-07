.class public Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;
.super Landroid/support/v7/app/AlertDialog;
.source "GuideDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$b;,
        Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;
    }
.end annotation


# instance fields
.field public a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbxi;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 40
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->c:Landroid/app/Activity;

    .line 41
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic b(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->c:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 82
    :try_start_0
    invoke-super {p0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 73
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 74
    .local v0, "id":I
    sget v1, Lbtp$e;->tv_close:I

    if-ne v0, v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->dismiss()V

    .line 77
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/support/v7/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 1058
    sget v0, Lbtp$f;->layout_dialog_guide:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->setContentView(I)V

    .line 1059
    sget v0, Lbtp$e;->list_view:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 1060
    if-eqz v0, :cond_0

    .line 1061
    new-instance v1, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;-><init>(Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;B)V

    iput-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

    .line 1062
    iget-object v1, p0, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->a:Lcom/alibaba/android/dingtalk/live/guide/GuideDialog$a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1065
    :cond_0
    sget v0, Lbtp$e;->tv_close:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/live/guide/GuideDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1066
    if-eqz v0, :cond_1

    .line 1067
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    :cond_1
    return-void
.end method
