.class final Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;
.super Ljava/lang/Object;
.source "TeleConfHomeRecordFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

.field private b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

.field private c:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;Lcom/alibaba/android/teleconf/data/ConfRecordItem;Z)V
    .locals 0
    .param p2, "record"    # Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .param p3, "checkExternal"    # Z

    .prologue
    .line 2908
    iput-object p1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2909
    iput-object p2, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2910
    iput-boolean p3, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->c:Z

    .line 2911
    return-void
.end method

.method static synthetic a(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)Lcom/alibaba/android/teleconf/data/ConfRecordItem;
    .locals 1
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    .prologue
    .line 2903
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    return-object v0
.end method

.method private a()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2972
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    .line 3895
    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2972
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 2973
    .local v0, "count":I
    iget-object v1, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a:Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;

    .line 4895
    iget-object v1, v1, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a;->a:Ljava/util/List;

    .line 2973
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2974
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v1

    new-instance v2, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$2;

    invoke-direct {v2, p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$2;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)V

    invoke-virtual {v1, v2}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 2989
    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;)V
    .locals 0
    .param p0, "x0"    # Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;

    .prologue
    .line 2903
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar9;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar9;->b(I)V

    .prologue
    .line 2915
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2969
    :goto_0
    return-void

    .line 2919
    :cond_0
    const-wide/16 v8, 0x0

    .line 2921
    .local v8, "uid":J
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-object v0, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->targetUids:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2925
    :goto_1
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_1

    .line 2926
    const-string/jumbo v0, "tele_conf"

    invoke-static {}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment;->h()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Invalid uid"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2929
    :cond_1
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isPhoneNumExist()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2930
    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    invoke-static {v8, v9}, Lewa;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->phoneNum:Ljava/lang/String;

    .line 2932
    :cond_2
    iget-boolean v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->c:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 2933
    invoke-static {v0}, Lcms;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2934
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isToday()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2935
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgIdValid()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    .line 2936
    invoke-virtual {v0}, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->isOrgOpenExternalFunction()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2937
    move-wide v4, v8

    .line 2938
    .local v4, "destUid":J
    invoke-static {}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->a()Lcom/alibaba/android/dingtalk/userbase/ContactInterface;

    move-result-object v1

    iget-object v0, p0, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->b:Lcom/alibaba/android/teleconf/data/ConfRecordItem;

    iget-wide v2, v0, Lcom/alibaba/android/teleconf/data/ConfRecordItem;->orgId:J

    new-instance v6, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;

    invoke-direct {v6, p0, v4, v5}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a$1;-><init>(Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;J)V

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/android/dingtalk/userbase/ContactInterface;->c(JJLcma;)V

    goto :goto_0

    .line 2967
    .end local v4    # "destUid":J
    :cond_3
    invoke-direct {p0}, Lcom/alibaba/android/teleconf/fragment/TeleConfHomeRecordFragment$a$a;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method
