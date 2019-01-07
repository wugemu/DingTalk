.class public final Lkmz$b;
.super Ljava/lang/Object;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkmz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field final a:Lkmv;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final b:Lknd;


# direct methods
.method constructor <init>(Lkmv;Lknd;)V
    .locals 0
    .param p1, "headers"    # Lkmv;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "body"    # Lknd;

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lkmz$b;->a:Lkmv;

    .line 267
    iput-object p2, p0, Lkmz$b;->b:Lknd;

    .line 268
    return-void
.end method
