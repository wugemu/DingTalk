.class final Ldia$1;
.super Ljava/lang/Object;
.source "EventGifManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcma;

.field final synthetic b:Ldia;


# direct methods
.method constructor <init>(Ldia;Lcma;)V
    .locals 0
    .param p1, "this$0"    # Ldia;

    .prologue
    .line 63
    iput-object p1, p0, Ldia$1;->b:Ldia;

    iput-object p2, p0, Ldia$1;->a:Lcma;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    invoke-static {}, Lcom/pnf/dex2jar1;->a()Z

    move-result v9

    invoke-static {v9}, Lcom/pnf/dex2jar1;->b(I)V

    .prologue
    .line 66
    const-string/jumbo v5, "pref_key_event_gif_version"

    invoke-static {v5}, Lcpk;->d(Ljava/lang/String;)J

    move-result-wide v0

    .line 67
    .local v0, "localVersion":J
    invoke-static {}, Lcmt;->a()Lcmt;

    move-result-object v5

    const-string/jumbo v6, "dt_emotion"

    const-string/jumbo v7, "dt_im_emotion_icon_version"

    invoke-virtual {v5, v6, v7}, Lcmt;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "serverVersion":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1109
    const-wide/16 v6, 0x0

    invoke-static {v4, v6, v7}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 70
    .local v2, "newVersion":J
    cmp-long v5, v2, v0

    if-lez v5, :cond_1

    .line 71
    const-string/jumbo v5, "im"

    const/4 v6, 0x0

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string/jumbo v9, "Gif event newVersion:"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string/jumbo v9, " localVersion:"

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v7}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcpv;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-static {}, Ldyc;->a()Ldyc;

    move-result-object v6

    new-instance v7, Ldia$1$1;

    invoke-direct {v7, p0, v2, v3}, Ldia$1$1;-><init>(Ldia$1;J)V

    .line 1339
    const-class v5, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    invoke-static {v5}, Liyx;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;

    .line 1340
    new-instance v8, Ldyc$7;

    invoke-direct {v8, v6, v7}, Ldyc$7;-><init>(Ldyc;Lcma;)V

    invoke-interface {v5, v8}, Lcom/alibaba/android/dingtalkim/models/idl/service/ImgResIService;->getEmotionIcon(Liyv;)V

    .line 115
    .end local v2    # "newVersion":J
    :cond_0
    :goto_0
    return-void

    .line 108
    .restart local v2    # "newVersion":J
    :cond_1
    iget-object v5, p0, Ldia$1;->b:Ldia;

    invoke-static {v5}, Ldia;->a(Ldia;)Ldtc;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 110
    iget-object v5, p0, Ldia$1;->a:Lcma;

    if-eqz v5, :cond_0

    .line 111
    iget-object v5, p0, Ldia$1;->a:Lcma;

    iget-object v6, p0, Ldia$1;->b:Ldia;

    invoke-static {v6}, Ldia;->a(Ldia;)Ldtc;

    move-result-object v6

    invoke-interface {v5, v6}, Lcma;->onDataReceived(Ljava/lang/Object;)V

    goto :goto_0
.end method
