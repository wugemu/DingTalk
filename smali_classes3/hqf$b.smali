.class public final Lhqf$b;
.super Ljava/lang/Object;
.source "OAuthAccessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lhqf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lhqf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhqf;-><init>(B)V

    sput-object v0, Lhqf$b;->a:Lhqf;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
