.class final Lanet/channel/SessionCenter$a;
.super Ljava/lang/Object;
.source "SessionCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lanet/channel/SessionCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field static a:Lanet/channel/SessionCenter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lanet/channel/SessionCenter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lanet/channel/SessionCenter;-><init>(Lanet/channel/SessionCenter$1;)V

    sput-object v0, Lanet/channel/SessionCenter$a;->a:Lanet/channel/SessionCenter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
