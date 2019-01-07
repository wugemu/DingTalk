.class public final Lbyk;
.super Ljava/lang/Object;
.source "LiveRedDotUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "cid"    # Ljava/lang/String;

    .prologue
    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "red_dot"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "_"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Lcpt;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "cid"    # Ljava/lang/String;
    .param p1, "isRedDot"    # Z

    .prologue
    .line 17
    invoke-static {p0}, Lbyk;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lbyp;->a(Ljava/lang/String;Z)V

    .line 18
    return-void
.end method
