.class public final Lija$a;
.super Ljava/lang/Object;
.source "ScanCodeState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lija;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:I

.field public static b:I

.field public static c:I

.field public static d:I

.field public static e:I

.field public static f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput v0, Lija$a;->a:I

    .line 37
    const/16 v0, 0x3e8

    sput v0, Lija$a;->b:I

    .line 38
    const/16 v0, 0x3e9

    sput v0, Lija$a;->c:I

    .line 39
    const/16 v0, 0x3ea

    sput v0, Lija$a;->d:I

    .line 40
    const/16 v0, 0x3eb

    sput v0, Lija$a;->e:I

    .line 41
    const/16 v0, 0x3ec

    sput v0, Lija$a;->f:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method
