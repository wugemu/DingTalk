.class public abstract Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
.super Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;
.source "SpaceShareBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;
    }
.end annotation


# instance fields
.field protected a:I

.field protected b:I

.field protected c:J

.field protected d:Ljava/lang/String;

.field protected e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;",
            ">;"
        }
    .end annotation
.end field

.field protected g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;",
            ">;"
        }
    .end annotation
.end field

.field protected h:Z

.field public i:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;

.field j:Landroid/os/Handler;

.field private k:Landroid/content/BroadcastReceiver;

.field private l:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;-><init>()V

    .line 363
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$5;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->j:Landroid/os/Handler;

    .line 411
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;[J)Ljava/util/HashMap;
    .locals 6
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
    .param p1, "x1"    # [J

    .prologue
    .line 46
    .line 2199
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    .line 2200
    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0

    .line 2202
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2203
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-wide v4, p1, v1

    .line 2204
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;

    .prologue
    .line 46
    .line 2307
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$4;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    .line 2357
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 2358
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    .line 2640
    const-class v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    invoke-static {v1}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;

    .line 2641
    invoke-static {v3}, Lgop;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    .line 2643
    new-instance v4, Lgop$7;

    invoke-direct {v4, v0}, Lgop$7;-><init>(Lcma;)V

    invoke-interface {v1, v2, v3, v4}, Lcom/alibaba/dingtalk/cspace/idl/service/DpCoFolderService;->addMember(Ljava/lang/String;Ljava/util/List;Liyv;)V

    .line 46
    return-void
.end method

.method static synthetic a(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;Ljava/util/List;)V
    .locals 5
    .param p0, "x0"    # Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 46
    .line 1252
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1256
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->showLoadingDialog()V

    .line 1258
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    .line 1259
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->f:Ljava/util/List;

    .line 1261
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 1262
    new-instance v2, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;

    iget v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b:I

    iget v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->a:I

    invoke-direct {v2, v0, v3, v4}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;-><init>(Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;II)V

    .line 1263
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/dingtalk/cspace/model/ShareMemberModel;->setCheckEnable(Z)V

    .line 1264
    iget-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1265
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1272
    :cond_2
    new-instance v0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;

    invoke-direct {v0, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$3;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    .line 1302
    const-class v1, Lcma;

    invoke-static {v0, v1, p0}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 1303
    iget-wide v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->c:J

    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->g:Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2, v3, v1, v0}, Lgop;->a(JLjava/util/List;Lcma;)V

    goto :goto_0
.end method

.method protected static c()V
    .locals 0

    .prologue
    .line 153
    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(I)V
    .locals 8
    .param p1, "addMaxNum"    # I

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v7

    invoke-static {v7}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    const/16 v4, 0x65

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, "chooseTitle":Ljava/lang/String;
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b:I

    if-ne v1, v4, :cond_2

    .line 213
    sget v1, Lfzs$h;->dt_cspace_co_folder_role_admin:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1224
    :cond_0
    :goto_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1225
    const-string/jumbo v1, "choose_mode"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1226
    const-string/jumbo v1, "title"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const-string/jumbo v1, "choose_people_action"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1228
    const-string/jumbo v1, "count_limit_tips"

    sget v3, Lfzs$h;->create_conversation_choose_limit:I

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1230
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b:I

    if-ne v1, v4, :cond_4

    .line 1231
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1232
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->c:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1240
    :cond_1
    :goto_1
    const-string/jumbo v1, "show_crm_customer"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1242
    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    .line 1244
    :goto_2
    const-string/jumbo v3, "count_limit"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1245
    const-string/jumbo v1, "unchecked_users"

    invoke-virtual {v2, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1246
    const-string/jumbo v1, "activity_identify"

    const-string/jumbo v3, "101"

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string/jumbo v3, "key_request_select_user_list"

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1248
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    invoke-virtual {v1, p0, v2}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Landroid/app/Activity;Landroid/os/Bundle;)V

    .line 221
    return-void

    .line 214
    :cond_2
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b:I

    const/16 v2, 0x66

    if-ne v1, v2, :cond_3

    .line 215
    sget v1, Lfzs$h;->dt_cspace_co_folder_role_uploader:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 216
    :cond_3
    iget v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->b:I

    const/16 v2, 0x67

    if-ne v1, v2, :cond_0

    .line 217
    sget v1, Lfzs$h;->dt_cspace_co_folder_role_browser:I

    invoke-virtual {p0, v1}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1234
    :cond_4
    const-string/jumbo v1, "hide_org_external"

    invoke-virtual {v2, v1, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1236
    invoke-static {}, Lglr;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1237
    const-string/jumbo v1, "choose_enterprise_oid"

    iget-wide v4, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->c:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 1242
    :cond_5
    add-int/lit8 v1, p1, 0x1

    goto :goto_2
.end method

.method public a(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 428
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .param p1, "newTitle"    # Ljava/lang/String;

    .prologue
    .line 147
    return-void
.end method

.method protected a(Ljava/util/HashMap;I)V
    .locals 0
    .param p2, "newRole"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 196
    .local p1, "uIds":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    return-void
.end method

.method protected final a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 390
    .local p1, "uids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    if-eqz v2, :cond_2

    if-eqz p1, :cond_2

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 392
    .local v0, "deleteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;

    .line 393
    .local v1, "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    iget-wide v4, v1, Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v1    # "userIdentityObject":Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 398
    iget-object v2, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 402
    .end local v0    # "deleteModels":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/android/dingtalk/userbase/model/UserIdentityObject;>;"
    :cond_2
    return-void
.end method

.method protected b()V
    .locals 0

    .prologue
    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->i:Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$a;

    .line 77
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 78
    .local v0, "config":Landroid/view/ViewConfiguration;
    const-class v3, Landroid/view/ViewConfiguration;

    const-string/jumbo v4, "sHasPermanentMenuKey"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 79
    .local v2, "menuKeyField":Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 80
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 81
    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1092
    .end local v0    # "config":Landroid/view/ViewConfiguration;
    .end local v2    # "menuKeyField":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$1;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$1;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->k:Landroid/content/BroadcastReceiver;

    .line 1104
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1105
    const-string/jumbo v4, "com.workapp.choose.people.from.contact"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 1111
    new-instance v3, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;

    invoke-direct {v3, p0}, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity$2;-><init>(Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;)V

    iput-object v3, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->l:Landroid/content/BroadcastReceiver;

    .line 1136
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 1137
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.member.add"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1138
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.member.delete"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1139
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.member.modify"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1140
    const-string/jumbo v4, "com.alibaba.dingtalk.space.share.updatetitle"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1141
    const-string/jumbo v4, "com.alibaba.dingtalk.space.cooperation.folder.rename"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->c()Landroid/app/Application;

    move-result-object v4

    invoke-static {v4}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Ldq;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 89
    return-void

    .line 83
    :catch_0
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 406
    invoke-super {p0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->onDestroy()V

    .line 407
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->k:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 408
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Ldq;->a(Landroid/content/Context;)Ldq;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/dingtalk/cspace/activity/SpaceShareBaseActivity;->l:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Ldq;->a(Landroid/content/BroadcastReceiver;)V

    .line 409
    return-void
.end method
