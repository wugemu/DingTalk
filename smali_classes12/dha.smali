.class public final Ldha;
.super Ljava/lang/Object;
.source "CooperationGroupAddMemberHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldha$a;
    }
.end annotation


# instance fields
.field a:Landroid/app/Activity;

.field b:Ljava/lang/String;

.field public c:Ldha$a;

.field d:Landroid/view/View;

.field e:Lech;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "attachView"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string/jumbo v0, "[CooperationGroupAddMemberHelper]"

    iput-object v0, p0, Ldha;->f:Ljava/lang/String;

    .line 39
    const-string/jumbo v0, "140017"

    iput-object v0, p0, Ldha;->g:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "140018"

    iput-object v0, p0, Ldha;->h:Ljava/lang/String;

    .line 49
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "CooperationGroupAddMemberHelper params cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    iput-object p1, p0, Ldha;->a:Landroid/app/Activity;

    .line 53
    iput-object p2, p0, Ldha;->b:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Ldha;->d:Landroid/view/View;

    .line 55
    return-void
.end method

.method static synthetic a(Ldha;)V
    .locals 1
    .param p0, "x0"    # Ldha;

    .prologue
    .line 36
    .line 2229
    iget-object v0, p0, Ldha;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 2230
    iget-object v0, p0, Ldha;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->dismissLoadingDialog()V

    .line 36
    :cond_0
    return-void
.end method

.method static synthetic a(Ldha;Ldqz;Ljava/util/List;)V
    .locals 9
    .param p0, "x0"    # Ldha;
    .param p1, "x1"    # Ldqz;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    const/4 v8, 0x0

    .line 36
    .line 3151
    if-eqz p1, :cond_0

    iget-object v0, p1, Ldqz;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Ldqz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 3152
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3153
    :cond_0
    :goto_0
    return-void

    .line 3155
    :cond_1
    new-instance v1, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;

    iget-object v0, p0, Ldha;->a:Landroid/app/Activity;

    invoke-direct {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3156
    sget v0, Lctk$i;->dt_im_coop_add_org:I

    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3157
    invoke-static {}, Lcom/alibaba/doraemon/performance/DDStringBuilderProxy;->getDDStringBuilder()Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v2

    .line 3158
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3159
    iget-object v0, p1, Ldqz;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;

    .line 3160
    if-eqz v0, :cond_2

    .line 3161
    iget-object v5, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 3162
    const-string/jumbo v5, "\u00b7"

    invoke-virtual {v2, v5}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n"

    invoke-virtual {v5, v6}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->append(Ljava/lang/String;)Lcom/alibaba/doraemon/performance/DDStringBuilder;

    .line 3164
    :cond_3
    iget-wide v6, v0, Lcom/alibaba/android/dingtalkim/models/OrgIdNameObject;->orgId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3167
    :cond_4
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    iget-object v4, p0, Ldha;->a:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lctk$i;->dt_im_coop_add_org_info_AT:I

    .line 3168
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v8

    const/4 v4, 0x1

    const-string/jumbo v5, "\n"

    aput-object v5, v0, v4

    const/4 v4, 0x2

    invoke-virtual {v2}, Lcom/alibaba/doraemon/performance/DDStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 3167
    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3169
    invoke-virtual {v1, v8}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3170
    invoke-virtual {v1, v0}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 3171
    sget v0, Lctk$i;->dt_im_coop_add_org_continue:I

    new-instance v2, Ldha$3;

    invoke-direct {v2, p0, p2, v3}, Ldha$3;-><init>(Ldha;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3177
    sget v0, Lctk$i;->cancel:I

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3178
    invoke-virtual {v1}, Lcom/alibaba/android/dingtalkbase/widgets/dialog/DDAlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method static synthetic a(Ldha;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .param p0, "x0"    # Ldha;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 36
    .line 4113
    invoke-direct {p0}, Ldha;->b()V

    .line 4114
    new-instance v1, Ldqx;

    invoke-direct {v1}, Ldqx;-><init>()V

    .line 4115
    iget-object v0, p0, Ldha;->b:Ljava/lang/String;

    iput-object v0, v1, Ldqx;->a:Ljava/lang/String;

    .line 4116
    iput-object p2, v1, Ldqx;->c:Ljava/util/List;

    .line 4117
    iput-object p1, v1, Ldqx;->b:Ljava/util/List;

    .line 4118
    new-instance v0, Ldha$2;

    invoke-direct {v0, p0, p1}, Ldha$2;-><init>(Ldha;Ljava/util/List;)V

    .line 4146
    const-class v2, Lcma;

    iget-object v3, p0, Ldha;->a:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcma;

    .line 4147
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ldxx;->a(Ldqx;Lcma;)V

    .line 36
    return-void
.end method

.method private b()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ldha;->a:Landroid/app/Activity;

    instance-of v0, v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Ldha;->a:Landroid/app/Activity;

    check-cast v0, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;

    invoke-virtual {v0}, Lcom/alibaba/android/dingtalkbase/DingtalkBaseActivity;->showLoadingDialog()V

    .line 226
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 62
    .local p1, "userIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Ldqy;

    invoke-direct {v1}, Ldqy;-><init>()V

    .line 66
    .local v1, "object":Ldqy;
    iput-object p1, v1, Ldqy;->b:Ljava/util/List;

    .line 67
    iget-object v2, p0, Ldha;->b:Ljava/lang/String;

    iput-object v2, v1, Ldqy;->a:Ljava/lang/String;

    .line 68
    invoke-direct {p0}, Ldha;->b()V

    .line 69
    new-instance v0, Ldha$1;

    invoke-direct {v0, p0, p1}, Ldha$1;-><init>(Ldha;Ljava/util/List;)V

    .line 108
    .local v0, "apiEventListener":Lcma;, "Lcma<Ldqz;>;"
    const-class v2, Lcma;

    iget-object v3, p0, Ldha;->a:Landroid/app/Activity;

    invoke-static {v0, v2, v3}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "apiEventListener":Lcma;, "Lcma<Ldqz;>;"
    check-cast v0, Lcma;

    .line 109
    .restart local v0    # "apiEventListener":Lcma;, "Lcma<Ldqz;>;"
    invoke-static {}, Ldxy;->a()Ldxx;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ldxx;->a(Ldqy;Lcma;)V

    goto :goto_0
.end method

.method public final a()Z
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    const/4 v0, 0x0

    .line 235
    iget-object v1, p0, Ldha;->e:Lech;

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Ldha;->e:Lech;

    .line 1273
    invoke-virtual {v1}, Lech;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1274
    :cond_0
    :goto_0
    return v0

    .line 1276
    :cond_1
    iget-boolean v2, v1, Lech;->c:Z

    if-eqz v2, :cond_2

    .line 1277
    invoke-virtual {v1, v0}, Lech;->a(Z)V

    .line 1281
    :goto_1
    const/4 v0, 0x1

    .line 236
    goto :goto_0

    .line 1279
    :cond_2
    invoke-virtual {v1}, Lech;->dismiss()V

    goto :goto_1
.end method
