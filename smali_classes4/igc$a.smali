.class public final Ligc$a;
.super Ljava/lang/Object;
.source "WXReporterManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ligc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Ligc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ligc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ligc;-><init>(B)V

    sput-object v0, Ligc$a;->a:Ligc;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ligc;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Ligc$a;->a:Ligc;

    return-object v0
.end method
