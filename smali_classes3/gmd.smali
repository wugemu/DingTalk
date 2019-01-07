.class public final Lgmd;
.super Ljava/lang/Object;
.source "SpaceOperationController.java"


# instance fields
.field public a:Z

.field public b:Lcom/alibaba/alimei/cspace/model/DentryModel;

.field public c:Ljava/lang/String;

.field public d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

.field public e:Lcma;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public f:J

.field private g:I

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:J

.field private m:Z

.field private n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

.field private o:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public constructor <init>(IIZZLjava/lang/String;JZ)V
    .locals 2
    .param p1, "spaceType"    # I
    .param p2, "mode"    # I
    .param p3, "isSpaceAdmin"    # Z
    .param p4, "isCreator"    # Z
    .param p5, "spaceId"    # Ljava/lang/String;
    .param p6, "orgId"    # J
    .param p8, "fromConversation"    # Z

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Lgmd;->g:I

    .line 79
    iput p2, p0, Lgmd;->h:I

    .line 80
    iput-boolean p3, p0, Lgmd;->i:Z

    .line 81
    iput-boolean p4, p0, Lgmd;->j:Z

    .line 82
    iput-object p5, p0, Lgmd;->k:Ljava/lang/String;

    .line 83
    iput-wide p6, p0, Lgmd;->l:J

    .line 84
    iput-boolean p8, p0, Lgmd;->m:Z

    .line 85
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v0

    iget-object v1, p0, Lgmd;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lfzv;->h(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lgmd;->a:Z

    .line 86
    return-void
.end method

.method public static a(I)Ljava/lang/String;
    .locals 1
    .param p0, "resId"    # I

    .prologue
    .line 321
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const/4 v5, 0x6

    const/4 v4, 0x1

    .line 120
    .line 1127
    iget-object v0, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    if-eqz v0, :cond_0

    iget v0, p0, Lgmd;->h:I

    if-eq v0, v4, :cond_1

    iget v0, p0, Lgmd;->h:I

    if-eq v0, v5, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1131
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lgmd;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-direct {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 1133
    iget-object v0, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 1134
    iget-object v0, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 1135
    iget-object v0, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v1, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 1137
    const/4 v0, 0x2

    .line 1141
    new-instance v1, Lgma$a;

    invoke-direct {v1}, Lgma$a;-><init>()V

    .line 1142
    iget v2, p0, Lgmd;->g:I

    iput v2, v1, Lgma$a;->a:I

    .line 1143
    iget-wide v2, p0, Lgmd;->l:J

    iput-wide v2, v1, Lgma$a;->b:J

    .line 1144
    iget-object v2, p0, Lgmd;->c:Ljava/lang/String;

    iput-object v2, v1, Lgma$a;->c:Ljava/lang/String;

    .line 1145
    iget-boolean v2, p0, Lgmd;->i:Z

    iput-boolean v2, v1, Lgma$a;->d:Z

    .line 1146
    iget-boolean v2, p0, Lgmd;->a:Z

    iput-boolean v2, v1, Lgma$a;->e:Z

    .line 1147
    invoke-static {}, Lfzv;->a()Lfzv;

    move-result-object v2

    iget-object v3, p0, Lgmd;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lfzv;->l(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lgma$a;->f:I

    .line 1148
    iget-object v2, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v2, v1, Lgma$a;->g:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1149
    iput v0, v1, Lgma$a;->h:I

    .line 1150
    iget-boolean v2, p0, Lgmd;->o:Z

    iput-boolean v2, v1, Lgma$a;->i:Z

    .line 1152
    invoke-static {v1}, Lgma;->a(Lgma$a;)Ljava/util/List;

    move-result-object v1

    .line 1161
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Lgmd;->h:I

    if-eq v2, v5, :cond_3

    .line 1154
    :cond_2
    :goto_1
    iget-object v2, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    iget-object v3, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    invoke-static {v1, v2, v0, v3}, Lgma;->a(Ljava/util/List;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;ILcom/alibaba/alimei/cspace/model/DentryModel;)Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    .line 1156
    iget-object v1, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-virtual {v1, v4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setForceDisableSortMenuItem(Z)V

    .line 1172
    new-instance v1, Lgmb;

    invoke-direct {v1}, Lgmb;-><init>()V

    .line 1173
    iget-object v2, p0, Lgmd;->b:Lcom/alibaba/alimei/cspace/model/DentryModel;

    iput-object v2, v1, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 1174
    iget-object v2, p0, Lgmd;->c:Ljava/lang/String;

    iput-object v2, v1, Lgmb;->f:Ljava/lang/String;

    .line 1175
    iget-wide v2, p0, Lgmd;->l:J

    iput-wide v2, v1, Lgmb;->d:J

    .line 1176
    iget v2, p0, Lgmd;->g:I

    iput v2, v1, Lgmb;->c:I

    .line 1177
    iget-boolean v2, p0, Lgmd;->i:Z

    iput-boolean v2, v1, Lgmb;->i:Z

    .line 1178
    iput v0, v1, Lgmb;->o:I

    .line 1179
    iget-wide v2, p0, Lgmd;->f:J

    iput-wide v2, v1, Lgmb;->s:J

    .line 1180
    new-instance v0, Lgmc;

    iget-object v2, p0, Lgmd;->d:Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    iget-object v3, p0, Lgmd;->n:Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v0, v2, v1, v3}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 1181
    invoke-virtual {v0}, Lgmc;->a()V

    goto/16 :goto_0

    .line 1164
    :cond_3
    const-string/jumbo v2, "action_file_delete"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1165
    const-string/jumbo v2, "action_file_rename"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1166
    const-string/jumbo v2, "action_file_re_path"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1167
    const-string/jumbo v2, "action_file_comment"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1168
    const-string/jumbo v2, "action_file_like"

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public final a(JZ)V
    .locals 5
    .param p1, "editor"    # J
    .param p3, "canReleaseEditLock"    # Z

    .prologue
    .line 92
    iput-wide p1, p0, Lgmd;->f:J

    .line 93
    iget-wide v0, p0, Lgmd;->f:J

    const-wide/32 v2, 0xb20f01

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lgmd;->o:Z

    .line 94
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lgit;ZZLandroid/content/Context;)V
    .locals 10
    .param p1, "coFolderModel"    # Lgit;
    .param p2, "isAdmin"    # Z
    .param p3, "isCreator"    # Z
    .param p4, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    const-wide/16 v4, 0x0

    const/4 v9, 0x0

    .line 209
    invoke-static {p1}, Lgoc;->a(Lgit;)Lcom/alibaba/alimei/cspace/model/DentryModel;

    move-result-object v1

    .line 210
    .local v1, "dentry":Lcom/alibaba/alimei/cspace/model/DentryModel;
    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    new-instance v0, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;

    invoke-direct {v0, p4}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;-><init>(Landroid/content/Context;)V

    .line 215
    .local v0, "bottomView":Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;
    invoke-virtual {v0, v1}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setDentryModel(Lcom/alibaba/alimei/cspace/model/DentryModel;)V

    .line 216
    invoke-virtual {v0, v9}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setBottomMenuMax(I)V

    .line 217
    invoke-virtual {v1}, Lcom/alibaba/alimei/cspace/model/DentryModel;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->setTitleName(Ljava/lang/String;)V

    .line 219
    invoke-static {v1}, Lglr;->o(Lcom/alibaba/alimei/cspace/model/DentryModel;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 220
    new-instance v6, Lgqm;

    const/16 v7, 0x7da

    sget v8, Lfzs$h;->dt_space_send_folder_path:I

    invoke-static {v8}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v9, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 222
    :cond_2
    if-nez p2, :cond_3

    if-eqz p3, :cond_4

    .line 223
    :cond_3
    new-instance v6, Lgqm;

    const/16 v7, 0x7ee

    sget v8, Lfzs$h;->space_file_rename:I

    invoke-static {v8}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v9, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 224
    new-instance v6, Lgqm;

    const/16 v7, 0x7e4

    sget v8, Lfzs$h;->and_setting_rights:I

    invoke-static {v8}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v9, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 226
    :cond_4
    if-eqz p3, :cond_5

    .line 227
    new-instance v6, Lgqm;

    const/16 v7, 0x7f8

    sget v8, Lfzs$h;->space_file_delete:I

    invoke-static {v8}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v9, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    .line 232
    :goto_1
    new-instance v2, Lgmb;

    invoke-direct {v2}, Lgmb;-><init>()V

    .line 233
    .local v2, "paramModel":Lgmb;
    iput-object p1, v2, Lgmb;->m:Lgit;

    .line 234
    iput-object v1, v2, Lgmb;->a:Lcom/alibaba/alimei/cspace/model/DentryModel;

    .line 235
    iget-object v6, p1, Lgit;->j:Lgjb;

    if-nez v6, :cond_6

    :goto_2
    iput-wide v4, v2, Lgmb;->d:J

    .line 236
    iput-boolean p2, v2, Lgmb;->i:Z

    .line 237
    new-instance v3, Lgmc;

    invoke-direct {v3, p4, v2, v0}, Lgmc;-><init>(Landroid/content/Context;Lgmb;Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;)V

    .line 238
    .local v3, "spaceMenuWrapper":Lgmc;
    invoke-virtual {v3}, Lgmc;->a()V

    goto :goto_0

    .line 229
    .end local v2    # "paramModel":Lgmb;
    .end local v3    # "spaceMenuWrapper":Lgmc;
    :cond_5
    new-instance v6, Lgqm;

    const/16 v7, 0x802

    sget v8, Lfzs$h;->dt_space_cooperation_quitshare:I

    invoke-static {v8}, Lgmd;->a(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v9, v8}, Lgqm;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/alibaba/dingtalk/cspace/widget/SpaceMenuBottomView;->a(Lgqm;)Z

    goto :goto_1

    .line 235
    .restart local v2    # "paramModel":Lgmb;
    :cond_6
    iget-object v6, p1, Lgit;->j:Lgjb;

    iget-object v6, v6, Lgjb;->a:Ljava/lang/Long;

    .line 2044
    invoke-static {v6, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v4

    goto :goto_2
.end method
