.class public Lbhg;
.super Ljava/lang/Object;
.source "DingDraftManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static volatile c:Lbhg;


# instance fields
.field private b:Lbgx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lbhg;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbhg;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method static synthetic a(Lbhg;)Lbgx;
    .locals 1
    .param p0, "x0"    # Lbhg;

    .prologue
    .line 51
    .line 1357
    iget-object v0, p0, Lbhg;->b:Lbgx;

    if-nez v0, :cond_0

    .line 1358
    new-instance v0, Lbgy;

    invoke-direct {v0}, Lbgy;-><init>()V

    iput-object v0, p0, Lbhg;->b:Lbgx;

    .line 1360
    :cond_0
    iget-object v0, p0, Lbhg;->b:Lbgx;

    .line 51
    return-object v0
.end method

.method public static a()Lbhg;
    .locals 2

    .prologue
    .line 62
    sget-object v0, Lbhg;->c:Lbhg;

    if-nez v0, :cond_1

    .line 63
    const-class v1, Lbhg;

    monitor-enter v1

    .line 64
    :try_start_0
    sget-object v0, Lbhg;->c:Lbhg;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lbhg;

    invoke-direct {v0}, Lbhg;-><init>()V

    sput-object v0, Lbhg;->c:Lbhg;

    .line 67
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :cond_1
    sget-object v0, Lbhg;->c:Lbhg;

    return-object v0

    .line 67
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lbhg;Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lbhg;
    .param p1, "x1"    # Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;

    .prologue
    .line 51
    .line 1364
    if-eqz p1, :cond_0

    .line 1367
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioLocalUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->isExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1368
    invoke-virtual {p1}, Lcom/alibaba/android/ding/base/objects/draft/DingContentAudio;->getAudioLocalUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 1370
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0
.end method

