.class public final Lif$a;
.super Ljava/lang/Object;
.source "SessionPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lif;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lif;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lif;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lif;-><init>(B)V

    sput-object v0, Lif$a;->a:Lif;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
