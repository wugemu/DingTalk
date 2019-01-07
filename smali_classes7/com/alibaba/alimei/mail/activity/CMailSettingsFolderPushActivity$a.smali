.class final Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;
.super Lrq;
.source "CMailSettingsFolderPushActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrq",
        "<",
        "Lcom/alibaba/alimei/sdk/model/FolderModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;


# direct methods
.method public constructor <init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;Landroid/content/Context;I)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "layoutRes"    # I

    .prologue
    .line 267
    iput-object p1, p0, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;->a:Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity;

    .line 268
    invoke-direct {p0, p2, p3}, Lrq;-><init>(Landroid/content/Context;I)V

    .line 269
    return-void
.end method


# virtual methods
.method protected final synthetic a(Lrr;Ljava/lang/Object;)V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar7;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar7;->b(I)V

    .prologue
    .line 265
    check-cast p2, Lcom/alibaba/alimei/sdk/model/FolderModel;

    .line 1273
    if-eqz p2, :cond_0

    .line 1274
    sget v0, Laxo$f;->title:I

    .line 2100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1274
    check-cast v0, Landroid/widget/TextView;

    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lrx;->a(Landroid/content/Context;Lcom/alibaba/alimei/framework/model/AbsBaseModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1275
    sget v0, Laxo$f;->toggle:I

    .line 3100
    invoke-virtual {p1, v0}, Lrr;->a(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    check-cast v0, Landroid/widget/ToggleButton;

    .line 1276
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1277
    iget-boolean v1, p2, Lcom/alibaba/alimei/sdk/model/FolderModel;->isPush:Z

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1278
    new-instance v1, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;

    invoke-direct {v1, p0, p2}, Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a$1;-><init>(Lcom/alibaba/alimei/mail/activity/CMailSettingsFolderPushActivity$a;Lcom/alibaba/alimei/sdk/model/FolderModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 265
    :cond_0
    return-void
.end method
