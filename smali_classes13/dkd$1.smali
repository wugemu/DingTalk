.class final Ldkd$1;
.super Ljava/lang/Object;
.source "MicroAPPNavigator.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldkd;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/util/ArrayList;

.field final synthetic c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field final synthetic d:Lcom/alibaba/wukong/im/Conversation;

.field final synthetic e:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

.field final synthetic f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;


# direct methods
.method constructor <init>([ILjava/util/ArrayList;Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Ldkd$1;->a:[I

    iput-object p2, p0, Ldkd$1;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Ldkd$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iput-object p4, p0, Ldkd$1;->d:Lcom/alibaba/wukong/im/Conversation;

    iput-object p5, p0, Ldkd$1;->e:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    iput-object p6, p0, Ldkd$1;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v3, 0x0

    .line 86
    iget-object v1, p0, Ldkd$1;->a:[I

    aput p2, v1, v3

    .line 87
    iget-object v1, p0, Ldkd$1;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Ldkd$1;->a:[I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 88
    .local v0, "orgEmployeeExtensionObject":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    iget-object v1, p0, Ldkd$1;->c:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v2, p0, Ldkd$1;->d:Lcom/alibaba/wukong/im/Conversation;

    const-string/jumbo v3, "chat_input_menu"

    iget-wide v4, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v6, p0, Ldkd$1;->e:Lcom/alibaba/dingtalk/oabase/models/MicroAPPObject;

    invoke-static/range {v1 .. v6}, Ldkg;->a(Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;Lcom/alibaba/wukong/im/Conversation;Ljava/lang/String;JLcom/alibaba/dingtalk/oabase/models/MicroAPPObject;)V

    .line 90
    iget-object v1, p0, Ldkd$1;->f:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 91
    return-void
.end method
