.class public Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;
.super Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;
.source "CircleCoverSelectDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;-><init>(Landroid/content/Context;)V

    .line 25
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 26
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->a:Landroid/app/Activity;

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v4, 0x1

    .line 44
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->b:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 45
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->a:Landroid/app/Activity;

    .line 1051
    invoke-static {v0}, Lcms;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1052
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1053
    const-string/jumbo v2, "album_single"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1054
    const-string/jumbo v2, "album_need_crop"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1055
    const-string/jumbo v2, "album_need_preview"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1056
    const-string/jumbo v2, "is_start_for_result"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1057
    invoke-static {}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->k()Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;

    move-result-object v2

    const/16 v3, 0x201

    invoke-virtual {v2, v0, v3, v1}, Lcom/alibaba/dingtalk/launcherbase/MainModuleInterface;->a(Landroid/app/Activity;ILandroid/os/Bundle;)V

    .line 46
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->dismiss()V

    .line 48
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDDialog;->onCreate(Landroid/os/Bundle;)V

    .line 33
    sget v0, Lbpu$e;->circle_cover_select_dialog:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->setContentView(I)V

    .line 1038
    sget v0, Lbpu$d;->circle_dialog_photo_from_album:I

    invoke-virtual {p0, v0}, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->b:Landroid/view/View;

    .line 1039
    iget-object v0, p0, Lcom/alibaba/android/dingtalk/circle/dialog/CircleCoverSelectDialog;->b:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    return-void
.end method
