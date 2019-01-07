.class public final Leof;
.super Ljava/lang/Object;
.source "ServerLogMapModel.java"


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Leof;->a:J

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Leof;->b:I

    return-void
.end method
