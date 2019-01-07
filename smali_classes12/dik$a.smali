.class public final Ldik$a;
.super Ljava/lang/Object;
.source "GroupTagFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldik;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static final a:Ldik;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ldik;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ldik;-><init>(B)V

    sput-object v0, Ldik$a;->a:Ldik;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ldik;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Ldik$a;->a:Ldik;

    return-object v0
.end method
