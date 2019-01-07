.class public final Lcjk$a;
.super Ljava/lang/Object;
.source "BaseDatabaseFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcjk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Lcjk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcjk;

    invoke-direct {v0}, Lcjk;-><init>()V

    sput-object v0, Lcjk$a;->a:Lcjk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
