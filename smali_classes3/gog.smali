.class public final Lgog;
.super Ljava/lang/Object;
.source "SpaceTeamAlbumResultObject.java"


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lgjq;)Lgog;
    .locals 6
    .param p0, "albumAppInfoModel"    # Lgjq;

    .prologue
    const-wide/16 v4, 0x0

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v0, 0x0

    .line 33
    :goto_0
    return-object v0

    .line 25
    :cond_0
    new-instance v0, Lgog;

    invoke-direct {v0}, Lgog;-><init>()V

    .line 26
    .local v0, "teamAlbumResultObject":Lgog;
    iget-object v1, p0, Lgjq;->a:Ljava/lang/Long;

    .line 1044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 26
    iput-wide v2, v0, Lgog;->a:J

    .line 27
    iget-object v1, p0, Lgjq;->b:Ljava/lang/String;

    iput-object v1, v0, Lgog;->b:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lgjq;->c:Ljava/lang/Long;

    .line 2044
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/Long;J)J

    move-result-wide v2

    .line 29
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgog;->c:Ljava/lang/String;

    .line 30
    iget-object v1, p0, Lgjq;->d:Ljava/lang/String;

    .line 2109
    invoke-static {v1, v4, v5}, Lcoc;->a(Ljava/lang/String;J)J

    move-result-wide v2

    .line 30
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lgog;->d:Ljava/lang/String;

    .line 31
    iget-object v1, p0, Lgjq;->f:Ljava/lang/String;

    iput-object v1, v0, Lgog;->e:Ljava/lang/String;

    goto :goto_0
.end method
