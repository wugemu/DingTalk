.class public Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;
.super Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;
.source "OnlineEditFinishRemindDialog.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field private final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;-><init>(Landroid/app/Activity;)V

    .line 23
    const-string/jumbo v0, "OnlineEditFinishRemindDialog"

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->k:Ljava/lang/String;

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;)V
    .locals 11
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;

    .prologue
    const/4 v6, 0x0

    .line 22
    .line 2081
    new-instance v10, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$3;

    invoke-direct {v10, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$3;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;)V

    .line 2100
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 2101
    const-class v1, Lcma;

    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v10, v1, v0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    move-object v10, v0

    .line 2103
    :cond_0
    invoke-static {}, Lgon;->a()Lgon;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->b:Ljava/lang/String;

    .line 2104
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lfzs$h;->dt_space_online_edit_complete_remind_tip:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2566
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v10}, Lgon;->a(Ljava/lang/String;ILjava/lang/String;JLjava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcma;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 52
    invoke-super {p0}, Lcom/alibaba/dingtalk/cspace/widget/RemindDialog;->a()V

    .line 53
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->g:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_online_edit_save_complete_tip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 54
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->h:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_online_edit_save_complete_remind_message:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->h:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 56
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->i:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_online_edit_remind_cancel:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 57
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->j:Landroid/widget/TextView;

    sget v1, Lfzs$h;->dt_space_online_edit_remind_sure:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 58
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->j:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$1;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$1;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$2;

    invoke-direct {v1, p0}, Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog$2;-><init>(Lcom/alibaba/dingtalk/cspace/widget/OnlineEditFinishRemindDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
