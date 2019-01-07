.class public final Lhbk$a;
.super Ljava/lang/Object;
.source "SoLoaderShim.java"

# interfaces
.implements Lhbk$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhbk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 0
    .param p1, "libraryName"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-static {p1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 33
    return-void
.end method
