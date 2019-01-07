.class final Lbpd$a;
.super Ljava/lang/Object;
.source "CircleNoticeDataSourceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# static fields
.field private static final a:Lbpd;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lbpd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbpd;-><init>(B)V

    sput-object v0, Lbpd$a;->a:Lbpd;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lbpd;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lbpd$a;->a:Lbpd;

    return-object v0
.end method
