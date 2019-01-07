.class public final Lhzz$a;
.super Ljava/lang/Object;
.source "RequestBeforeFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhzz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lhzz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lhzz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhzz;-><init>(B)V

    sput-object v0, Lhzz$a;->a:Lhzz;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
