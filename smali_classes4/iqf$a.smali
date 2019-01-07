.class public final Liqf$a;
.super Ljava/lang/Object;
.source "TinyAppStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Liqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Liqf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    new-instance v0, Liqf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Liqf;-><init>(B)V

    sput-object v0, Liqf$a;->a:Liqf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
