.class public final Leoc$a;
.super Ljava/lang/Object;
.source "ModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static a:Leoc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Leoc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Leoc;-><init>(B)V

    sput-object v0, Leoc$a;->a:Leoc;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
