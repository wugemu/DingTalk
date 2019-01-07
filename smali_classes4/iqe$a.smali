.class final Liqe$a;
.super Ljava/lang/Object;
.source "H5SharedPreferenceStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static a:Liqe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Liqe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Liqe;-><init>(B)V

    sput-object v0, Liqe$a;->a:Liqe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
