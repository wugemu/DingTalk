.class final Lfdw$a;
.super Ljava/lang/Object;
.source "CirclePostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lfdw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lfdw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfdw;-><init>(B)V

    sput-object v0, Lfdw$a;->a:Lfdw;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lfdw;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lfdw$a;->a:Lfdw;

    return-object v0
.end method
