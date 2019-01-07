.class final Lfcn$1;
.super Lcpq;
.source "FeedCacheCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfcn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcpq",
        "<",
        "Lfcn;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcpq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1048
    new-instance v0, Lfcn;

    invoke-direct {v0}, Lfcn;-><init>()V

    .line 45
    return-object v0
.end method
