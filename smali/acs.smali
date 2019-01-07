.class public final Lacs;
.super Ljava/lang/Object;
.source "MailNotificationManager.java"


# static fields
.field private static k:Lacs;


# instance fields
.field a:Landroid/content/Context;

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lfzk;",
            ">;>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lfzl;",
            ">;"
        }
    .end annotation
.end field

.field d:Lyb;

.field public e:Laci;

.field public f:I

.field public g:I

.field public h:Z

.field i:Landroid/content/BroadcastReceiver;

.field private j:Z

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lfp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfp",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/google/gson/JsonParser;

.field private r:Lxm;

.field private s:J

.field private t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Lacs;

    invoke-direct {v0}, Lacs;-><init>()V

    sput-object v0, Lacs;->k:Lacs;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lacs;->j:Z

    .line 103
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacs;->m:Lfp;

    .line 104
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacs;->n:Lfp;

    .line 105
    new-instance v0, Lfp;

    invoke-direct {v0}, Lfp;-><init>()V

    iput-object v0, p0, Lacs;->o:Lfp;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacs;->b:Ljava/util/List;

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lacs;->c:Ljava/util/List;

    .line 114
    new-instance v0, Lcom/google/gson/JsonParser;

    invoke-direct {v0}, Lcom/google/gson/JsonParser;-><init>()V

    iput-object v0, p0, Lacs;->q:Lcom/google/gson/JsonParser;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lacs;->h:Z

    .line 177
    const/4 v0, 0x0

    iput-object v0, p0, Lacs;->i:Landroid/content/BroadcastReceiver;

    .line 610
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lacs;->t:Ljava/util/HashMap;

    .line 611
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lacs;->u:Landroid/util/SparseArray;

    .line 118
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lacs;->a:Landroid/content/Context;

    .line 119
    invoke-direct {p0}, Lacs;->d()V

    .line 121
    sget v0, Laxo$e;->notification_icon_small:I

    iput v0, p0, Lacs;->f:I

    .line 122
    sget v0, Laxo$e;->notification_icon_big:I

    iput v0, p0, Lacs;->g:I

    .line 1128
    const-string/jumbo v0, "LIFECYCLE"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;

    .line 1129
    new-instance v1, Lacs$1;

    invoke-direct {v1, p0}, Lacs$1;-><init>(Lacs;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/lifecycle/LifecycleMonitor;->registerActivityLifecycleCallbacks(Lcom/alibaba/doraemon/lifecycle/ActivityLifecycleCallbacksCompat;)V

    .line 125
    return-void
.end method

.method public static a()Lacs;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lacs;->k:Lacs;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .locals 1
    .param p1, "resourceId"    # I

    .prologue
    .line 180
    iget-object v0, p0, Lacs;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lacs;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    iget-object v0, p0, Lacs;->p:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic a(Lacs;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # Ljava/lang/ref/WeakReference;

    .prologue
    .line 82
    iput-object p1, p0, Lacs;->p:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method static synthetic a(Lacs;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 82
    iput-object p1, p0, Lacs;->l:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic a(Lacs;ILcom/alibaba/alimei/sdk/model/MailSnippetModel;Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;)V
    .locals 10
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p3, "x3"    # Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;

    .prologue
    .line 82
    .line 4184
    if-nez p1, :cond_3

    .line 4185
    iget-object v0, p0, Lacs;->o:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    iget-object v1, p0, Lacs;->m:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 4187
    iget-object v0, p0, Lacs;->o:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 4189
    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    .line 4231
    :cond_0
    :goto_0
    return-void

    .line 4192
    :cond_1
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    iget-object v1, p0, Lacs;->o:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 4193
    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto :goto_0

    .line 4197
    :cond_2
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    iget-object v1, p0, Lacs;->o:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 4198
    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto :goto_0

    .line 4200
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    .line 4201
    invoke-static {}, Lafe;->a()V

    .line 4202
    iget-object v0, p0, Lacs;->o:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    if-nez v0, :cond_4

    .line 4204
    iget-object v0, p0, Lacs;->n:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 4205
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 4206
    sget v0, Laxo$i;->cmail_compose_success:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Laxo$i;->cmail_compose_success:I

    .line 4207
    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    .line 4206
    invoke-direct/range {v0 .. v7}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto :goto_0

    .line 4210
    :cond_4
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    iget-object v1, p0, Lacs;->o:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 4211
    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto/16 :goto_0

    .line 4221
    :cond_5
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4222
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4223
    const-string/jumbo v0, "MailNotificationManager.notifySendMail"

    invoke-virtual {p3}, Lcom/alibaba/alimei/framework/exception/AlimeiSdkException;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lafe;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4227
    :goto_1
    iget-object v0, p0, Lacs;->o:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    if-nez v0, :cond_7

    .line 4229
    iget-object v0, p0, Lacs;->n:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 4230
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->b()V

    .line 4231
    sget v0, Laxo$i;->cmail_compose_failed:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    sget v0, Laxo$i;->cmail_compose_failed:I

    .line 4232
    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v0, p0

    move v3, p1

    move-object v6, p2

    .line 4231
    invoke-direct/range {v0 .. v7}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto/16 :goto_0

    .line 4225
    :cond_6
    const-string/jumbo v0, "MailNotificationManager.notifySendMail"

    const-string/jumbo v1, "EventStatus.StatusFailure"

    invoke-static {v0, v1}, Lafe;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 4235
    :cond_7
    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v0

    iget-object v1, p0, Lacs;->o:Lfp;

    invoke-virtual {v1}, Lfp;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x1

    .line 4236
    sget v0, Laxo$i;->cmail_compose_sending:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lacs;->m:Lfp;

    invoke-virtual {v0}, Lfp;->a()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    move-object v0, p0

    move v5, p1

    move-object v8, p2

    invoke-direct/range {v0 .. v9}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    goto/16 :goto_0
.end method

.method static synthetic a(Lacs;J)V
    .locals 3
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # J

    .prologue
    .line 82
    .line 6526
    invoke-static {}, Lacg;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lafw;->c(Ljava/lang/String;)Lcom/alibaba/alimei/sdk/api/MailApi;

    move-result-object v0

    new-instance v1, Lacs$6;

    invoke-direct {v1, p0, p1, p2}, Lacs$6;-><init>(Lacs;J)V

    invoke-interface {v0, p1, p2, v1}, Lcom/alibaba/alimei/sdk/api/MailApi;->queryMailDetailById(JLxv;)V

    .line 82
    return-void
.end method

.method static synthetic a(Lacs;Ljava/lang/String;)V
    .locals 6
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 82
    .line 4793
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5017
    const-string/jumbo v0, "yyyy/MM/dd HH:mm:ss Z"

    invoke-static {p1, v0}, Lajm;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 4796
    iget-object v0, p0, Lacs;->p:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 4797
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 4798
    new-instance v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;

    invoke-direct {v2, v0}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 4800
    sget v0, Laxo$i;->dt_mail_send_time_format_full:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4802
    sget v1, Laxo$i;->dt_mail_timing_send_successful_tips:I

    invoke-direct {p0, v1}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5226
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->j:Z

    .line 5239
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->d:Ljava/lang/String;

    .line 4806
    sget v0, Laxo$i;->mail_guide_text_i_know_that:I

    invoke-direct {p0, v0}, Lacs;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 5259
    iput-object v0, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->f:Ljava/lang/String;

    .line 6230
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->k:Z

    .line 4808
    invoke-virtual {v2, v5}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->setCanceledOnTouchOutside(Z)V

    .line 6275
    iput-boolean v4, v2, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->l:Z

    .line 4810
    invoke-virtual {v2}, Lcom/alibaba/android/dingtalkbase/widgets/views/CustomDialog;->show()V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic a(Lacs;Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .param p0, "x0"    # Lacs;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 82
    .line 6710
    iget-boolean v0, p0, Lacs;->h:Z

    if-eqz v0, :cond_1

    .line 6711
    const-string/jumbo v0, "MailNotificationManager"

    const-string/jumbo v1, "app is on foreground, do not need create notification"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6722
    :cond_0
    :goto_0
    return-void

    .line 6715
    :cond_1
    invoke-static {}, Lafv;->b()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lacl;->a(Landroid/content/Context;)Lacl;

    move-result-object v0

    .line 7183
    iget-boolean v0, v0, Lacl;->a:Z

    .line 6715
    if-nez v0, :cond_2

    .line 6716
    const-string/jumbo v0, "MailNotificationManager"

    const-string/jumbo v1, "mail notification setting closed~! don\'t notify."

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6720
    :cond_2
    invoke-static {p2}, Lajj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 6721
    const-string/jumbo v0, "MailNotificationManager"

    const-string/jumbo v1, "imap account notification setting closed~! don\'t notify."

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6725
    :cond_3
    if-eqz p1, :cond_0

    .line 6729
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 6730
    if-eqz v0, :cond_4

    .line 6734
    const-string/jumbo v1, "MailNotificationManager"

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "prepare notification --> has new mail time:"

    aput-object v3, v2, v11

    iget-wide v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    .line 6735
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v10

    const-string/jumbo v3, " baseTime:"

    aput-object v3, v2, v12

    const/4 v3, 0x3

    iget-wide v4, p0, Lacs;->s:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, " isRead:"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    iget-boolean v4, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    .line 6736
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 6734
    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6738
    iget-wide v2, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->timeStamp:J

    iget-wide v4, p0, Lacs;->s:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_4

    iget-boolean v1, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v1, :cond_4

    .line 6740
    invoke-virtual {v0}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getFromName()Ljava/lang/String;

    move-result-object v4

    .line 6741
    iget-object v5, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->fromAddress:Ljava/lang/String;

    .line 6742
    iget-object v8, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->subject:Ljava/lang/String;

    .line 6743
    iget-wide v0, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->uid:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 6745
    const-string/jumbo v0, "MailNotificationManager"

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v2, "do notification --> imap mail:"

    aput-object v2, v1, v11

    aput-object v8, v1, v10

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lafg;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6747
    iget v0, p0, Lacs;->f:I

    if-lez v0, :cond_5

    iget v0, p0, Lacs;->g:I

    if-lez v0, :cond_5

    .line 6748
    iget-object v1, p0, Lacs;->a:Landroid/content/Context;

    iget v2, p0, Lacs;->f:I

    iget v3, p0, Lacs;->g:I

    move-object v0, p0

    move-object v6, p2

    invoke-virtual/range {v0 .. v8}, Lacs;->a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 6751
    if-eqz v0, :cond_4

    iget-object v1, p0, Lacs;->e:Laci;

    if-eqz v1, :cond_4

    .line 6752
    iget-object v1, p0, Lacs;->e:Laci;

    invoke-interface {v1, v0}, Laci;->a(Landroid/support/v4/app/NotificationCompat$Builder;)V

    .line 6753
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 6755
    invoke-virtual {p0, v7, v10}, Lacs;->a(Ljava/lang/String;Z)I

    move-result v1

    .line 6756
    iget-object v2, p0, Lacs;->e:Laci;

    invoke-interface {v2, v1, v0}, Laci;->a(ILandroid/app/Notification;)V

    goto/16 :goto_1

    .line 6759
    :cond_5
    const-string/jumbo v0, "MailNotificationManager"

    const-string/jumbo v1, "no icon resources set"

    invoke-static {v0, v1}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 6764
    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacs;->s:J

    goto/16 :goto_0
.end method

.method private a(Landroid/app/Notification;I)V
    .locals 4
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "notificationId"    # I

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 334
    :try_start_0
    iget-object v2, p0, Lacs;->a:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 335
    .local v0, "notificationManager":Landroid/app/NotificationManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "notificationManager":Landroid/app/NotificationManager;
    :goto_0
    return-void

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "tr":Ljava/lang/Throwable;
    const-string/jumbo v2, "ntf"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static a(Lcom/alibaba/alimei/sdk/model/MailGroupModel;)V
    .locals 6
    .param p0, "model"    # Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    .prologue
    const/4 v5, 0x1

    .line 900
    if-nez p0, :cond_1

    .line 940
    :cond_0
    :goto_0
    return-void

    .line 2943
    :cond_1
    if-eqz p0, :cond_2

    .line 2946
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getDeletedMails()Ljava/util/Map;

    move-result-object v3

    .line 2947
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 2948
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 2949
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 2950
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;

    .line 2951
    iget-boolean v4, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->isRead:Z

    if-nez v4, :cond_2

    .line 2952
    iget-object v2, v3, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    .line 905
    .local v2, "id":Ljava/lang/String;
    :goto_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 909
    invoke-virtual {p0}, Lcom/alibaba/alimei/sdk/model/MailGroupModel;->getAccountName()Ljava/lang/String;

    move-result-object v0

    .line 911
    .local v0, "account":Ljava/lang/String;
    new-instance v1, Lacs$8;

    invoke-direct {v1, v0, v2}, Lacs$8;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    .local v1, "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    const-class v3, Lcom/alibaba/wukong/im/ConversationService;

    invoke-static {v3}, Lcom/alibaba/wukong/im/IMEngine;->getIMService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/wukong/im/ConversationService;

    .line 939
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v4

    invoke-virtual {v4}, Lcid;->b()Lchy;

    move-result-object v4

    invoke-virtual {v4}, Lchy;->getCurrentUid()J

    move-result-wide v4

    invoke-static {v4, v5}, Lacg;->a(J)Ljava/lang/String;

    move-result-object v4

    .line 938
    invoke-interface {v3, v1, v4}, Lcom/alibaba/wukong/im/ConversationService;->getConversation(Lcom/alibaba/wukong/Callback;Ljava/lang/String;)V

    goto :goto_0

    .line 2956
    .end local v0    # "account":Ljava/lang/String;
    .end local v1    # "cb":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/wukong/im/Conversation;>;"
    .end local v2    # "id":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
    .locals 15
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "index"    # I
    .param p4, "count"    # I
    .param p5, "status"    # I
    .param p6, "autoCancel"    # Z
    .param p7, "showTicket"    # Z
    .param p8, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p9, "isGotoMailListentIntent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v14

    invoke-static {v14}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 249
    const/4 v7, 0x0

    .line 251
    .local v7, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz p9, :cond_1

    .line 252
    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v9, "com.workapp.hide.action.goto.maillist"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 253
    .local v3, "gotoMailListIntent":Landroid/content/Intent;
    const-string/jumbo v9, "proccess_id"

    .line 254
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    .line 253
    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 255
    if-eqz p8, :cond_0

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    .line 256
    const-string/jumbo v9, "mail_folder_id"

    move-object/from16 v0, p8

    iget-wide v10, v0, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->folderId:J

    invoke-virtual {v3, v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 258
    :cond_0
    iget-object v9, p0, Lacs;->a:Landroid/content/Context;

    const/4 v10, 0x0

    const/high16 v11, 0x8000000

    invoke-static {v9, v10, v3, v11}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 263
    .end local v3    # "gotoMailListIntent":Landroid/content/Intent;
    :cond_1
    if-lez p3, :cond_4

    .line 265
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v10, p0, Lacs;->a:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    sget v10, Laxo$e;->cmail_send_flight:I

    .line 266
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lacs;->a:Landroid/content/Context;

    .line 267
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Laxo$e;->notification_icon_big:I

    invoke-static {v10, v11}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 268
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lacs;->a:Landroid/content/Context;

    sget v11, Laxo$i;->cmail_compose_multi_sending:I

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 269
    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    const/4 v10, 0x1

    .line 270
    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 272
    .local v6, "notificationBuild":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v9

    sget-object v10, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mail:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-virtual {v9, v10}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "channelId":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 274
    invoke-virtual {v6, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 276
    :cond_2
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 327
    .end local v2    # "channelId":Ljava/lang/String;
    .local v5, "notification":Landroid/app/Notification;
    :cond_3
    :goto_0
    const/4 v9, 0x1

    invoke-direct {p0, v5, v9}, Lacs;->a(Landroid/app/Notification;I)V

    .line 329
    return-void

    .line 281
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "notificationBuild":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_4
    const/4 v8, 0x0

    .line 282
    .local v8, "vibrate":Z
    sget v4, Laxo$e;->notification_icon_small:I

    .line 283
    .local v4, "icon":I
    if-nez p5, :cond_9

    .line 284
    sget v4, Laxo$e;->cmail_send_flight:I

    .line 292
    :cond_5
    :goto_1
    new-instance v9, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v10, p0, Lacs;->a:Landroid/content/Context;

    invoke-direct {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    iget-object v10, p0, Lacs;->a:Landroid/content/Context;

    .line 293
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Laxo$e;->notification_icon_big:I

    invoke-static {v10, v11}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 294
    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 295
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v10

    if-nez p6, :cond_b

    const/4 v9, 0x1

    .line 296
    :goto_2
    invoke-virtual {v10, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v9

    .line 297
    move/from16 v0, p6

    invoke-virtual {v9, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v6

    .line 299
    .restart local v6    # "notificationBuild":Landroid/support/v4/app/NotificationCompat$Builder;
    if-eqz p6, :cond_6

    .line 300
    const/4 v9, 0x2

    move/from16 v0, p5

    if-eq v0, v9, :cond_6

    .line 304
    new-instance v9, Ljava/util/Timer;

    invoke-direct {v9}, Ljava/util/Timer;-><init>()V

    new-instance v10, Lacs$2;

    invoke-direct {v10, p0}, Lacs$2;-><init>(Lacs;)V

    const-wide/16 v12, 0xbb8

    invoke-virtual {v9, v10, v12, v13}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 313
    :cond_6
    if-eqz p7, :cond_7

    .line 314
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 317
    :cond_7
    invoke-virtual {v6, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 318
    invoke-virtual {v6}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    .line 319
    .restart local v5    # "notification":Landroid/app/Notification;
    if-eqz v8, :cond_8

    .line 320
    const/4 v9, 0x2

    iput v9, v5, Landroid/app/Notification;->defaults:I

    .line 324
    :cond_8
    iget-object v9, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v9, :cond_3

    .line 325
    iput-object v7, v5, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 285
    .end local v5    # "notification":Landroid/app/Notification;
    .end local v6    # "notificationBuild":Landroid/support/v4/app/NotificationCompat$Builder;
    :cond_9
    const/4 v9, 0x1

    move/from16 v0, p5

    if-ne v0, v9, :cond_a

    .line 286
    sget v4, Laxo$e;->cmail_send_success:I

    .line 287
    const/4 v8, 0x1

    goto :goto_1

    .line 288
    :cond_a
    const/4 v9, 0x2

    move/from16 v0, p5

    if-ne v0, v9, :cond_5

    .line 289
    sget v4, Laxo$e;->cmail_send_failed:I

    .line 290
    const/4 v8, 0x1

    goto :goto_1

    .line 295
    :cond_b
    const/4 v9, 0x0

    goto :goto_2
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;IZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V
    .locals 10
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;
    .param p3, "status"    # I
    .param p4, "autoCancel"    # Z
    .param p5, "showTicket"    # Z
    .param p6, "mailSnippetModel"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p7, "isGotoMailListentIntent"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 243
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    move v6, p4

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lacs;->a(Ljava/lang/String;Ljava/lang/String;IIIZZLcom/alibaba/alimei/sdk/model/MailSnippetModel;Z)V

    .line 244
    return-void
.end method

.method static synthetic b(Lacs;)V
    .locals 2
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    .line 3342
    iget-object v0, p0, Lacs;->a:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 3343
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 82
    return-void
.end method

.method static synthetic c(Lacs;)Lfp;
    .locals 1
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    iget-object v0, p0, Lacs;->m:Lfp;

    return-object v0
.end method

.method static synthetic d(Lacs;)Lfp;
    .locals 1
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    iget-object v0, p0, Lacs;->o:Lfp;

    return-object v0
.end method

.method private d()V
    .locals 4

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 614
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 615
    .local v1, "lzero":Ljava/lang/Long;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 616
    iget-object v2, p0, Lacs;->u:Landroid/util/SparseArray;

    add-int/lit16 v3, v0, 0xfa1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    :cond_0
    return-void
.end method

.method static synthetic e(Lacs;)Lfp;
    .locals 1
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    iget-object v0, p0, Lacs;->n:Lfp;

    return-object v0
.end method

.method static synthetic f(Lacs;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lacs;

    .prologue
    .line 82
    iget-object v0, p0, Lacs;->l:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)I
    .locals 6
    .param p1, "mailServerId"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 685
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lacs;->t:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 686
    .local v0, "iid":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 687
    iget-object v1, p0, Lacs;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 688
    iget-object v1, p0, Lacs;->u:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 689
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 691
    :goto_0
    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 685
    .end local v0    # "iid":Ljava/lang/Integer;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public final declared-synchronized a(Ljava/lang/String;Z)I
    .locals 14
    .param p1, "mailServerId"    # Ljava/lang/String;
    .param p2, "isAddedCyclePool"    # Z

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v13

    invoke-static {v13}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 632
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lacs;->t:Ljava/util/HashMap;

    invoke-virtual {v9, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 633
    .local v1, "iid":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 634
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 677
    :goto_0
    monitor-exit p0

    return v9

    .line 637
    :cond_0
    const/4 v3, 0x0

    .line 638
    .local v3, "targetKey":Ljava/lang/Integer;
    const-wide/16 v6, 0x0

    .line 639
    .local v6, "targetValue":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v9, 0x5

    if-ge v0, v9, :cond_1

    .line 640
    :try_start_1
    iget-object v9, p0, Lacs;->u:Landroid/util/SparseArray;

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 641
    .local v2, "key":Ljava/lang/Integer;
    iget-object v9, p0, Lacs;->u:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    .line 642
    .local v8, "value":Ljava/lang/Long;
    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 645
    .local v4, "lvalue":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_3

    .line 646
    move-object v3, v2

    .line 668
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v4    # "lvalue":J
    .end local v8    # "value":Ljava/lang/Long;
    :cond_1
    if-nez v3, :cond_2

    .line 669
    const/16 v9, 0xfa1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 671
    :cond_2
    move-object v1, v3

    .line 672
    iget-object v9, p0, Lacs;->u:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 674
    iget-object v9, p0, Lacs;->t:Ljava/util/HashMap;

    invoke-virtual {v9, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 677
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_0

    .line 652
    .restart local v2    # "key":Ljava/lang/Integer;
    .restart local v4    # "lvalue":J
    .restart local v8    # "value":Ljava/lang/Long;
    :cond_3
    cmp-long v9, v6, v4

    if-lez v9, :cond_6

    .line 653
    move-object v3, v2

    .line 654
    move-wide v6, v4

    .line 662
    :cond_4
    :goto_2
    if-nez v3, :cond_5

    .line 663
    move-object v3, v2

    .line 664
    move-wide v6, v4

    .line 639
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 655
    :cond_6
    cmp-long v9, v6, v4

    if-nez v9, :cond_4

    .line 656
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v10

    if-le v9, v10, :cond_4

    .line 657
    move-object v3, v2

    goto :goto_2

    .line 632
    .end local v0    # "i":I
    .end local v1    # "iid":Ljava/lang/Integer;
    .end local v2    # "key":Ljava/lang/Integer;
    .end local v3    # "targetKey":Ljava/lang/Integer;
    .end local v4    # "lvalue":J
    .end local v6    # "targetValue":J
    .end local v8    # "value":Ljava/lang/Long;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9
.end method

.method public final a(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationSmallIcon"    # I
    .param p3, "notificationBigIcon"    # I
    .param p4, "fromName"    # Ljava/lang/String;
    .param p5, "fromMail"    # Ljava/lang/String;
    .param p6, "recverEmail"    # Ljava/lang/String;
    .param p7, "mailId"    # Ljava/lang/String;
    .param p8, "mailSubject"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v15

    invoke-static {v15}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 563
    if-eqz p1, :cond_0

    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 564
    :cond_0
    const/4 v2, 0x0

    .line 606
    :goto_0
    return-object v2

    .line 566
    :cond_1
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 567
    .local v2, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object/from16 v11, p5

    .line 568
    .local v11, "title":Ljava/lang/String;
    :goto_1
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    sget v12, Laxo$i;->alm_cmail_mail_no_subject:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 570
    .local v10, "subject":Ljava/lang/String;
    :goto_2
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    sget v14, Laxo$i;->alm_cmail_mail_email:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v10, v12, v13

    invoke-static {v12}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 571
    invoke-virtual {v2, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    invoke-virtual {v12, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 572
    invoke-virtual {v12, v11}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v12, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 574
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v0, p3

    invoke-static {v13, v0}, Lcms;->a(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    .line 575
    move/from16 v0, p2

    invoke-virtual {v12, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const/4 v13, 0x0

    .line 576
    invoke-virtual {v12, v13}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v12

    const v13, -0xffff01

    const/16 v14, 0x3e8

    const/16 v15, 0x3e8

    invoke-virtual {v12, v13, v14, v15}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 578
    const/4 v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1, v12}, Lacs;->a(Ljava/lang/String;Z)I

    move-result v7

    .line 580
    .local v7, "mailIdRequestCode":I
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v12, "com.workapp.hide.action.goto.maildetail"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v6, "gotoMailDetailIntent":Landroid/content/Intent;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    .line 582
    .local v9, "pid":I
    const-string/jumbo v12, "proccess_id"

    invoke-virtual {v6, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 583
    const-string/jumbo v12, "account_name"

    move-object/from16 v0, p6

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 585
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v12, "com.workapp.hide.action.cancel.maildetail"

    invoke-direct {v4, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 586
    .local v4, "deleteIntent":Landroid/content/Intent;
    const-string/jumbo v12, "proccess_id"

    invoke-virtual {v4, v12, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 587
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 588
    const-string/jumbo v12, "mailId"

    move-object/from16 v0, p7

    invoke-virtual {v6, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string/jumbo v12, "mailId"

    move-object/from16 v0, p7

    invoke-virtual {v4, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 591
    :cond_2
    const/high16 v12, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v7, v6, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 594
    .local v8, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 595
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 597
    invoke-static {}, Lclp;->a()Lclp;

    move-result-object v12

    sget-object v13, Lcom/alibaba/android/dingtalkbase/notification/DtChannel;->Mail:Lcom/alibaba/android/dingtalkbase/notification/DtChannel;

    invoke-virtual {v12, v13}, Lclp;->a(Lcom/alibaba/android/dingtalkbase/notification/DtChannel;)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, "channelId":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 599
    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 603
    :cond_3
    const/high16 v12, 0x8000000

    move-object/from16 v0, p1

    invoke-static {v0, v7, v4, v12}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 605
    .local v5, "deletePendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto/16 :goto_0

    .end local v3    # "channelId":Ljava/lang/String;
    .end local v4    # "deleteIntent":Landroid/content/Intent;
    .end local v5    # "deletePendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "gotoMailDetailIntent":Landroid/content/Intent;
    .end local v7    # "mailIdRequestCode":I
    .end local v8    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v9    # "pid":I
    .end local v10    # "subject":Ljava/lang/String;
    .end local v11    # "title":Ljava/lang/String;
    :cond_4
    move-object/from16 v11, p4

    .line 567
    goto/16 :goto_1

    .restart local v11    # "title":Ljava/lang/String;
    :cond_5
    move-object/from16 v10, p8

    .line 568
    goto/16 :goto_2
.end method

.method public final a(Lagz;Ljava/lang/String;Lcom/alibaba/alimei/sdk/model/AddressModel;)V
    .locals 9
    .param p1, "newMail"    # Lagz;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "sender"    # Lcom/alibaba/alimei/sdk/model/AddressModel;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v8

    invoke-static {v8}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 841
    iget-object v4, p0, Lacs;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 842
    .local v1, "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lfzk;>;"
    if-eqz v1, :cond_0

    .line 846
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfzk;

    .line 847
    .local v2, "listener":Lfzk;
    if-eqz v2, :cond_0

    .line 848
    invoke-static {p1, p3}, Lafh;->a(Lagz;Lcom/alibaba/alimei/sdk/model/AddressModel;)Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    move-result-object v3

    .line 849
    .local v3, "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    new-instance v0, Lfzm;

    invoke-direct {v0}, Lfzm;-><init>()V

    .line 850
    .local v0, "data":Lfzm;
    iput-object v3, v0, Lfzm;->a:Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;

    .line 852
    const-string/jumbo v5, "MailNotificationManager"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "mail send start, notify IM, localId = "

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v3, Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;->mailLocalUUID:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v6}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-interface {v2, v0, p2}, Lfzk;->a(Lfzm;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    .end local v0    # "data":Lfzm;
    .end local v1    # "item":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lfzk;>;"
    .end local v2    # "listener":Lfzk;
    .end local v3    # "mailDo":Lcom/alibaba/android/dingtalkbase/models/dos/mail/MailDo;
    :cond_1
    return-void
.end method

.method public final a(Lcom/alibaba/alimei/sdk/model/MailSnippetModel;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .param p1, "mail"    # Lcom/alibaba/alimei/sdk/model/MailSnippetModel;
    .param p2, "success"    # Z
    .param p3, "messageId"    # Ljava/lang/String;
    .param p4, "code"    # Ljava/lang/String;
    .param p5, "reason"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v12

    invoke-static {v12}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 876
    if-nez p1, :cond_1

    .line 897
    :cond_0
    return-void

    .line 880
    :cond_1
    const-string/jumbo v0, "MailNotificationManager"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "mail send complete localUUID="

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, " id="

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->localExtension:Ljava/lang/String;

    const-class v2, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    invoke-static {v0, v2}, Lair;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;

    .line 884
    .local v5, "extData":Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;
    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iget-object v0, v0, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 885
    const-string/jumbo v0, "MailNotificationManager"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "this is a im through mail, notify im module, "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->extData:Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;

    iget-object v4, v4, Lcom/alibaba/alimei/sdk/model/ExtentionDataModel;->imThrough:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lafg;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    iget-object v0, p0, Lacs;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfzl;

    .line 888
    .local v1, "item":Lfzl;
    if-eqz v1, :cond_2

    .line 889
    if-eqz p2, :cond_3

    .line 890
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v2

    iget-object v4, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    move-object/from16 v6, p3

    invoke-interface/range {v1 .. v6}, Lfzl;->a(JLjava/lang/String;Lcom/alibaba/dingtalk/cmailbase/mail/model/CMailExtData;Ljava/lang/String;)V

    goto :goto_0

    .line 892
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->getId()J

    move-result-wide v8

    iget-object v10, p1, Lcom/alibaba/alimei/sdk/model/MailSnippetModel;->serverId:Ljava/lang/String;

    move-object v7, v1

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-interface/range {v7 .. v12}, Lfzl;->a(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final declared-synchronized a(Z)V
    .locals 1
    .param p1, "isSyncMails"    # Z

    .prologue
    .line 152
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lacs;->j:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    monitor-exit p0

    return-void

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 7

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v6

    invoke-static {v6}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 364
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lacs;->i:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_0

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 366
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.workapp.hide.action.goto.maillist"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 367
    const-string/jumbo v2, "com.workapp.hide.action.goto.maildetail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 368
    const-string/jumbo v2, "com.workapp.hide.action.cancel.maildetail"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 369
    new-instance v2, Lacs$3;

    invoke-direct {v2, p0}, Lacs$3;-><init>(Lacs;)V

    iput-object v2, p0, Lacs;->i:Landroid/content/BroadcastReceiver;

    .line 411
    iget-object v2, p0, Lacs;->a:Landroid/content/Context;

    iget-object v3, p0, Lacs;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 414
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lacs;->d:Lyb;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 519
    :goto_0
    monitor-exit p0

    return-void

    .line 417
    :cond_1
    :try_start_1
    new-instance v1, Lacs$4;

    invoke-direct {v1, p0}, Lacs$4;-><init>(Lacs;)V

    .line 441
    .local v1, "handler":Landroid/os/Handler;
    new-instance v2, Lacs$5;

    invoke-direct {v2, p0, v1}, Lacs$5;-><init>(Lacs;Landroid/os/Handler;)V

    iput-object v2, p0, Lacs;->d:Lyb;

    .line 2085
    invoke-static {}, Lafv;->d()Lya;

    move-result-object v2

    .line 517
    iget-object v3, p0, Lacs;->d:Lyb;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string/jumbo v6, "basic_SyncMail"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string/jumbo v6, "basic_SendMail"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "SendMail1202ErrorCode"

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lya;->a(Lyb;[Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 364
    .end local v1    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public final declared-synchronized c()V
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar0;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar0;->b(I)V

    .prologue
    .line 770
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lacs;->r:Lxm;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lacs$7;

    invoke-direct {v0, p0}, Lacs$7;-><init>(Lacs;)V

    iput-object v0, p0, Lacs;->r:Lxm;

    .line 787
    :cond_0
    const-class v0, Lcom/alibaba/alimei/sdk/model/MailGroupModel;

    iget-object v1, p0, Lacs;->r:Lxm;

    .line 2094
    invoke-static {v0, v1}, Lafv;->a(Ljava/lang/Class;Lxm;)V

    .line 789
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lacs;->s:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 790
    monitor-exit p0

    return-void

    .line 770
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
