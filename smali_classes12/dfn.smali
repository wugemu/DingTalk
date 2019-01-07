.class public final Ldfn;
.super Ljava/lang/Object;
.source "ServiceGroupAnswerImpl.java"


# static fields
.field private static a:Lcpq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcpq",
            "<",
            "Ldfn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ldfn$1;

    invoke-direct {v0}, Ldfn$1;-><init>()V

    sput-object v0, Ldfn;->a:Lcpq;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ldfn;-><init>()V

    return-void
.end method

.method public static a()Ldfn;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Ldfn;->a:Lcpq;

    invoke-virtual {v0}, Lcpq;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldfn;

    return-object v0
.end method
