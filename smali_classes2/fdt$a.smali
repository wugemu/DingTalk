.class final Lfdt$a;
.super Ljava/lang/Object;
.source "CircleCommentDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfdt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static a:Lfdt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lfdt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lfdt;-><init>(B)V

    sput-object v0, Lfdt$a;->a:Lfdt;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lfdt;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lfdt$a;->a:Lfdt;

    return-object v0
.end method
