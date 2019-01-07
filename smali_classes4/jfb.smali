.class public final Ljfb;
.super Ljava/lang/Object;
.source "ParamConstant.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string/jumbo v0, "dingTalkCode"

    sput-object v0, Ljfb;->a:Ljava/lang/String;

    .line 34
    const-string/jumbo v0, "corpId"

    sput-object v0, Ljfb;->b:Ljava/lang/String;

    .line 36
    const-string/jumbo v0, "qrToken"

    sput-object v0, Ljfb;->c:Ljava/lang/String;

    .line 38
    const-string/jumbo v0, "verifyContext"

    sput-object v0, Ljfb;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
