.class final Lbpb$a;
.super Ljava/lang/Object;
.source "CircleCommentDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static a:Lbpb;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lbpb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpb;-><init>(B)V

    sput-object v0, Lbpb$a;->a:Lbpb;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lbpb;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lbpb$a;->a:Lbpb;

    return-object v0
.end method
