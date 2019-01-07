.class public final Ladi;
.super Ljava/lang/Object;
.source "MailChooserBannerFetcher.java"


# static fields
.field public static a:Z


# instance fields
.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/Object;

.field private e:Lcom/alibaba/doraemon/threadpool/Thread;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private final k:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x1

    sput-boolean v0, Ladi;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object v1, p0, Ladi;->b:Ljava/lang/String;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Ladi;->c:Z

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ladi;->d:Ljava/lang/Object;

    .line 51
    iput-object v1, p0, Ladi;->e:Lcom/alibaba/doraemon/threadpool/Thread;

    .line 52
    const-string/jumbo v0, "zh_CN"

    iput-object v0, p0, Ladi;->f:Ljava/lang/String;

    .line 53
    const-string/jumbo v0, "en_US"

    iput-object v0, p0, Ladi;->g:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "zh_TW"

    iput-object v0, p0, Ladi;->h:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "ja_JP"

    iput-object v0, p0, Ladi;->i:Ljava/lang/String;

    .line 56
    const-string/jumbo v0, "https://g.alicdn.com/dingding/json/pages/loginbanner/loginbanner-"

    iput-object v0, p0, Ladi;->j:Ljava/lang/String;

    .line 61
    sget-boolean v0, Ladi;->a:Z

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "http://g-assets.daily.taobao.net/dingding/json/pages/loginbanner/loginbanner-"

    iput-object v0, p0, Ladi;->j:Ljava/lang/String;

    .line 64
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Ladi;->k:Ljava/util/HashMap;

    .line 65
    iget-object v0, p0, Ladi;->k:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_CN"

    const-string/jumbo v2, "zh_CN"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Ladi;->k:Ljava/util/HashMap;

    const-string/jumbo v1, "en_US"

    const-string/jumbo v2, "en_US"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v0, p0, Ladi;->k:Ljava/util/HashMap;

    const-string/jumbo v1, "zh_TW"

    const-string/jumbo v2, "zh_TW"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v0, p0, Ladi;->k:Ljava/util/HashMap;

    const-string/jumbo v1, "ja_JP"

    const-string/jumbo v2, "ja_JP"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    return-void
.end method
