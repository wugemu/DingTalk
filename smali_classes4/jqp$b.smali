.class public Ljqp$b;
.super Ljava/lang/Object;
.source "PageStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljqp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public c:Ljava/lang/String;

.field d:Z

.field e:Ljqn;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljqp$b;->d:Z

    return-void
.end method