.method static synthetic a(Lbhg;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lbhg;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    .line 1374
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    return-object v0

    .line 1377
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_0
.end method

.method static synthetic a(Lbhg;Lcma;Ljava/lang/Object;)V
    .locals 2
    .param p0, "x0"    # Lbhg;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/Object;

    .prologue
    .line 51
    .line 1316
    if-eqz p1, :cond_0

    .line 1317
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbhg$5;

    invoke-direct {v1, p0, p1, p2}, Lbhg$5;-><init>(Lbhg;Lcma;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 51
    :cond_0
    return-void
.end method

.method static synthetic a(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lbhg;
    .param p1, "x1"    # Lcma;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lbhg;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcma;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "listener"    # Lcma;
    .param p2, "errorCode"    # Ljava/lang/String;
    .param p3, "errorMsg"    # Ljava/lang/String;

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-static {}, Lhcv;->a()Lhcv;

    move-result-object v0

    new-instance v1, Lbhg$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lbhg$6;-><init>(Lbhg;Lcma;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lhcv;->post(Ljava/lang/Runnable;)Z

    .line 335
    :cond_0
    return-void
.end method

.method public static a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z
    .locals 4
    .param p0, "dingCreateInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 73
    if-nez p0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v0

    .line 78
    :cond_1
    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 83
    :cond_2
    const-string/jumbo v2, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getShareType()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 88
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getDingIdStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getParentDingIdStr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    .line 99
    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getMessage()Lcom/alibaba/wukong/im/Message;

    move-result-object v2

    if-nez v2, :cond_5

    move v0, v1

    .line 104
    goto :goto_0

    .line 108
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    :cond_6
    move v0, v1

    .line 109
    goto :goto_0

    .line 113
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/android/ding/base/objects/DingCreateInfo;->getSourceFrom()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private b(ILcma;)V
    .locals 3
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcma",
            "<",
            "Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 338
    .local p2, "listener":Lcma;, "Lcma<Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;>;"
    sget-object v0, Lbhg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "DingDraftManager"

    new-instance v2, Lbhg$7;

    invoke-direct {v2, p0, p1, p2}, Lbhg$7;-><init>(Lbhg;ILcma;)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 354
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4
    .param p1, "type"    # I

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 186
    sget-object v0, Lbhg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "DingDraftManager"

    new-instance v2, Lbhg$3;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lbhg$3;-><init>(Lbhg;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 192
    return-void
.end method

.method public final a(ILcma;)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .line 118
    .local p2, "listener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    const/4 v0, 0x0

    new-instance v1, Lbhg$1;

    invoke-direct {v1, p0, p2}, Lbhg$1;-><init>(Lbhg;Lcma;)V

    invoke-direct {p0, v0, v1}, Lbhg;->b(ILcma;)V

    .line 138
    return-void
.end method

.method public final a(ILcom/alibaba/android/ding/base/objects/DingCreateInfo;Lcom/alibaba/wukong/Callback;)V
    .locals 4
    .param p1, "draftType"    # I
    .param p2, "dingCreateInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/alibaba/android/ding/base/objects/DingCreateInfo;",
            "Lcom/alibaba/wukong/Callback",
            "<",
            "Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v3

    invoke-static {v3}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p3, "callback":Lcom/alibaba/wukong/Callback;, "Lcom/alibaba/wukong/Callback<Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 200
    if-nez p2, :cond_0

    .line 201
    const/4 v1, 0x0

    invoke-static {p3, v1}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 202
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[DraftUtil] dingCreateInfo null"

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 205
    :cond_0
    new-instance v0, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;

    invoke-direct {v0}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;-><init>()V

    .line 206
    .local v0, "dingDraftMergeResult":Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;
    invoke-virtual {v0, p2}, Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;->setDingMergedCreateInfo(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    .line 208
    invoke-static {p2}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 209
    invoke-static {p3, v0}, Lcny;->a(Lcom/alibaba/wukong/Callback;Ljava/lang/Object;)V

    .line 210
    new-array v1, v2, [Ljava/lang/String;

    const-string/jumbo v2, "[DraftUtil] draft not available"

    aput-object v2, v1, v3

    invoke-static {v1}, Lbkd;->a([Ljava/lang/String;)V

    goto :goto_0

    .line 214
    :cond_1
    new-instance v1, Lbhg$4;

    invoke-direct {v1, p0, v0, p3, p2}, Lbhg$4;-><init>(Lbhg;Lcom/alibaba/android/ding/base/objects/draft/DingDraftMergeResult;Lcom/alibaba/wukong/Callback;Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V

    invoke-direct {p0, v3, v1}, Lbhg;->b(ILcma;)V

    goto :goto_0
.end method

.method public final a(Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;ILcma;)V
    .locals 5
    .param p1, "dingDraftObject"    # Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;",
            "I",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar6;->a()Z

    move-result v4

    invoke-static {v4}, Lcom/pnf/dex2jar6;->b(I)V

    .prologue
    .local p3, "listener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 142
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "[DingDraftManager] saveDingDraft object is null"

    aput-object v1, v0, v3

    invoke-static {v0}, Lbkd;->a([Ljava/lang/String;)V

    .line 143
    const-string/jumbo v0, "0"

    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->c()Landroid/app/Application;

    move-result-object v1

    sget v2, Laxp$i;->unknown_error:I

    invoke-virtual {v1, v2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lbhg;->a(Lcma;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 146
    :cond_0
    sget-object v0, Lbhg;->a:Ljava/lang/String;

    invoke-static {v0}, Lcms;->b(Ljava/lang/String;)Lcom/alibaba/doraemon/threadpool/Thread;

    move-result-object v0

    const-string/jumbo v1, "DingDraftManager"

    new-instance v2, Lbhg$2;

    invoke-direct {v2, p0, p1, v4, v3}, Lbhg$2;-><init>(Lbhg;Lcom/alibaba/android/ding/base/objects/draft/DingDraftObject;Lcma;I)V

    invoke-interface {v0, v1, v2}, Lcom/alibaba/doraemon/threadpool/Thread;->start(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final b(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)V
    .locals 1
    .param p1, "dingCreateInfo"    # Lcom/alibaba/android/ding/base/objects/DingCreateInfo;

    .prologue
    .line 177
    invoke-static {p1}, Lbhg;->a(Lcom/alibaba/android/ding/base/objects/DingCreateInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lbhg;->a(I)V

    .line 180
    :cond_0
    return-void
.end method
