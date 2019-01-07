.class public final Lfle;
.super Ljava/lang/Object;
.source "CustomEntryConfigDownloader.java"


# static fields
.field private static b:Lfle;


# instance fields
.field public a:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lfle;

    invoke-direct {v0}, Lfle;-><init>()V

    sput-object v0, Lfle;->b:Lfle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    return-void
.end method

.method public static a()Lfle;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lfle;->b:Lfle;

    return-object v0
.end method

.method private static a(I)V
    .locals 5
    .param p0, "code"    # I

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "codeString":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "CustomEntryConfigDownloader"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lfxo;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method static synthetic a(Lfle;)V
    .locals 3
    .param p0, "x0"    # Lfle;

    .prologue
    .line 37
    .line 1077
    iget-wide v0, p0, Lfle;->a:J

    invoke-static {v0, v1}, Lflg;->a(J)Ljava/lang/String;

    move-result-object v2

    .line 1079
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    const/16 v0, -0x65

    invoke-static {v0}, Lfle;->a(I)V

    .line 1132
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-static {v2}, Lflg;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1085
    const/16 v0, -0x66

    invoke-static {v0}, Lfle;->a(I)V

    goto :goto_0

    .line 2075
    :cond_1
    const-string/jumbo v0, "pref_key_custom_entry_config"

    invoke-static {v0}, Lcpl;->d(Ljava/lang/String;)V

    .line 2076
    invoke-static {}, Lflg;->a()Ljava/io/File;

    move-result-object v0

    .line 2077
    if-eqz v0, :cond_2

    .line 2078
    invoke-static {v0}, Lcom/alibaba/doraemon/utils/FileUtils;->deleteDir(Ljava/io/File;)Z

    .line 1117
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1118
    const/4 v0, -0x1

    invoke-static {v0}, Lfle;->a(I)V

    goto :goto_0

    .line 1122
    :cond_3
    const/4 v0, 0x0

    .line 1124
    :try_start_0
    invoke-static {v2}, Lcom/laiwang/protocol/media/MediaIdManager;->transferToHttpUrl(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/laiwang/protocol/media/MediaIdEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    .line 1130
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1131
    const/4 v0, -0x2

    invoke-static {v0}, Lfle;->a(I)V

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v1

    .line 1126
    invoke-virtual {v1}, Lcom/laiwang/protocol/media/MediaIdEncodingException;->printStackTrace()V

    move-object v1, v0

    goto :goto_1

    .line 1135
    :cond_4
    const-string/jumbo v0, "REQUEST"

    invoke-static {v0}, Lcom/alibaba/doraemon/Doraemon;->getArtifact(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/doraemon/request/Request;

    .line 1136
    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setRequestUrl(Ljava/lang/String;)Lcom/alibaba/doraemon/request/Request;

    .line 1137
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setCacheable(Z)Lcom/alibaba/doraemon/request/Request;

    .line 1138
    new-instance v1, Lfle$2;

    invoke-direct {v1, p0, v2}, Lfle$2;-><init>(Lfle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/alibaba/doraemon/request/Request;->setResponseReceiver(Lcom/alibaba/doraemon/request/ResponseReceiver;)Lcom/alibaba/doraemon/request/Request;

    .line 1185
    invoke-interface {v0}, Lcom/alibaba/doraemon/request/Request;->start()V

    goto :goto_0
.end method

.method static synthetic a(Lfle;I)V
    .locals 0
    .param p0, "x0"    # Lfle;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-static {p1}, Lfle;->a(I)V

    return-void
.end method

.method static synthetic a(Lfle;ILjava/lang/String;)V
    .locals 5
    .param p0, "x0"    # Lfle;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 37
    .line 2103
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 2104
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "CustomEntryConfigDownloader"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    const-string/jumbo v3, ", "

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v0, 0x3

    const-string/jumbo v2, ", "

    aput-object v2, v1, v0

    const/4 v0, 0x4

    aput-object p2, v1, v0

    invoke-static {v1}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lfxo;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    return-void
.end method
