.class public final Lemr$a;
.super Ljava/lang/Object;
.source "H5UrlMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lemr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Lemr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lemr;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lemr;-><init>(B)V

    sput-object v0, Lemr$a;->a:Lemr;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
