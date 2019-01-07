.class final Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;
.super Ljava/lang/Object;
.source "TeleCallSelectMemberActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic b:Z

.field final synthetic c:J

.field final synthetic d:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;ZJ)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    .prologue
    .line 2111
    iput-object p1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->d:Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity;

    iput-object p2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->b:Z

    iput-wide p4, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2115
    iget-object v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->a:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 2117
    new-instance v0, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;

    invoke-direct {v0}, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;-><init>()V

    .line 2118
    .local v0, "smsModel":Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;
    iget-boolean v1, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->b:Z

    if-eqz v1, :cond_1

    .line 2119
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;->USER_ACTIVE:Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;->smsType:Ljava/lang/Integer;

    .line 2123
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;->recvUidList:Ljava/util/List;

    .line 2124
    iget-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;->recvUidList:Ljava/util/List;

    iget-wide v2, p0, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    invoke-static {}, Leyc;->a()Leyc;

    move-result-object v2

    new-instance v3, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14$1;

    invoke-direct {v3, p0}, Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14$1;-><init>(Lcom/alibaba/android/teleconf/activities/TeleCallSelectMemberActivity$14;)V

    .line 2838
    if-nez v0, :cond_2

    .line 2843
    :cond_0
    :goto_1
    return-void

    .line 2121
    :cond_1
    sget-object v1, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;->APP_UPGRADE:Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;

    invoke-virtual {v1}, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsTypeEnum;->valueOf()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;->smsType:Ljava/lang/Integer;

    goto :goto_0

    .line 2841
    :cond_2
    const-class v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;

    .line 2842
    if-eqz v1, :cond_0

    .line 2845
    new-instance v4, Leyc$11;

    invoke-direct {v4, v2, v3}, Leyc$11;-><init>(Leyc;Leyo$d;)V

    invoke-interface {v1, v0, v4}, Lcom/alibaba/android/teleconf/sdk/idl/service/ConferenceIService;->sendSms(Lcom/alibaba/android/teleconf/sdk/idl/model/SmsModel;Liyv;)V

    goto :goto_1
.end method
