.class public Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CircleCoverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->a:Landroid/app/Activity;

    .line 24
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->dismiss()V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbpu$d;->text:I

    if-ne v0, v1, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->a:Landroid/app/Activity;

    .line 1044
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/dingtalk/circle/activity/CoverListActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1045
    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 41
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 30
    sget v0, Lbpu$e;->circle_change_cover_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->setContentView(I)V

    .line 32
    sget v0, Lbpu$d;->text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
