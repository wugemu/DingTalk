.class public final Lcaf;
.super Ljava/lang/Object;
.source "FeatureUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Z)Z
    .locals 6
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "defValue"    # Z

    .prologue
    const/4 v2, 0x1

    .line 22
    :try_start_0
    invoke-static {}, Lcae;->a()Lcae;

    move-result-object v3

    .line 1025
    iget-object v1, v3, Lcae;->a:Lcag;

    .line 23
    .local v1, "permissionInterface":Lcag;
    if-eqz v1, :cond_0

    .line 24
    const/4 v3, 0x1

    invoke-interface {v1, p0, v3}, Lcag;->a(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 31
    .end local v1    # "permissionInterface":Lcag;
    :cond_0
    :goto_0
    return v2

    .line 26
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isFeatureOpen failed, error="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2012
    const-string/jumbo v4, "permission"

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
