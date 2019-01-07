.class final Lfdv$a;
.super Ljava/lang/Object;
.source "CircleNoticeDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lfdv;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lfdv;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfdv;-><init>(B)V

    sput-object v0, Lfdv$a;->a:Lfdv;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lfdv;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lfdv$a;->a:Lfdv;

    return-object v0
.end method
