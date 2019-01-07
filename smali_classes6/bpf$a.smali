.class final Lbpf$a;
.super Ljava/lang/Object;
.source "CircleUsrPostObjetDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lbpf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lbpf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpf;-><init>(B)V

    sput-object v0, Lbpf$a;->a:Lbpf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lbpf;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lbpf$a;->a:Lbpf;

    return-object v0
.end method
