.class public final Lccn;
.super Ljava/lang/Object;
.source "ContactSearchParamsModel.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field public d:I

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lccn;->e:Z

    .line 34
    iput-boolean v0, p0, Lccn;->f:Z

    return-void
.end method
