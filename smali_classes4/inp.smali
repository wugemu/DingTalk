.class public final Linp;
.super Ljava/lang/Object;
.source "MsgCodeConstants.java"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string/jumbo v0, ""

    sput-object v0, Linp;->a:Ljava/lang/String;

    .line 11
    const-string/jumbo v0, ""

    sput-object v0, Linp;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
