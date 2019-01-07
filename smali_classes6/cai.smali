.class public final Lcai;
.super Ljava/lang/Object;
.source "TraceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "module"    # Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lcae;->a()Lcae;

    move-result-object v1

    .line 1025
    iget-object v0, v1, Lcae;->a:Lcag;

    .line 17
    .local v0, "permissionInterface":Lcag;
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p0, p1, p2}, Lcag;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_0
    return-void
.end method
