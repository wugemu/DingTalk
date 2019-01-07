.class public abstract Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;
.super Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;
.source "BaseDingListOperationFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alibaba/android/ding/fragment/BaseMultipleModeFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;JLjava/util/List;ILcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;Lcma;)V
    .locals 3
    .param p0, "x0"    # Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;
    .param p1, "x1"    # J
    .param p3, "x2"    # Ljava/util/List;
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    .param p6, "x5"    # Lcma;

    .prologue
    .line 22
    .line 1056
    new-instance v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;

    invoke-direct {v1}, Lcom/alibaba/android/ding/data/object/RemindAgainObject;-><init>()V

    .line 1057
    iput-wide p1, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->dingId:J

    .line 1058
    iput-object p3, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->userIds:Ljava/util/List;

    .line 1059
    if-nez p5, :cond_0

    .line 1060
    sget-object p5, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->APP:Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;

    .line 1062
    .end local p5    # "x4":Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;
    :cond_0
    invoke-virtual {p5}, Lcom/alibaba/android/ding/base/objects/ObjectDing$TypeNotification;->getValue()I

    move-result v0

    iput v0, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->urgentLevel:I

    .line 1063
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->ignorePrevent:Z

    .line 1064
    iput p4, v1, Lcom/alibaba/android/ding/data/object/RemindAgainObject;->type:I

    .line 1065
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_1

    .line 1066
    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 1068
    :cond_1
    new-instance v0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;

    invoke-direct {v0, p0, p6}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$2;-><init>(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;Lcma;)V

    .line 1095
    invoke-static {}, Lbbp;->a()Lbbp;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lbbp;->a(Lcom/alibaba/android/ding/data/object/RemindAgainObject;Lcma;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected final a(JILjava/util/List;ILcma;)V
    .locals 9
    .param p1, "dingId"    # J
    .param p3, "remindType"    # I
    .param p5, "resTitle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p4, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .local p6, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/data/object/RemindAgainResultObject;>;"
    new-instance v7, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    .local v7, "builder":Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;
    invoke-virtual {v7, p5}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setTitle(I)Landroid/support/v7/app/AlertDialog$Builder;

    .line 36
    sget v8, Laxp$b;->ding_remind_type:I

    new-instance v0, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;

    const/4 v5, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment$1;-><init>(Lcom/alibaba/android/ding/fragment/BaseDingListOperationFragment;JLjava/util/List;ILcma;)V

    invoke-virtual {v7, v8, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 51
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->b(Z)Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 52
    return-void
.end method
