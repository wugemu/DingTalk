.class public final Lgda;
.super Ljava/lang/Object;
.source "FileFilterManager.java"


# static fields
.field private static c:Lgda;

.field private static final f:[Ljava/lang/String;


# instance fields
.field public final a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Object;

.field private final e:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "docx"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "ppt"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "pptx"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "xls"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "pdf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "doc"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "txt"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "xml"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "htm"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "html"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "zip"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "rar"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "apk"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "gz"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "iso"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "exe"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "tmp"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "mdf"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "jpg"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "png"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "gif"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "pic"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "tif"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "psd"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "zar"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "avi"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "mp3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "mp4"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "mov"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "swf"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "jar"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "java"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "mod"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "mid"

    aput-object v2, v0, v1

    sput-object v0, Lgda;->f:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgda;->d:Ljava/lang/Object;

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgda;->a:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lgda;->b:Ljava/util/Hashtable;

    .line 29
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgda;->e:Ljava/util/HashSet;

    .line 30
    invoke-direct {p0}, Lgda;->b()V

    .line 31
    return-void
.end method

.method public static declared-synchronized a()Lgda;
    .locals 2

    .prologue
    .line 34
    const-class v1, Lgda;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lgda;->c:Lgda;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lgda;

    invoke-direct {v0}, Lgda;-><init>()V

    sput-object v0, Lgda;->c:Lgda;

    .line 38
    :cond_0
    sget-object v0, Lgda;->c:Lgda;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 34
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b()V
    .locals 3

    invoke-static {}, Lcom/pnf/dex2jar3;->a()Z

    move-result v2

    invoke-static {v2}, Lcom/pnf/dex2jar3;->b(I)V

    .prologue
    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x23

    if-ge v0, v1, :cond_0

    .line 43
    sget-object v1, Lgda;->f:[Ljava/lang/String;

    aget-object v1, v1, v0

    .line 1048
    iget-object v2, p0, Lgda;->e:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method
