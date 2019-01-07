.class final Ldvw$6;
.super Lcpq;
.source "OneBoxCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldvw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpq",
        "<",
        "Ldrv;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 587
    invoke-direct {p0}, Lcpq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1590
    new-instance v0, Ldrv;

    invoke-direct {v0}, Ldrv;-><init>()V

    .line 587
    return-object v0
.end method
