.class final Lbpe$a;
.super Ljava/lang/Object;
.source "CirclePostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lbpe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lbpe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpe;-><init>(B)V

    sput-object v0, Lbpe$a;->a:Lbpe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lbpe;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lbpe$a;->a:Lbpe;

    return-object v0
.end method
