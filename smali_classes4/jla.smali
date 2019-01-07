.class public final Ljla;
.super Ljava/lang/Object;
.source "Configuration.java"


# static fields
.field public static a:I

.field public static b:I

.field public static c:Landroid/content/Context;

.field public static d:Ljld;

.field public static e:Ljle;

.field public static f:Ljlc;

.field public static g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x2

    sput v0, Ljla;->a:I

    .line 23
    const/16 v0, 0xa

    sput v0, Ljla;->b:I

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Ljla;->g:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
