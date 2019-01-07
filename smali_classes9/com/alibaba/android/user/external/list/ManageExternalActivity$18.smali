.class final Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;
.super Ljava/lang/Object;
.source "ManageExternalActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/user/external/list/ManageExternalActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

.field final synthetic c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/List;Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    .prologue
    .line 1312
    iput-object p1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    iput-object p2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/4 v6, 0x0

    .line 1315
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->a:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1316
    .local v0, "o":Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;
    if-eqz v0, :cond_2

    iget-wide v2, v0, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    .line 1317
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1, v0}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    .line 1318
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->y(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;

    move-result-object v2

    iget-wide v2, v2, Lcom/alibaba/android/dingtalk/userbase/model/OrgEmployeeExtensionObject;->orgId:J

    invoke-static {v1, v2, v3}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;J)J

    .line 1319
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->z(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lfnr;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lfnr;->a(J)V

    .line 1320
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/List;)Ljava/util/List;

    .line 1321
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1, v6}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->a(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 1322
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1323
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1324
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->b(Lcom/alibaba/android/user/external/list/ManageExternalActivity;Z)Z

    .line 1325
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->A(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1326
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->B(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1327
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->r(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1328
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lfnv$b;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1329
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->s(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1330
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->t(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1331
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->C(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lfnv$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lfnv$b;->a(J)V

    .line 1333
    :cond_0
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->D(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1334
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 1335
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->E(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)Lcom/alibaba/android/user/external/ExternalEditContract$b;

    move-result-object v1

    iget-object v2, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v2}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->x(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lcom/alibaba/android/user/external/ExternalEditContract$b;->b(J)V

    .line 1337
    :cond_1
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->c:Lcom/alibaba/android/user/external/list/ManageExternalActivity;

    invoke-static {v1}, Lcom/alibaba/android/user/external/list/ManageExternalActivity;->F(Lcom/alibaba/android/user/external/list/ManageExternalActivity;)V

    .line 1339
    :cond_2
    iget-object v1, p0, Lcom/alibaba/android/user/external/list/ManageExternalActivity$18;->b:Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;

    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/appcompatdialog/DDAppCompatAlertDialog$Builder;->a()Landroid/support/v7/app/AlertDialog;

    .line 1340
    return-void
.end method
