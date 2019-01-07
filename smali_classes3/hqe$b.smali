.class final Lhqe$b;
.super Ljava/lang/Object;
.source "JsapiPermissionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhqe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# static fields
.field static a:Lhqe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lhqe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhqe;-><init>(B)V

    sput-object v0, Lhqe$b;->a:Lhqe;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
