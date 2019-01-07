.class public final Lmt$a;
.super Ljava/lang/Object;
.source "NetworkStatCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lmt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lmt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmt;-><init>(B)V

    sput-object v0, Lmt$a;->a:Lmt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
