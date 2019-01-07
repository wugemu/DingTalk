.class public final Ljpe;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-static {}, Ljpd;->a()Ljpd;

    move-result-object v1

    .line 1030
    iget-object v0, v1, Ljpd;->a:Ljpf;

    .line 15
    .local v0, "videoRecordInterface":Ljpf;
    if-eqz v0, :cond_0

    .line 16
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1, p2}, Ljpf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_0
    return-void
.end method
