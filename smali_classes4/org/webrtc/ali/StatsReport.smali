.class public Lorg/webrtc/ali/StatsReport;
.super Ljava/lang/Object;
.source "StatsReport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/ali/StatsReport$Value;
    }
.end annotation


# instance fields
.field public final id:Ljava/lang/String;

.field public final timestamp:D

.field public final type:Ljava/lang/String;

.field public final values:[Lorg/webrtc/ali/StatsReport$Value;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;D[Lorg/webrtc/ali/StatsReport$Value;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "timestamp"    # D
    .param p5, "values"    # [Lorg/webrtc/ali/StatsReport$Value;

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/webrtc/ali/StatsReport;->id:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lorg/webrtc/ali/StatsReport;->type:Ljava/lang/String;

    .line 41
    iput-wide p3, p0, Lorg/webrtc/ali/StatsReport;->timestamp:D

    .line 42
    iput-object p5, p0, Lorg/webrtc/ali/StatsReport;->values:[Lorg/webrtc/ali/StatsReport$Value;

    .line 43
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/pnf/dex2jar4;->a()Z

    move-result v5

    invoke-static {v5}, Lcom/pnf/dex2jar4;->b(I)V

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/StatsReport;->id:Ljava/lang/String;

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", type: "

    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/webrtc/ali/StatsReport;->type:Ljava/lang/String;

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", timestamp: "

    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/webrtc/ali/StatsReport;->timestamp:D

    .line 52
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", values: "

    .line 53
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/webrtc/ali/StatsReport;->values:[Lorg/webrtc/ali/StatsReport$Value;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v2, p0, Lorg/webrtc/ali/StatsReport;->values:[Lorg/webrtc/ali/StatsReport$Value;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/webrtc/ali/StatsReport$Value;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
