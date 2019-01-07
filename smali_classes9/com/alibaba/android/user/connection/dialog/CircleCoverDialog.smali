.class public Lcom/alibaba/android/user/connection/dialog/CircleCoverDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CircleCoverDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/alibaba/android/user/connection/dialog/CircleCoverDialog;->dismiss()V

    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lezg$h;->text:I

    if-ne v0, v1, :cond_0

    .line 39
    const/4 v0, 0x0

    .line 1044
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/alibaba/android/user/connection/activity/CoverListActivity;

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
    sget v0, Lezg$j;->connection_change_cover_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/dialog/CircleCoverDialog;->setContentView(I)V

    .line 32
    sget v0, Lezg$h;->text:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/user/connection/dialog/CircleCoverDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
