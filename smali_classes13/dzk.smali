.class public final Ldzk;
.super Ldzf;
.source "VoiceRecordImpl.java"


# static fields
.field private static final g:Ljava/util/regex/Pattern;


# instance fields
.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lduk;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/alibaba/doraemon/audio/AudioMagician;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private m:I

.field private final n:Ljava/lang/String;

.field private o:Landroid/media/AudioManager;

.field private p:Lctc;

.field private q:Lciu$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-string/jumbo v0, ".*\\.ogg"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ldzk;->g:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "baseDir"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-direct {p0, p1}, Ldzf;-><init>(Landroid/app/Activity;)V

    .line 350
    new-instance v1, Ldzk$3;

    invoke-direct {v1, p0}, Ldzk$3;-><init>(Ldzk;)V

    iput-object v1, p0, Ldzk;->q:Lciu$b;

    .line 70
    iput-object p2, p0, Ldzk;->n:Ljava/lang/String;

    .line 71
    new-instance v1, Lctc;

    invoke-direct {v1}, Lctc;-><init>()V

    iput-object v1, p0, Ldzk;->p:Lctc;

    .line 1084
    iput-boolean v2, p0, Ldzk;->l:Z

    .line 1085
    iput v2, p0, Ldzk;->m:I

    .line 1086
    const/4 v1, 0x0

    iput-object v1, p0, Ldzk;->k:Ljava/util/List;

    .line 1087
    iput-boolean v2, p0, Ldzk;->a:Z

    .line 1088
    iget-object v1, p0, Ldzk;->h:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 1089
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Ldzk;->h:Ljava/util/Map;

    .line 75
    :cond_0
    :try_start_0
    const-string/jumbo v1, "AUDIOEX"

    invoke-static {v1}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/doraemon/audio/AudioMagicianEx;

    iput-object v1, p0, Ldzk;->j:Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 76
    iget-object v1, p0, Ldzk;->j:Lcom/alibaba/doraemon/audio/AudioMagician;

    iget-object v2, p0, Ldzk;->p:Lctc;

    invoke-interface {v1, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->setSampleConverter(Lcom/alibaba/doraemon/audio/SampleConverter;)Lcom/alibaba/doraemon/audio/AudioMagician;

    .line 77
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v1

    invoke-virtual {v1}, Lcid;->b()Lchy;

    move-result-object v1

    invoke-virtual {v1}, Lchy;->genAudioManager()Landroid/media/AudioManager;

    move-result-object v1

    iput-object v1, p0, Ldzk;->o:Landroid/media/AudioManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic a(Ldzk;I)I
    .locals 0
    .param p0, "x0"    # Ldzk;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Ldzk;->m:I

    return p1
.end method

.method static synthetic a(Ldzk;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-object v0, p0, Ldzk;->o:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic a(Ldzk;J)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ldzk;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Ldzk;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Ldzk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    iput-object p1, p0, Ldzk;->k:Ljava/util/List;

    return-object p1
.end method

.method public static a(JLjava/util/List;ILcma;)Z
    .locals 8
    .param p0, "orderId"    # J
    .param p3, "totalCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List",
            "<",
            "Lduj;",
            ">;I",
            "Lcma",
            "<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 332
    .local p2, "mediaIdList":Ljava/util/List;, "Ljava/util/List<Lduj;>;"
    .local p4, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Boolean;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3, p2, p3}, Ldul;->a(Ljava/lang/Long;Ljava/util/List;I)Ldul;

    move-result-object v1

    .line 333
    .local v1, "recordModel":Ldul;
    invoke-static {v1}, Ldui;->a(Ldul;)Ldui;

    move-result-object v0

    .line 335
    .local v0, "listModel":Ldui;
    if-nez v0, :cond_0

    .line 336
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {p4, v3}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 347
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 339
    :cond_0
    :try_start_0
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "VoiceRecordImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "insertOrderRecord:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    invoke-static {v0}, Lcoo;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 339
    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_1
    invoke-static {}, Ldyf;->a()Ldye;

    move-result-object v3

    invoke-interface {v3, v0, p4}, Ldye;->a(Ldui;Lcma;)V

    goto :goto_0

    .line 341
    :catch_0
    move-exception v2

    .line 342
    .local v2, "tr":Ljava/lang/Throwable;
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "VoiceRecordImpl"

    invoke-virtual {v2}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic a(Ldzk;Z)Z
    .locals 1
    .param p0, "x0"    # Ldzk;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Ldzk;->l:Z

    return v0
.end method

.method static synthetic b(Ldzk;)Lciu$b;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-object v0, p0, Ldzk;->q:Lciu$b;

    return-object v0
.end method

.method static synthetic b(Ldzk;Ljava/util/List;)V
    .locals 6
    .param p0, "x0"    # Ldzk;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 51
    .line 4370
    :try_start_0
    iget-wide v0, p0, Ldzk;->b:J

    invoke-direct {p0, v0, v1}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v2

    .line 4373
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 4374
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lduk;

    .line 4375
    new-instance v3, Ljava/io/File;

    iget-wide v4, p0, Ldzk;->b:J

    invoke-direct {p0, v4, v5}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v4

    .line 5025
    iget-object v0, v0, Lduk;->a:Ljava/lang/String;

    .line 4375
    invoke-direct {v3, v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcop;->c(Ljava/lang/String;)Z

    .line 4373
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 4377
    :cond_0
    iget-object v0, p0, Ldzk;->i:Ljava/lang/String;

    invoke-static {v0}, Lcop;->c(Ljava/lang/String;)Z

    .line 4379
    sget-object v0, Ldzk;->g:Ljava/util/regex/Pattern;

    invoke-static {v2, v0}, Lcop;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v0

    .line 4380
    if-eqz v0, :cond_1

    array-length v0, v0

    if-nez v0, :cond_2

    .line 4382
    :cond_1
    invoke-static {v2}, Lcop;->c(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 4387
    :cond_2
    :goto_1
    return-void

    .line 4384
    :catch_0
    move-exception v0

    .line 4385
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4386
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private c()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lduj;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 413
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Ldzk;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 414
    .local v1, "mediaIdList":Ljava/util/List;, "Ljava/util/List<Lduj;>;"
    iget-object v3, p0, Ldzk;->h:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lduk;

    .line 415
    .local v2, "obj":Lduk;
    if-eqz v2, :cond_0

    .line 3029
    iget-object v4, v2, Lduk;->b:Lduj;

    .line 415
    if-eqz v4, :cond_0

    .line 4029
    iget-object v4, v2, Lduk;->b:Lduj;

    .line 416
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 421
    .end local v1    # "mediaIdList":Ljava/util/List;, "Ljava/util/List<Lduj;>;"
    .end local v2    # "obj":Lduk;
    :catch_0
    move-exception v0

    .line 422
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 423
    const-string/jumbo v3, "im"

    const-string/jumbo v4, "VoiceRecordImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    return-object v1
.end method

.method static synthetic c(Ldzk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-object v0, p0, Ldzk;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic d(Ldzk;)I
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget v0, p0, Ldzk;->m:I

    return v0
.end method

.method private d(J)Ljava/lang/String;
    .locals 5
    .param p1, "orderId"    # J

    .prologue
    .line 445
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Ldzk;->n:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 446
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 445
    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .local v0, "destPath":Ljava/lang/String;
    return-object v0
.end method

.method private d()Ljava/lang/reflect/Type;
    .locals 1

    .prologue
    .line 429
    new-instance v0, Ldzk$4;

    invoke-direct {v0, p0}, Ldzk$4;-><init>(Ldzk;)V

    invoke-virtual {v0}, Ldzk$4;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method private static e()Lcom/google/gson/Gson;
    .locals 1

    .prologue
    .line 451
    invoke-static {}, Lcid;->a()Lcid;

    move-result-object v0

    invoke-virtual {v0}, Lcid;->b()Lchy;

    move-result-object v0

    invoke-virtual {v0}, Lchy;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Ldzk;)Z
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-boolean v0, p0, Ldzk;->l:Z

    return v0
.end method

.method static synthetic f(Ldzk;)Lcom/alibaba/doraemon/audio/AudioMagician;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-object v0, p0, Ldzk;->j:Lcom/alibaba/doraemon/audio/AudioMagician;

    return-object v0
.end method

.method static synthetic g(Ldzk;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    iget-object v0, p0, Ldzk;->h:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic h(Ldzk;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    invoke-direct {p0}, Ldzk;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic i(Ldzk;)V
    .locals 4
    .param p0, "x0"    # Ldzk;

    .prologue
    .line 51
    .line 5434
    :try_start_0
    invoke-static {}, Ldzk;->e()Lcom/google/gson/Gson;

    move-result-object v0

    iget-object v1, p0, Ldzk;->h:Ljava/util/Map;

    invoke-direct {p0}, Ldzk;->d()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/String;

    move-result-object v0

    .line 5435
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5436
    new-instance v1, Ljava/io/File;

    iget-wide v2, p0, Ldzk;->b:J

    invoke-direct {p0, v2, v3}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "media_id_backup.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcop;->a(Ljava/lang/String;Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 5441
    :cond_0
    :goto_0
    return-void

    .line 5438
    :catch_0
    move-exception v0

    .line 5439
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5440
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordImpl"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)Z
    .locals 5
    .param p1, "orderId"    # J

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 95
    const-wide/16 v2, 0x1

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 179
    :goto_0
    return v0

    .line 98
    :cond_0
    invoke-super {p0, p1, p2}, Ldzf;->a(J)Z

    .line 100
    invoke-static {}, Lciu;->a()Lciu;

    move-result-object v2

    invoke-virtual {v2, v1, v1}, Lciu;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 102
    sget v1, Lctk$i;->audio_in_focues:I

    invoke-static {v1}, Lcms;->a(I)V

    .line 103
    const-string/jumbo v1, "im"

    const-string/jumbo v2, "VoiceRecordImpl"

    const-string/jumbo v3, "audio_in_focues"

    invoke-static {v1, v2, v3}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_1
    iput-wide p1, p0, Ldzk;->b:J

    .line 108
    iget-object v0, p0, Ldzk;->j:Lcom/alibaba/doraemon/audio/AudioMagician;

    new-instance v2, Ldzk$1;

    invoke-direct {v2, p0}, Ldzk$1;-><init>(Ldzk;)V

    invoke-interface {v0, v2}, Lcom/alibaba/doraemon/audio/AudioMagician;->record(Lcom/alibaba/doraemon/audio/OnRecordListener;)Ljava/lang/String;

    move v0, v1

    .line 179
    goto :goto_0
.end method

.method public final a(JLcma;)Z
    .locals 15
    .param p1, "orderId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcma",
            "<",
            "Ljava/lang/Void;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 219
    .local p3, "apiEventListener":Lcma;, "Lcma<Ljava/lang/Void;>;"
    const-wide/16 v4, 0x1

    cmp-long v4, p1, v4

    if-ltz v4, :cond_0

    if-nez p3, :cond_2

    .line 220
    :cond_0
    if-eqz p3, :cond_1

    .line 221
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 223
    :cond_1
    const/4 v4, 0x0

    .line 323
    :goto_0
    return v4

    .line 225
    :cond_2
    move-wide/from16 v0, p1

    iput-wide v0, p0, Ldzk;->b:J

    .line 227
    invoke-direct/range {p0 .. p2}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "destPath":Ljava/lang/String;
    sget-object v4, Ldzk;->g:Ljava/util/regex/Pattern;

    invoke-static {v2, v4}, Lcop;->a(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/io/File;

    move-result-object v11

    .line 229
    .local v11, "files":[Ljava/io/File;
    if-eqz v11, :cond_3

    array-length v4, v11

    if-nez v4, :cond_4

    .line 230
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v4}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    .line 231
    const/4 v4, 0x0

    goto :goto_0

    .line 2391
    :cond_4
    iget-object v4, p0, Ldzk;->h:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 2392
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-wide v6, p0, Ldzk;->b:J

    invoke-direct {p0, v6, v7}, Ldzk;->d(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string/jumbo v6, "media_id_backup.json"

    aput-object v6, v4, v5

    invoke-static {v4}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Ldzk;->i:Ljava/lang/String;

    .line 2396
    :try_start_0
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Ldzk;->i:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-nez v4, :cond_6

    .line 235
    :cond_5
    :goto_1
    array-length v8, v11

    .line 237
    .local v8, "totalCount":I
    new-instance v3, Ldzk$2;

    move-object v4, p0

    move-object/from16 v5, p3

    move-wide/from16 v6, p1

    invoke-direct/range {v3 .. v8}, Ldzk$2;-><init>(Ldzk;Lcma;JI)V

    .line 302
    .local v3, "uploadEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    const-class v4, Lcma;

    iget-object v5, p0, Ldzk;->d:Landroid/app/Activity;

    invoke-static {v3, v4, v5}, Lcmx;->a(Ljava/lang/Object;Ljava/lang/Class;Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "uploadEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    check-cast v3, Lcma;

    .line 305
    .restart local v3    # "uploadEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    iget-object v4, p0, Ldzk;->h:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 306
    new-instance v4, Ldzf$b;

    iget-object v5, p0, Ldzk;->d:Landroid/app/Activity;

    invoke-direct {v4, v5, v11, v3}, Ldzf$b;-><init>(Landroid/app/Activity;[Ljava/io/File;Lcma;)V

    invoke-virtual {v4}, Ldzf$b;->run()V

    .line 323
    :goto_2
    const/4 v4, 0x1

    goto :goto_0

    .line 2400
    .end local v3    # "uploadEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    .end local v8    # "totalCount":I
    :cond_6
    :try_start_1
    iget-object v4, p0, Ldzk;->i:Ljava/lang/String;

    const-string/jumbo v5, "UTF-8"

    invoke-static {v4, v5}, Lcop;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2401
    invoke-static {}, Ldzk;->e()Lcom/google/gson/Gson;

    move-result-object v5

    invoke-direct {p0}, Ldzk;->d()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-static {v5, v4, v6}, Lcor;->a(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 2402
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_5

    .line 2403
    iget-object v5, p0, Ldzk;->h:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2405
    :catch_0
    move-exception v4

    .line 2406
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 2407
    const-string/jumbo v5, "im"

    const-string/jumbo v6, "VoiceRecordImpl"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v6, v4}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 308
    .restart local v3    # "uploadEventListener":Lcma;, "Lcma<Ljava/util/List<Lduk;>;>;"
    .restart local v8    # "totalCount":I
    :cond_7
    const-string/jumbo v4, "im"

    const-string/jumbo v5, "VoiceRecordImpl"

    const-string/jumbo v6, "mMediaIdMap.isEmpty(), false"

    invoke-static {v4, v5, v6}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v10, "fileList":Ljava/util/List;, "Ljava/util/List<Ljava/io/File;>;"
    array-length v5, v11

    const/4 v4, 0x0

    :goto_3
    if-ge v4, v5, :cond_9

    aget-object v9, v11, v4

    .line 311
    .local v9, "file":Ljava/io/File;
    if-eqz v9, :cond_8

    iget-object v6, p0, Ldzk;->h:Ljava/util/Map;

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 312
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 315
    .end local v9    # "file":Ljava/io/File;
    :cond_9
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v4

    new-array v14, v4, [Ljava/io/File;

    .line 316
    .local v14, "newFiles":[Ljava/io/File;
    const/4 v12, 0x0

    .line 317
    .local v12, "index":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/File;

    .line 318
    .restart local v9    # "file":Ljava/io/File;
    add-int/lit8 v13, v12, 0x1

    .end local v12    # "index":I
    .local v13, "index":I
    aput-object v9, v14, v12

    move v12, v13

    .line 319
    .end local v13    # "index":I
    .restart local v12    # "index":I
    goto :goto_4

    .line 320
    .end local v9    # "file":Ljava/io/File;
    :cond_a
    new-instance v4, Ldzf$b;

    iget-object v5, p0, Ldzk;->d:Landroid/app/Activity;

    invoke-direct {v4, v5, v14, v3}, Ldzf$b;-><init>(Landroid/app/Activity;[Ljava/io/File;Lcma;)V

    invoke-virtual {v4}, Ldzf$b;->run()V

    goto/16 :goto_2
.end method

.method public final b(J)Z
    .locals 3
    .param p1, "orderId"    # J

    .prologue
    .line 184
    iget-wide v0, p0, Ldzk;->b:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Ldzk;->a:Z

    if-nez v0, :cond_1

    .line 185
    :cond_0
    const-string/jumbo v0, "im"

    const-string/jumbo v1, "VoiceRecordImpl"

    const-string/jumbo v2, "stopRecord, false"

    invoke-static {v0, v1, v2}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v0, 0x0

    .line 192
    :goto_0
    return v0

    .line 188
    :cond_1
    invoke-super {p0, p1, p2}, Ldzf;->b(J)Z

    .line 190
    iget-object v0, p0, Ldzk;->j:Lcom/alibaba/doraemon/audio/AudioMagician;

    invoke-interface {v0}, Lcom/alibaba/doraemon/audio/AudioMagician;->stopRecord()V

    .line 192
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final c(J)Z
    .locals 3
    .param p1, "ordId"    # J

    .prologue
    .line 210
    iget-wide v0, p0, Ldzk;->b:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 214
    :goto_0
    return v0

    .line 1455
    :cond_0
    iget-boolean v0, p0, Ldzk;->a:Z

    goto :goto_0
.end method
