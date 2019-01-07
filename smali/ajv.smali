.class public final Lajv;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-string/jumbo v0, "https://h-adashx.ut.taobao.com/upload"

    sput-object v0, Lajv;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "mini"

    return-object v0
.end method
