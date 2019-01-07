.class public final Lggq;
.super Ljava/lang/Object;
.source "SyncDriveUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 5

    .prologue
    .line 58
    const-string/jumbo v1, "pref_key_space_sync_drive_open"

    invoke-static {v1}, Lcpl;->c(Ljava/lang/String;)Z

    move-result v0

    .line 59
    .local v0, "isSyncDriveOpen":Z
    const-string/jumbo v1, "isSpaceSyncDriveOpened=%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lgpp;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    return v0
.end method
