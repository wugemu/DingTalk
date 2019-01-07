.class public Lbbi;
.super Ljava/lang/Object;
.source "DingQuotaManager.java"


# static fields
.field private static volatile b:Lbbi;


# instance fields
.field public a:Lazb;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x28

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lazb;

    invoke-direct {v0}, Lazb;-><init>()V

    iput-object v0, p0, Lbbi;->a:Lazb;

    .line 37
    iget-object v0, p0, Lbbi;->a:Lazb;

    iput v1, v0, Lazb;->a:I

    .line 38
    iget-object v0, p0, Lbbi;->a:Lazb;

    iput v1, v0, Lazb;->b:I

    .line 39
    iget-object v0, p0, Lbbi;->a:Lazb;

    iput v1, v0, Lazb;->g:I

    .line 40
    return-void
.end method

.method public static a(I)I
    .locals 6
    .param p0, "subBizType"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 105
    if-ne p0, v4, :cond_0

    .line 106
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->q()I

    move-result v0

    .line 107
    .local v0, "telQuotaNum":I
    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "[DingQuotaManager] tel meeting quota"

    aput-object v3, v2, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 115
    .end local v0    # "telQuotaNum":I
    :goto_0
    return v0

    .line 109
    :cond_0
    if-ne p0, v3, :cond_1

    .line 110
    invoke-static {}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->v()Lcom/alibaba/dingtalk/telebase/TelConfInterface;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/dingtalk/telebase/TelConfInterface;->s()I

    move-result v1

    .line 111
    .local v1, "videoQuotaNum":I
    new-array v2, v3, [Ljava/lang/String;

    const-string/jumbo v3, "[DingQuotaManager] video meeting quota"

    aput-object v3, v2, v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    move v0, v1

    .line 112
    goto :goto_0

    .line 114
    .end local v1    # "videoQuotaNum":I
    :cond_1
    new-array v2, v4, [Ljava/lang/String;

    const-string/jumbo v3, "[DingQuotaManager] normal meeting quota: integer.max"

    aput-object v3, v2, v5

    invoke-static {v2}, Lbkd;->a([Ljava/lang/String;)V

    .line 115
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method static synthetic a(Lbbi;)Lazb;
    .locals 1
    .param p0, "x0"    # Lbbi;

    .prologue
    .line 27
    iget-object v0, p0, Lbbi;->a:Lazb;

    return-object v0
.end method

.method public static a()Lbbi;
    .locals 2

    .prologue
    .line 43
    sget-object v0, Lbbi;->b:Lbbi;

    if-nez v0, :cond_1

    .line 44
    const-class v1, Lbbi;

    monitor-enter v1

    .line 45
    :try_start_0
    sget-object v0, Lbbi;->b:Lbbi;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lbbi;

    invoke-direct {v0}, Lbbi;-><init>()V

    sput-object v0, Lbbi;->b:Lbbi;

    .line 48
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :cond_1
    sget-object v0, Lbbi;->b:Lbbi;

    return-object v0

    .line 48
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static a(II)V
    .locals 6
    .param p0, "subBizType"    # I
    .param p1, "limitNum"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 120
    if-ne p0, v4, :cond_0

    .line 121
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_tel_meeting_choose_limit_at:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 122
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingQuotaManager] tel meeting quota not enough"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1496
    const-string/jumbo v0, "ding_send_concall_limit_upper"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    .line 131
    :goto_0
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 125
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->c()Landroid/app/Application;

    move-result-object v0

    sget v1, Laxp$i;->dt_ding_video_meeting_choose_limit_at:I

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Application;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcms;->a(Ljava/lang/String;)V

    .line 126
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingQuotaManager] video meeting quota not enough"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 1500
    const-string/jumbo v0, "ding_send_limit_videocall"

    invoke-static {v0}, Lbjz;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_1
    new-array v0, v4, [Ljava/lang/String;

    const-string/jumbo v1, "[DingQuotaManager] normal meeting quota not enough"

    aput-object v1, v0, v5

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic b(Lbbi;)V
    .locals 3
    .param p0, "x0"    # Lbbi;

    .prologue
    .line 27
    .line 2099
    iget-object v1, p0, Lbbi;->a:Lazb;

    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    iget-object v2, p0, Lbbi;->a:Lazb;

    iget v2, v2, Lazb;->a:I

    if-gt v0, v2, :cond_0

    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    :goto_0
    iput v0, v1, Lazb;->g:I

    .line 27
    return-void

    .line 2099
    :cond_0
    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 162
    if-nez p1, :cond_0

    .line 163
    const-string/jumbo v0, ""

    .line 169
    :goto_0
    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    if-lez v0, :cond_1

    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    iget-object v1, p0, Lbbi;->a:Lazb;

    iget v1, v1, Lazb;->a:I

    if-gt v0, v1, :cond_1

    .line 166
    sget v0, Laxp$i;->dt_ding_create_warning_overlimit_by_times_at:I

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lbbi;->a:Lazb;

    iget v2, v2, Lazb;->e:I

    .line 167
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    .line 166
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    sget v0, Laxp$i;->dt_ding_create_warning_overlimit_by_day_at_at:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lbbi;->a:Lazb;

    iget v2, v2, Lazb;->c:I

    .line 170
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget-object v2, p0, Lbbi;->a:Lazb;

    iget v2, v2, Lazb;->a:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 169
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;Lcma;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcma",
            "<",
            "Lchh;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 54
    .local p2, "listener":Lcma;, "Lcma<Lchh;>;"
    if-nez p1, :cond_0

    .line 96
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v0, Lbbi$1;

    invoke-direct {v0, p0, p2}, Lbbi$1;-><init>(Lbbi;Lcma;)V

    .line 94
    .local v0, "listenerAdapter":Lcma;, "Lcma<Lchh;>;"
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v2

    const-class v1, Lcma;

    invoke-static {v0, v1, p1}, Lcon;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcma;

    invoke-virtual {v2, v1}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a(Lcma;)V

    goto :goto_0
.end method

.method public final b()Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;
    .locals 2

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 177
    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lbbi;->a:Lazb;

    iget v0, v0, Lazb;->e:I

    iget-object v1, p0, Lbbi;->a:Lazb;

    iget v1, v1, Lazb;->a:I

    if-gt v0, v1, :cond_0

    .line 178
    sget-object v0, Lbji;->d:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    .line 181
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lbji;->c:Lcom/alibaba/android/dingtalk/userbase/ContactChooseRequest$ContactChooseCallback;

    goto :goto_0
.end method
