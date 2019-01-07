.class public final Lbzu;
.super Ljava/lang/Object;
.source "PermissionDeniedUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .prologue
    .line 16
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    .line 22
    :cond_0
    :goto_0
    return-void

    .line 19
    :cond_1
    invoke-static {p0, p1}, Lbzh;->a(Landroid/content/Context;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 20
    .local v1, "permission":Ljava/lang/String;
    sget v2, Lbyz$a;->dt_permission_denied_message:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "message":Ljava/lang/String;
    invoke-static {p0, v0}, Lcac;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
