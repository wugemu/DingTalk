.class public final Llic;
.super Llgv;
.source "ImmediateScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llic$a;
    }
.end annotation


# static fields
.field public static final a:Llic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Llic;

    invoke-direct {v0}, Llic;-><init>()V

    sput-object v0, Llic;->a:Llic;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Llgv;-><init>()V

    .line 34
    return-void
.end method


# virtual methods
.method public final a()Llgv$a;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Llic$a;

    invoke-direct {v0, p0}, Llic$a;-><init>(Llic;)V

    return-object v0
.end method
