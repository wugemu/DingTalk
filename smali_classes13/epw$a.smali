.class public final Lepw$a;
.super Ljava/lang/Object;
.source "SearchMessageParamObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lepw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Lepw;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lepw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lepw;-><init>(B)V

    iput-object v0, p0, Lepw$a;->a:Lepw;

    return-void
.end method
