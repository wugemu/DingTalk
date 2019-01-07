.class public Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity;
.super Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;
.source "FilesHelperActivity.java"


# instance fields
.field private final Z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkim/activities/ChatMsgActivity;-><init>()V

    .line 42
    const/4 v0, 0x2

    iput v0, p0, Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity;->Z:I

    return-void
.end method


# virtual methods
.method protected final A()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected final o()Z
    .locals 1

    .prologue
    .line 50
    invoke-static {p0}, Lcms;->k(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 65
    sget v1, Lctk$i;->title_activity_settings:I

    invoke-interface {p1, v2, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 66
    .local v0, "menuSetting":Landroid/view/MenuItem;
    sget v1, Lctk$e;->menu_overflow:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 67
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 69
    const/4 v1, 0x1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    invoke-static {}, Lcom/pnf/dex2jar8;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar8;->b(I)V

    .prologue
    .line 74
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 83
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 1021
    :sswitch_0
    invoke-static {}, Ldjl;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    const-string/jumbo v0, "NAVIGATOR"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/navigator/Navigator;

    invoke-interface {v0, p0}, Lcom/alibaba/doraemon/navigator/Navigator;->from(Landroid/content/Context;)Lcom/alibaba/doraemon/navigator/Navigator;

    move-result-object v0

    const-string/jumbo v1, "https://qr.dingtalk.com/fileshelper/settings.html"

    new-instance v2, Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity$1;

    invoke-direct {v2, p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity$1;-><init>(Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/navigator/Navigator;->to(Ljava/lang/String;Lcom/alibaba/doraemon/navigator/IntentRewriter;)V

    goto :goto_0

    .line 1038
    :cond_0
    invoke-static {}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->a()Lcom/alibaba/android/dingtalkim/base/IMInterface;

    move-result-object v0

    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity;->an()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/alibaba/android/dingtalkim/base/IMInterface;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :sswitch_1
    invoke-virtual {p0}, Lcom/alibaba/android/dingtalkim/activities/FilesHelperActivity;->finish()V

    goto :goto_0

    .line 74
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method
