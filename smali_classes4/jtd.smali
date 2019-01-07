.class public final Ljtd;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field public static d:Z

.field public static e:Z

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:J

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:I

.field public static s:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    const/16 v0, 0x3c

    sput v0, Ljtd;->a:I

    .line 23
    const/16 v0, 0x20

    sput v0, Ljtd;->b:I

    .line 26
    sput-boolean v1, Ljtd;->c:Z

    .line 27
    sput-boolean v1, Ljtd;->d:Z

    .line 28
    sput-boolean v1, Ljtd;->e:Z

    .line 29
    const-string/jumbo v0, "OpenSDK.File.Tracer"

    sput-object v0, Ljtd;->f:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "OpenSDK.Client.File.Tracer"

    sput-object v0, Ljtd;->g:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Tencent"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "OpenSDK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "Logs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljtd;->h:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, ".OpenSDK.log"

    sput-object v0, Ljtd;->i:Ljava/lang/String;

    .line 33
    const-string/jumbo v0, ".app.log"

    sput-object v0, Ljtd;->j:Ljava/lang/String;

    .line 34
    const-wide/32 v0, 0x800000

    sput-wide v0, Ljtd;->k:J

    .line 35
    const/high16 v0, 0x40000

    sput v0, Ljtd;->l:I

    .line 36
    const/16 v0, 0x2000

    sput v0, Ljtd;->m:I

    .line 37
    const/16 v0, 0x2710

    sput v0, Ljtd;->n:I

    .line 39
    const-string/jumbo v0, "debug.file.blockcount"

    sput-object v0, Ljtd;->o:Ljava/lang/String;

    .line 40
    const-string/jumbo v0, "debug.file.keepperiod"

    sput-object v0, Ljtd;->p:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "debug.file.tracelevel"

    sput-object v0, Ljtd;->q:Ljava/lang/String;

    .line 43
    const/16 v0, 0x18

    sput v0, Ljtd;->r:I

    .line 44
    const-wide/32 v0, 0x240c8400

    sput-wide v0, Ljtd;->s:J

    return-void
.end method
