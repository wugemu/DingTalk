.class public final Lia$b;
.super Ljava/lang/Object;
.source "AccsSessionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static a:Lia;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Lia;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lia;-><init>(B)V

    sput-object v0, Lia$b;->a:Lia;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
