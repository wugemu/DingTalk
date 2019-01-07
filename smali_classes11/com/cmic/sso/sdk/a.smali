.class public Lcom/cmic/sso/sdk/a;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static a:Lcom/cmic/sso/sdk/auth/TraceLogger;

.field public static b:I

.field public static c:I

.field public static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2ee0

    .line 54
    const/4 v0, 0x0

    sput-object v0, Lcom/cmic/sso/sdk/a;->a:Lcom/cmic/sso/sdk/auth/TraceLogger;

    .line 55
    sput v1, Lcom/cmic/sso/sdk/a;->b:I

    .line 56
    sput v1, Lcom/cmic/sso/sdk/a;->c:I

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/cmic/sso/sdk/a;->d:Z

    return-void
.end method
